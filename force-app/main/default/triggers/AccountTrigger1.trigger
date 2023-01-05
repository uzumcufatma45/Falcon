/*1. Whenever a New Account Record is created, an associated Contact Record must be created
automatically. Contact record fields as below:
- Account name as Contact last name
- Account phone as contact phone
2. Write a trigger on the Account when the Account is updated, check all opportunities related to
the account. Update all Opportunity Stage to close lost if stage name not already set to closed
won.
3. Whenever an Account phone number is modified, update all the contacts of the Account as
follows:
- Contacts otherPhone as Old phone no of account
- Contacts mobilePhone as New phone no of Account.*/

trigger AccountTrigger1 on Account (before insert, before update,after insert, after update) {
    if (trigger.isAfter && trigger.isInsert) {
        AccountHandler.createAccCon(trigger.new);
    }
    /*Write a trigger on the Account when the Account is updated, check all opportunities related to
the account. Update all Opportunity Stage to close lost if stage name not already set to closed
won.*/
    if (trigger.isUpdate && trigger.isAfter) {
        AccountHandler.updateOppStage(trigger.new);
        AccountHandler.updatePhone(trigger.newMap ,trigger.oldMap);
    }
   /* 3. Whenever an Account phone number is modified, update all the contacts of the Account as
follows:
- Contacts otherPhone as Old phone no of account
- Contacts mobilePhone as New phone no of Account.*/

/*1. When the Annual revenue value of an Account is reduced from the previous value then show the
following message:
‘Annual Revenue for an account cannot be reduced’. And do not allow the user to save the record.*/
if(trigger.isBefore && trigger.isUpdate){
    AccountHandler.AnnualAccount(trigger.newMap, trigger.oldMap, trigger.new);


}
    




}