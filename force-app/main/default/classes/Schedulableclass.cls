public class Schedulableclass implements Schedulable 
{
public void execute (Schedulablecontext sc)
{
    List<Account> acc =[Select id,name from account where CreatedDate=LAST_N_DAYS:10];
    delete acc;
}
}