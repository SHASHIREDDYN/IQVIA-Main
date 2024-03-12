@isTest
private class AccountShareHandlerTest 
{
    static testmethod void TestAccountShareprocess()
    {
        // Write the Code to insert Bulk Accounts''
        
        List<Account> lstAccounts = new List<Account>();
        
        for(Integer counter = 1; counter <= 5; counter++)
        {
            Account acc = new Account ();
            
            acc.Name = 'test AccountReddy -'+ counter++;
            
            if(counter >=3)
                acc.AnnualRevenue = 50000;
            
            else 
                acc.AnnualRevenue = 40000;
                
            acc.Rating = 'Hot';
            acc.AnnualRevenue = 50000;
            acc.Phone ='9989737244';
            acc.Fax = '998656';
            acc.Website = 'SFDC';
            acc.Share_Record_To_User__c = CreateUserRecord();
                
                lstAccounts.Add(acc);
            
            
        }
             if(! lstAccounts.isEmpty())
             {
                 Insert lstAccounts;
             }
        
        AccountsShareHandler.AfterInsert(lstAccounts);
    }
    
    public  static Id CreateUserRecord()
    {
        // Write Th eCode insert a New User Record..
        
        User testUser = new User();
        
        testUser.ProfileId = [Select id from  Profile where  name = 'System Administrator'].id;
    
        testUser.FirstName = 'Sample';
        testUser.LastName = 'TestUser22';
        testUser.Email = 'Testuser@gmail.com';
        testUser.Username = 'Testuser@gmail.com';
        testUser.CompanyName = 'KNR';
        testUser.Title = 'TestingUser';
        testUser.Alias = 'TestingUser';
        
        
        insert testUser;
        
        return testUser.Id;
        
        
    }
    
    

}