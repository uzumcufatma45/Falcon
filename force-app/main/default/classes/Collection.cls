public  class Collection {
    public static string listaAssignment(integer a){

        List<String> LstMonth = new List<String>();
        LstMonth.add('Jan');
        LstMonth.add('Feb');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');


        string output_month = ' ';
        integer LstMonthSize = LstMonth.size();
         if ( a>=0 && a<LstMonthSize){
           output_month = LstMonth.get(a);
         }else{
            output_month ='Not a valid month ';
         }
          return output_month;
    }
}