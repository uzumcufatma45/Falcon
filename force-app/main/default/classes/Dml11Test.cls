@istest
public class SoqlDemo11Test {

    @TestSetup
    static void makeData(){
        List<Account> accList = new List<Account>();
        account acc = new account();
        acc.Name = 'Test 1';
        acc.Industry = 'Education';
        accList.add(acc);
        
        account acc2 = new account();
        acc2.Name = 'Test 2';
        acc2.Industry = 'Energy';
        accList.add(acc2);
        
        insert accList;
    }

    @IsTest
    static void accountIndustryTest(){
        

        Test.startTest();
        integer rs = SoqlDemo11.accountIndustry('Education');
        Test.stopTest();
        System.assertEquals(1, rs);
        
    }
}
