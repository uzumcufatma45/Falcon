@isTest
public with sharing class OperationsHelperTest {
    @isTest
    private static void TestLargest() {
        OperationsHelper b=new  OperationsHelper();
        decimal num1=b.largestOutOfTwoNumbers(3.3,9.7);
        system.assertEquals(9.7,num1);

        decimal num2=b.largestOutOfTwoNumbers(6,5);
        system.assertEquals(6,num2);
        
    }
    @isTest
    private static void smallestTest(){
        OperationsHelper a=new OperationsHelper();
        decimal num3=a.smallestOutOfThreeNumbers(4,8,10);
        system.assertEquals(4,num3);


    }
    @isTest
    private static void sumTest(){
        OperationsHelper c=new OperationsHelper();
        integer num4=c.sumOfPositiveInteger(-2);
        system.assertEquals(null, num4);

        integer num5=c.sumOfPositiveInteger(3);
        system.assertEquals(6, num5);
    }

    
}
