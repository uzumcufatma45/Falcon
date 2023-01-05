public  class ContactHandlerTrigger {

    public static void CheckField(List<Contact> newlist,Map<Id,Contact> oldmap){
      Set<Id> AccnewSet= new Set<Id>();
        for(Contact eachContact:newlist){
       Contact oldrecord =oldmap.get(eachContact.Id);
       if(eachContact.Main_Contact_Person__c!=oldrecord.Main_Contact_Person__c && eachContact.Main_Contact_Person__c){
    
        AccnewSet.add(eachContact.accountId);
    
       }
         updateAccFax(AccNewSet);
      
      }
    }
      public static void updateAccFax(Set<Id> AccNewSet){
        List<Account> accwithCon=[Select id, fax, (select id, fax from Contacts where Main_Contact_Person__c=True ) from Account where Id=:AccnewSet];
    
        for( Account eachAcc:accwithCon){
          if(eachAcc.Contacts.size()==1){
            eachAcc.Fax=eachAcc.Contacts[0].Fax;
          }
      
      
      
        }
        update accwithCon;
      }
    
    }     
