@isTest
public class Case_assgTest {
    @isTest
    private static void caseInsertTest() {
        List<Case> csList=new List<Case>();
        case c=new case();
        c.Subject='Testcase';
        c.Origin='Phone';
        insert c;
        csList.add(c);
        Case_assg.caseInsert();
        system.assertEquals('Testcase',c.Subject);
    }
    @isTest
    private static void caseUpdateTest(){
        List<Case> csList=new List<Case>();
        case c=new case();
        c.Subject='Testcase';
        c.Origin='Phone';
        insert c;
        csList.add(c);
        case cUp=[select id, Subject from case where Subject='Testcase'];
        cUp.Subject='Testing case 1';
        upsert c;
        Test.startTest();
        Case_assg.caseUpdate();
        Test.stopTest();
        system.assertEquals('Testing case 1', cUp.Subject);
       /* List<Case> ListCase=[select id, Subject from case where Subject='Testcase'];
        listCase.Subject='Testing case 1';
        system.assertEquals('Testing case 1',ListCase.Subject);*/
    }
    @isTest
    private static void caseDeleteTest(){
        List<Case> csList=new List<Case>();
        case c=new case();
        c.Subject='Testcase';
        c.Origin='Phone';
        insert c;
        csList.add(c);
        case cUp=[select id, Subject from case where Subject='Testcase'];
        cUp.Subject='Testing case 1';
        upsert c;
        List<case> cDelete=[select id, Subject from Case where Subject like'%case%'];
        Case_assgTest.caseDeleteTest();
        
        delete c;

    }
    
}









