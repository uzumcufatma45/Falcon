Map<String,string> mapCntCurrency=new map<string,string>();
mapCntCurrency.put('USA ','Dolar');
mapCntCurrency.put(' Japan', 'Yen ');
mapCntCurrency.put('Spain' ,'Euro');
mapCntCurrency.put('india' ,'Rupees ');
mapCntCurrency.put('India' ,'Rupee ');//overwrite
mapCntCurrency.put('Turkiye' ,'Lira ');
system.debug(mapCntCurrency);
string indiaCurrency =mapCntCurrency.get('India');
string country= 'Turkiye';
string turkeyCurrency=mapCntCurrency.get(country);
system.debug('india currency is '+indiaCurrency);
system.debug(country+ 'currency is '+turkeyCurrency);

//get all countries
set<string> countrySet= mapCntCurrency.keySet();
system.debug('country set ==>'+ countrySet);

list<string> currencyList=mapCntCurrency.values();
system.debug('currency list is-> '+currencyList);
set<string> countries=mapCntCurrency.keySet();
for(string eachCountry:countries){
    system.debug('*each country is '+eachCountry);
    //can we get currrency or value from country?how
    //fetc currency using.get(key) method
    string eachCurrency=mapCntCurrency.get(eachCountry);
    system.debug('*each currency is  '+eachCurrency);
    system.debug('country is '+eachCountry+' itsncureency is '+eachCurrency);


}

