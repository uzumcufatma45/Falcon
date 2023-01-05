trigger OpportunityTrigger on  Opportunity (before insert,after insert,before update,after update,after delete,after undelete) {
    //Bir opportunity(insert, update, delete, undelete) nin Amount update edildiğinde bağlı olduğu accountun tüm opportunities nin Amount toplamları Accountun Description kısmına yazılsın.
 
 if (trigger.isAfter) {
    //Etkilenen accountlarin id lerini toplayacagim bir set yapi olusturuyorum..

    Set<id> accIds = new Set<id>();
    //insert
    if (trigger.isInsert || trigger.isUndelete) {
        for (opportunity op : trigger.new) {
            if (op.AccountId != null && op.Amount != null) {
                accIds.add(op.AccountId);
            }
        }
    }

    //update
    if (trigger.isUpdate) {
        for (opportunity op : trigger.new) {
            if (op.AccountId != trigger.oldMap.get(op.id).AccountId || op.Amount != trigger.oldMap.get(op.id).Amount) {
                accIds.add(op.AccountId);
                accIds.add(trigger.oldMap.get(op.id).AccountId);
            }
        }
    }
        //delete
        if (trigger.isDelete) {
            for (opportunity op : trigger.old) {
                if (op.AccountId != null && op.Amount != null) {
                    accIds.add(op.AccountId);
                }
            }
        }
     

    if (!accIds.isEmpty()) {
        List<Account> accList = new List<Account>();
        accList = [select id, name, Description, (select id, name, Amount from Opportunities) from Account where id IN :accIds];
        for (Account acc : accList) {
            Decimal totalAmount = 0;
    
            for (Opportunity op : acc.opportunities) {
                totalAmount += op.Amount;
            }
            if (acc.Opportunities.size() == 0) {
                acc.Description = null;
            } else {
                acc.Description = 'Bu Accounta bagli opportunitylerin Amountlari toplami = ' + totalAmount;
            }     
        }
    
        update accList;
    }

 }
 

/*soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver.*/
/*trigger OpportunityTrigger on  Opportunity (before insert,after insert,before update,after update,after delete,after undelete) {
    if (trigger.isBefore && trigger.isUpdate) {
        for (opportunity opp : trigger.new) {
            if (opp.StageName != trigger.oldMap.get(opp.id).StageName) {
                if (opp.StageName == 'Closed Lost') {
                    opp.Description = 'Cok uzgunuz..';
                }
                if (opp.StageName == 'Closed Won') {
                    opp.Description = 'Oleeey Yasasin..';
                }
                if (opp.StageName == 'Prospecting') {
                    opp.StageName.addError('Sureci basa donduremezsiniz.. Dolayisiyla bu islemi yapamazsiniz..');
                }
            }
        }
    }*/

}