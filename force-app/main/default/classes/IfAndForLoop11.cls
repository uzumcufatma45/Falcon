public class IfAndForLoop11 {
    //1. a ve b iki sayı olsun. a ve b'yi karşılaştırıp büyük, küçük ve eşitlik durumunu bir mesajla yazdıracak bir if else bloğu yazın.

    public static void ifNumbers(integer a, integer b){
        if (a>b) 
        System.debug(a + ' sayisi ' + b + ' sayisindan buyuktur.');
        else if (b>a) 
        System.debug(b + ' sayisi ' + a + ' sayisindan buyuktur.');
        else 
        System.debug(a + ' sayisi ' + b + ' sayisina esittir..');
     }

     /*2. Ekmek, simit ve kek siparişlerinden birini istediğiniz adet ile beraber alan 2 parametreli bir metot yazın. size toplam ödeyeceğiniz miktarı mesajla beraber yazsın. 
        Metot: ifBread
        Ekmek : 1$ 
        Simit : 2$
        Kek : 3$  */
    public static void ifBread(string order, integer count){
        integer hesap = 0;
        if (order == 'ekmek') {
            hesap = count*1;
        } else if (order == 'simit') {
            hesap = count*2;
        } else if (order == 'kek') {
            hesap = count*3;
        } else {
            System.debug('verdiginiz sparis bulunmamaktadir..');
        }

        if (hesap != 0) {
            System.debug(count + ' tane '+ order + ' aldiniz odeyeceginiz miktar = ' + hesap + '$');
        }
    }

    //2.2 2. soruyu switch when ile yapin..
    public static void ifBreadSwitch(string order, integer count){
        integer hesap = 0;
        switch on order {
            when  'ekmek' {
                hesap = count*1;
            } 
            when  'simit' {
                hesap = count*2;
            }
            when  'kek' {
                hesap = count*3;
            }
            when else {
                System.debug('verdiginiz sparis bulunmamaktadir..');
            }
        }

        if (hesap != 0) {
            System.debug(count + ' tane '+ order + ' aldiniz odeyeceginiz miktar = ' + hesap + '$');
        }
    }
    //3. Parametre olarak integer 'n' sayısını alan, 1'den n'e kadar olan sayıların toplamını return eden metot yazin.
    public static integer forLoopSumNumbers(integer n) {
        integer sum;
        if (n>0) {
                sum = 0;
            for (Integer i = 1; i <= n; i++) {
                //sum = sum + i;
                sum += i;
                System.debug('i = ' + i);
                System.debug(sum);
            }
        } else {
            System.debug('sayiniz 0 veya 0 dan kucuk..');
        }
        
        return sum;
    }
    //3. soruyu while yapin..
    public static integer whileSumNumbers(integer n){
        integer sum = 0;
        integer count = 1;
        while (count <= n) {
            sum += count;
            System.debug('sum = '+ sum);
            count++;
            System.debug('cunt = '+ count);
        }
        return sum;
    }
}