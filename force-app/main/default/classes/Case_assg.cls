public class  Case_assg{
    public static void caseInsert() {
        case c= new case();
        c.Subject='Testcase';
        c.Origin='Phone';
        insert c;
    }
    public static void caseUpdate(){
        case c=[select id, Subject from case where Subject='Testcase'];
        c.Subject='Testing case 1';
        upsert c;
    }
    public static void caseDelete(){
        case c=[select id, Subject from case where Subject like '%case 1%'];
        delete c;
    }
}
