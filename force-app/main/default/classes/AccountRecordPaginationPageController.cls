public class AccountRecordPaginationPageController 
{
    public ApexPages.StandardSetController setController
    {
       Get
       {
          if(setController == null)
          {
             setController = new ApexPages.StandardSetController(Database.GetQueryLocator([Select id, name, rating, industry, fax ,phone from Account Order by name]));
          }
          
          return setController;
       }
         Set;
    }
    
    public  List<Account> getAccounts()
    
    {
        setController.SetPageSize(5);
        return(List<Account>) setController.GetRecords(); 
    }
}