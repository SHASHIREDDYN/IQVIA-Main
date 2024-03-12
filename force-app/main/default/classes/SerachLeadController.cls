public class SerachLeadController
{
  Public string searchText{get;set;}
  
  public PageReference  GotoSearchResultsPage()
  {
  PageReference pgRef = new PageReference ('/apex/LeadSearchResultsPage?sText='+searchText);
  return pgref.SetRedirect(true);
}
}