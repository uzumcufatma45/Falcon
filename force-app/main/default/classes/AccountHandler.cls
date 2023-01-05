
public class AccountHandler {
    /*Whenever a New Account Record is created, an associated Contact Record must be created
    automatically. Contact record fields as below:
    - Account name as Contact last name
    - Account phone as contact phone*/

    public static void createAccCon(List<Account> AccConTriggerNew){
        List<Contact> listCon = new List<Contact>();
        
     for (account eachAcc : AccConTriggerNew) {
            Contact cNew = new Contact();
        cNew.LastName = eachAcc.Name;
        cNew.Phone = eachAcc.Phone;
        cNew.AccountId = eachAcc.Id;
        listCon.add(cNew);
        }
        insert listCon;
    }
    /*Write a trigger on the Account when the Account is updated, check all opportunities related to
the account. Update all Opportunity Stage to close lost if stage name not already set to closed
won.*/

public static void updateOppStage(List<Account> AccOppTriggerNew){
        
    List<Opportunity> newListOpp = [select id, name, stageName FROM Opportunity WHERE AccountId in : AccOppTriggerNew and stageName != 'Closed Won'];
    for (Opportunity eachOpp : newListOpp) {
       eachOpp.StageName = 'Closed Lost';
    }
        update newListOpp;
}
/*3. Whenever an Account phone number is modified, update all the contacts of the Account as
follows:
- Contacts otherPhone as Old phone no of account
- Contacts mobilePhone as New phone no of Account.*/
   /*Whenever an Account phone number is modified, update all the contacts of the Account as
follows:
- Contacts otherPhone as Old phone no of account
- Contacts mobilePhone as New phone no of Account.*/

public static void updatePhone(Map<id, Account> newMap1, Map<Id,Account> oldMap1){
    Set<Id> accId = new Set<Id>();
    for (id eachId : oldMap1.keySet()) {
       String oldPhone = oldMap1.get(eachId).Phone; 
       String newPhone = newMap1.get(eachId).Phone; 
        if (oldPhone != newPhone) {
            accId.add(eachId);
        }
    }
    List<Contact> listCon = [select id, OtherPhone, MobilePhone, AccountId FROM Contact WHERE AccountId in : accId];
    for (contact eachCon : listCon) {
        eachCon.OtherPhone = oldMap1.get(eachCon.AccountId).Phone;
        eachCon.MobilePhone = newMap1.get(eachCon.AccountId).Phone;
    }
    update listCon;
}
public static void AnnualAccount() {

}
/*2.1  When the Annual revenue value of an Account is reduced from the previous value then show the following message:'Annual Revenue for an account cannot be reduced'. And do not allow the user to save the record
public static void AnnualAccount(map<id, account> annNewMap, map<id, account> annOldMap, list<account> annList) {
    for(account eachacc : annList ){
        account oldacc= annOldMap.get(eachacc.id);

        if(eachacc.AnnualRevenue != oldacc.AnnualRevenue ){
           if(eachacc.annualRevenue < oldacc.AnnualRevenue || eachacc.AnnualRevenue == null ){
                eachacc.annualRevenue.addError('Annual Revenue for an account cannot be reduced');

           }
          


        }
    }*/
}
   