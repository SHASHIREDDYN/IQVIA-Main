public class ShowAccountNamePageController 
{
  public List<SelectOption> lstOptions{get;set;}
  
  public ShowAccountNamePageController ()
  
  {
        lstOptions= new List<SelectOption>();
        
        List<Account> lstAccounts= [Select id, name from Account Order By name]; 
        
        SelectOption option1 = new SelectOption('','----NONE----');
             lstOptions.Add(option1);
        
         
         for(Account acc:lstAccounts)  
  
         {
             SelectOption option = new SelectOption(acc.id,acc.name);
             lstOptions.Add(option);
         }
  }
  
}