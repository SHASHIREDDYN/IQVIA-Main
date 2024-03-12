public class ShowAllCaseRecordsPageController 
{
   public List<Case> lstCases{get;set;}
   
   public void GetAllCaseRecords()
  
  {
       lstCases = new List<Case>();
      
       lstCases =  [Select Id, CaseNumber, Status, Priority ,Type, Origin, Reason, Subject, CreatedDate from Case Order by CreatedDate desc];
  }
}