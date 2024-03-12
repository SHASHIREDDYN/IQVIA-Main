public class LeadSearchResultsController
{
   public List<Lead> lstleads{get;set;}
   
   //Deafault Constructor...
   public LeadSearchResultsController()
   {
      lstleads = new List<Lead>();
      
      string searchText =ApexPages.CurrentPage().GetParameters().Get('sText');
      
      if(searchText != null && searchText != '')
      
      {
         
         lstleads = [Select id, firstname,lastname,rating,phone,fax from Lead Where lastname like: searchText+'%'];
      }
   }
   public PageReference GotoserachPage()
   {
   PageReference pgRef = new PageReference ('/apex/SerachLeadRecord');
   return pgRef.SetRedirect(true);
   }
}