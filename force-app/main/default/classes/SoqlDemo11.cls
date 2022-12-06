public class SoqlDemo11 {
    //Account recorlarindan Industry 'Education' olanlarin listesinin record sayisini bulup return eden bir metot yazin..
    public static integer accountIndustry(string indstry) {
        //List<Account> accList = [select id, name from account where industry = 'Education'];
        List<Account> accList = [select id, name from account where industry =: indstry];
        System.debug(accList);
        integer recordSayisi = accList.size();
        return recordSayisi;
    }
    //Accountlardan industry Energy olanlari contactlari ile beraber listeleyin ve her bir recordu tek tek yazin..
    public static void accountWithContact() {
        List<Account> accList=[select id, name, (select id, lastName from Contact) from account where Industry='Energy'];
        system.debug(accList);
        for(account acc:accList);
        system.debug(acc.name);
        system.debug(con.contacts);
            for (contact con:acc.contacts){
            system.debug(con.lastName);
            }
           
            
           

        }   
        
    }
        
    
}