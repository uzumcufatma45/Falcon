@isTest
public class CaseHandlerTest {
    @isTest
    private static void casereatedTest(){
        List<case> ListCase=new List<case>();
        for(integer i=0; i<200; i++){
            case newCase=new case();
            newCase.Status='Working';
            newCase.Origin='Email';
            newCase.Subject='Test class trigger case';
            newCase.Priority='High';
            newCase.Description='bu negative test icindir';
            ListCase.add(newCase);


        }
        insert ListCase;
        List<case> new1=[select id from case];
        system.assertEquals(200, new1.size());
    }
    private static void casereatedTest2(){
        List<case> ListCase=new List<case>();
        for(integer i=0; i<200; i++){
            case newCase=new case();
            newCase.Status='Working';
            newCase.Origin='Email';
            newCase.Subject='Test class trigger case';
            newCase.Priority='High';
            newCase.Description='Password';
            ListCase.add(newCase);


        }
        insert ListCase;
        List<case> new1=[select id from case];
        system.assertEquals(400, new1.size());

    }
    
}
