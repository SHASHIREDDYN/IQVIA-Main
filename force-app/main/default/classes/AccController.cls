public class AccController 
{
    @AuraEnabled
    public static List<Account> getAccounts()
    {
       List<Account> accList=new List<Account>();  
        accList=[select id,name from account Limit 5];
        return accList;
    }
}