public  class DML2_Assgn {
    public static void DML2_Assgn() {
        account acc=new account();
        acc.Name='Fatma';
        insert acc;

        account acc2=new account();
        acc2.Name='Elif';
        insert acc2;

        account acc3=new account();
        acc3.Name='Assignment';
        insert acc3;

    }
    public static void updating_dml() {
        account acc=new account();
        acc.name='Account Inserted';
        insert acc;
        acc.name='Account Updated';
        update acc;
        
    }
    
    
}
