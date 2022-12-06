public class  MathPractice {
    public decimal practiceOne(decimal a,decimal b) {
        decimal dK=(a+b)*2;
        return dK;
    }
    public decimal practiceTwo(decimal kilo,decimal boy){
        decimal VuKiI=kilo/boy*boy;
        return VuKiI;
    }
    public decimal practiceThree(string x,decimal a,decimal b){
        decimal sonuc=0;
        
        switch on x {
        when 'cevre'{   sonuc=(a=b)*2;
            decimal round=sonuc.round(RoundingMode.HALF_DOWN);
            system.debug('dikdortgenin cevresi: '+round);
        }
        when 'alan'{
            sonuc=(a*b);
            decimal round1=sonuc.round(RoundingMode.HALF_DOWN);
            system.debug('dikdortgen alani: '+round1);
        }
        when else{
            system.debug('istediginiz bu islem yapilmamaktadir');
        }
    }
    return sonuc;


    }
    public string practiceFour(decimal height,decimal weigth){
     decimal bmi=weigth.divide(height*height,1);
     string VIndex=string.valueOf(bmi)  ;

     if (bmi>=0 && bmi<=18.4){
        system.debug('vucut kitle indexiniz: ' +VIndex+ 'Relax olabilirsin');

     }else if(bmi>=18.5 && bmi<=29.9){
        system.debug('vucut kitle indexiniz: ' +VIndex+ 'Relax olmaya alisma');
     }else if(bmi>=25 && bmi<=29.9){
        system.debug('vucut kitle indexiniz: ' +VIndex+ 'attention');
        
     }else {
        system.debug('gecersiz deger girdiniz.thenk you!');
     }
     return(VIndex);

    }
    public integer practiceFive(integer a,integer b){
        integer total=0;
        if(a<b){
            for(integer i=a; i<b+1; i++){
                total+=i;
            }
        }else if(b<a){
            for(integer i=b; i<a+1; i++){
                total+=i;
            }
        }else{
            total=a+b;
        }
        return total;
    }
    
}
