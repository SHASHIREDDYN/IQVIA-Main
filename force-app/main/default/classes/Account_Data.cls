public class Account_Data 
{
    @AuraEnabled
    public static List<Account> getAccounts(string accIndustry)
    {
        List<Account> accounts=[select Name,phone from Account where industry =:accIndustry];
        return accounts;
    }

}