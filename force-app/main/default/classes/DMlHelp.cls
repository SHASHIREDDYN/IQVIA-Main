public class DMlHelp 
{
    public static void UpdateBankingCust()
    {
        List<Account> lstaccounts=[Select id,name,rating,industry,fax from Account Where industry='Banking' ];
        if(!lstaccounts.isEmpty())
        {
            for(Account acc:lstaccounts)
            {
                acc.Rating='Hot';
            }
            Update lstaccounts;
        }
    }
    
    public static void DeActiveUser(string uName)
    {
        if(uName!=null && uName!='')
        {
            User UserToDeactivate=[Select id,firstname,lastname,username,isactive from User where userName=:uName Limit 1];
        
                if(UserToDeactivate.id !=null)
            {
              UserToDeactivate.IsActive =false;
                update UserToDeactivate;
            }
                }
    }
}