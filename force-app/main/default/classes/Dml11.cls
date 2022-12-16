public class Dml11 {
    //9 tane Account create edelim. Account 1 2 3.. isimlendirelim.
    //Her Accounta bagli 9 tane Contact create edelim. 
    //Contact 11 12 13 14 15
    //Contact 21 22 23 24 25 
    //olusturdugumuz tum recordlari silelim..
    //Bu metodu dinamik hale getirin..

    public static void createAccountsAndContacts(integer n){
        if(n<=0){
            System.debug('hatali bir sayi girdiniz.. tekrar deneyin...');
        } else {
             // 1. 9 tane account create ediyoruz..
            List<Account> accList = new List<Account>();
            for(integer i=1 ; i<=n ; i++){
                account acc = new account();
                acc.name = 'Account Two ' + i;
                accList.add(acc);
            }
            if(!accList.isEmpty()){
                insert accList;
            }

            //2. Account listesine for each ile girip her account icin 9 tane contact create edecegiz..
            List<Contact> conList = new List<Contact>();
            integer a = 1;
            for(account acc : accList){
                for(integer i=1 ; i<=n ; i++){
                    contact con = new contact();
                    con.LastName = 'Contact ' + a + '.' + i;
                    con.AccountId = acc.id;
                    conList.add(con);
                }
                a++;
            }
            if(!conList.isEmpty()){
                insert conList;
            }

        }
        
    }
}