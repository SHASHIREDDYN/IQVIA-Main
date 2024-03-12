public class SourcePageController
{
        Public PageReference GotoTargetPage()
        {
           PageReference  pgRef = new PageReference ('/apex/TargetPage');
           return pgRef.SetRedirect(true);         
        }
}