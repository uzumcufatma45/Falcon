public class Calculator3{
    public static integer add(List<integer>ListInt){
        //first take temp var
        integer returnInt=0;
        for(integer eachInt:listInt){
            system.debug('eachInt=> '+eachInt);
            returnInt+=eachInt;
            system.debug('returnInt=> '+returnInt);
        }
        return returnInt;

    }
    
}
