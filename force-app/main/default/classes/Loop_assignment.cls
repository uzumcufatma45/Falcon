public with sharing class Loop_assignment {
    public void forLoops(integer n){
        for (Integer i = 0; i<=n; i++) {
            system.debug(i);
            
        }
    } 
    public void printEven(integer x, integer y){
        for (Integer i =1 ; i <=100 ; i++) {
            integer remainder=math.mod(i,2);
            
            if(remainder==0) {
                system.debug(i+' i is even number');
                
            }
            
        }

    }   
}
