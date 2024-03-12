public class DatabaseLimit 
{
    Public Static void GetaccoutByLimit()
    {
        List<Account> lstaccounts = [Select id,name,industry,rating from Account Limit 10];
    for(Account acc : lstaccounts)
    {
        system.debug('Account Record is '+ acc);
    }
    }
}