public  class AccountSchedule  implements schedulable{
    public void execute (SchedulableContext sc) {
        database.executeBatch(new AccountsBatch());

    }
}
