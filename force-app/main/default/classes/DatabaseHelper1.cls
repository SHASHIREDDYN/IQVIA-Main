public class DatabaseHelper1
{
      public static void GetAllAccountRecords()
          
      {
          List<Account> lstaccounts = [select id,name,rating,industry,annualrevenue, active__c,phone,fax from account];
          
          system.debug('Number of Records are ..'+lstaccounts.size());
          
          if( !lstaccounts.isempty())
          {
              for(Account acc :lstaccounts)
              
              {
                  system.debug('Account name is'+acc.name);
                  system.debug('Account rating is..'+acc.rating);
                  system.debug('Account industry is...'+acc.Industry);
                  system.debug('Account status is..'+acc.Active__c);
                  system.debug('Account phione is..'+acc.Phone);
                  system.debug('Account fax number is..'+acc.Fax);
                  
              }
          }
          
      }
}