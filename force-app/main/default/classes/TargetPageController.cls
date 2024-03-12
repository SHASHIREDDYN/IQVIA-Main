public class TargetPageController 
{
   public PageReference GotoPreviousPage()
   
   {
            PageReference pgRef =new PageReference ('/apex/SourcePage');
            return pgRef.SetRedirect(true);
   }
}