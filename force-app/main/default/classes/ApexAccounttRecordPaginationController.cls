public class ApexAccounttRecordPaginationController
{
   public ApexPages.StandardSetController setController
   {
        Get
        
        {
         
         if(setController == null)
         
         {
         
         setController = new ApexPages.StandardSetController(Database.getQueryLocator([Select id,annualrevenue,name,rating,industry,phone,fax from Account Order By name]));
   }
   return setController;
   }
   set;
   }
   
   public List<Account> getAccounts()
   
   {
   setController.setPageSIze(10);
   return (List<Account>) setController.GetRecords();
     
   }
   
}