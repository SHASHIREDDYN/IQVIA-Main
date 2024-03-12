public class SearchAccountController 
{
   public string SearchText{get;set;}
   
   public List<Account> lstAccounts{get;set;}
   
   public void SerchAccountRecords()
   
     {
          lstAccounts= new List<Account>();      
          
        if(SearchText  != null && SearchText  != '')
        
        {
        
             SearchText  += '%';
             
             lstAccounts =   [Select id, name, rating,industry, phone,fax from Account Where name Like: SearchText];     
        
        }
        
          else
          {
               ApexPages.AddMessage(new ApexPages.Message(ApexPages.severity.INFO, 'Please enter the serch to serch Matching Records'));
          
          }
     
     
     
     }










}