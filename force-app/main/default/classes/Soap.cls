public class Soap
{
    @InvocableMethod(Label = 'Share Account Record' Description = 'This Method will share the Account Record To the Spedcified A User .')
    public static void AfterInsert(List<Account> lstAccounts)
    {
        if(! lstAccounts.isempty())
        {
            List<AccountShare> shareAccountRecords = new List<AccountShare>();
            for(Account acc : lstAccounts)
            {
                if(acc.Share_Record_To_User__c != null)
                {
                    //Prepare the Share Details..
                    
                    AccountShare accShare = new AccountShare();
                    
                    accShare.AccountId = acc.Id;
                    accShare.UserOrGroupId = acc.Share_Record_To_User__c;
                    accShare.RowCause = 'Manual';
                    accShare.OpportunityAccessLevel = 'Read';
                    accShare.CaseAccessLevel = 'Read';
                 
                    
                    if(acc.AnnualRevenue >=50000)
                            accShare.AccountAccessLevel = 'EDIT';
                    else
                             accShare.AccountAccessLevel = 'READ';
                    
                      
                    // Add the Record to Collection for Bulkification.
                    
                    shareAccountRecords.Add(accShare);
                   
                }
            }
                if(! shareAccountRecords.isEmpty())
                {
                    insert shareAccountRecords;
                }
        }
    }
    
}