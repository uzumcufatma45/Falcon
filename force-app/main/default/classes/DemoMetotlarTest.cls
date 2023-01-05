@isTest
public class DemoMetotlarTest {
    @isTest
    private static void printWelcomeTest() {
        DemoMetotlar.printWelcome();
        
    }
    @isTest
    private static void welcomePersonTest() {
        DemoMetotlar.welcomePerson('fatma');
    }
    @isTest
    private static void toplamaTest() {
       integer sum= DemoMetotlar.toplama(11,22);
       system.assertEquals(33, sum);
        
    }
    @isTest
    private static void createAccountTest() {
        DemoMetotlar.createAccount();
        List<Account> accList=[select id, name from account where name ='Salesforce'];
        system.assertEquals(1, accList.size());
        system.assertEquals('Salesforce', accList[0].Name);

        
    }
    @isTest
    private static void createAndUpdateAccountTest () {
        DemoMetotlar.createAndUpdateAccount();
        List<Account> accList=[select id, name from account];
        system.assertEquals(1, accList.size());
        system.assertEquals('SoftInnovas Inc', accList[0].Name);

        
    }
    @isTest
    private static void createContactTest() {
        Account acc=new Account();
        acc.Name='Salesforce';
        insert acc;
        DemoMetotlar.createContact();
        List<Contact> conList=[Select id, lastName from Contact where lastName='Doe'];
        system.assertEquals(1, conList.size());
        
    }

}
