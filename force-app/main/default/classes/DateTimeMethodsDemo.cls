public  class DateTimeMethodsDemo {
    public void calculateAgeInMonth() {
        //todays  date
        date dttoday=date.today();
        date fBdate=date.newInstance(1984, 06, 15);
        integer ageInMonths =fBdate.monthsBetween(DtToday);
        system.debug('Fatma age in months is ' + ageInMonths);

    }
    public void calculateAgeIndays(){
        date dttoday=date.today();
        date fBdate=date.newInstance(1984, 06, 15);
        integer ageInDays=fBdate.daysBetween(dttoday);
        system.debug('fatma age in days is..' +ageInDays);


    }
    public void printSubscriptionEndDate(){
        Date subscriptionStartDate = date.today();

        Date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription ends on ' + subscriptionEndDate);

        integer endDateYear = subscriptionEndDate.year();
        system.debug('subscription end date YEAR is ' + endDateYear);

        integer endDateMonth = subscriptionEndDate.month();
        system.debug('subscription end date month is ' + endDateMonth);
    }
    public void printOfferEndDateTime(){
        Datetime dtNow=datetime.now();

        Datetime dtOfferEnd=dtNow.addHours(51);
        system.debug('offer end date&time' +dtOfferEnd);

        date dateOfferEnd=dtOfferEnd.date();
        system.debug('date of offer end ' +dtOfferEnd );

    }
    public void birhDateToMilliSeconds(){
        datetime birthDate = datetime.newInstance(1984, 6, 15, 7, 30, 5);
        long longBirthDate = birthDate.getTime();
        system.debug('long birth date => ' + longBirthDate);
    }

}
