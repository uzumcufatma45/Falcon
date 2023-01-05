@istest
public class ContactHandlerTest {
    @TestSetup
    static void makeData(){
        List<Account> accountsList = new List<Account>();
        for(Integer i=0; i<200; i++){
            Account a = new Account();
            a.Name = 'Test Account '+i;   
            a.Fax ='111';
            accountsList.add(a);        
        }
        Insert accountsList;
        List<Contact> contactsList = new List<Contact>();
        for(Account a : accountsList){
            //Creating 10 Payments for each customer record
            for(Integer j=0; j<2; j++){
                Contact c = new Contact();
                c.AccountId = a.Id;
                c.LastName = a.Name+' j';
                c.Fax='222';
                contactsList.add(c);
            }
        }
        Insert contactsList;        
    }
    @IsTest
    static void updateContactToMainContact(){
        List<Contact> contactsList = new List<Contact>();
        contactsList = [Select Id, Name, Main_Contact_Person__c, AccountId, fax from Contact];
        Test.startTest();
        contactsList[0].Main_Contact_Person__c = True;
        Update contactsList;
        Test.stopTest();
        Account acc = [Select fax from Account Where Id = :contactsList[0].AccountId Limit 1];
        System.debug(contactsList[0].Fax);
        System.debug(acc.Fax);
        System.assertEquals('222', acc.Fax);
        
    }
}