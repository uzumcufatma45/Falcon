/*Assignment – 25 November 2022
Create an Apex class Collections_Assignment 
Create a method called listMethods
Try to use all the methods of List using below list-
{'Monday','Tuesday','Wednesday','Thursday','Friday','Saturda
y','Sunday'}
Use the below link for all list methods
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/
apexref/apex_methods_system_list.htm
Create a method called setMethods
Try to use all the methods of Set by creating set using 
the list created above.
Use the below link for all list methods
https://developer.salesforce.com/docs/atlas.en-
us.apexref.meta/apexref/apex_methods_system_set.htm*/
List<string> days=new List<string> ();
days.add('Monday');
days.add('Tuesday');
days.add('Wednesday');
days.add('Thursday');
days.add('Friday');
days.add('Saturday');
days.add('Sunday');
system.debug(days);
string indexweekdays=days[4];
system.debug(indexweekdays);
system.debug(days.size());
system.debug(days.get(4));
system.debug('the days contains sali '+days.contains('sali'));
boolean isContains=(!days.contains('sali'));
system.debug(isContains);
days.sort();
system.debug('after sorting days '+days);
boolean isListEmpty=days.isEmpty();
system.debug('is list empty '+isListEmpty);
//system.debug('is set contains Friday? 'days.contains(Friday));

Set<String>dayNew= new Set<String>();
dayNew.addAll(days);
System.debug(dayNew);
Set<String>upperCaseDay= SetDemo.capitalizeSet(dayNew);

System.debug('How mandy days we have in this set '+dayNew.size());
System.debug('Is set contains Monday? '+dayNew.contains('Tuesday'));
dayNew.clear();
System.debug(dayNew);
System.debug(dayNew.size());









