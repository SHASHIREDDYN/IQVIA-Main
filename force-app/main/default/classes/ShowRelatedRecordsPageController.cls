public class ShowRelatedRecordsPageController 
{
  public List<SelectOption> lstOptions {get;set;}
  
  Public String SelectedAccountID{get;set;}
  
  public List<Contact> lstCon{get;set;}
  
  public List<Opportunity> lstOpp{get;set;}
  
  public List<Case> lstCases{get;set;}
  
  public ShowRelatedRecordsPageController ()
  
    { 
       lstOptions  = new List<SelectOption>();
       
       lstOptions .Add(new SelectOption('','----NONE---'));
    
      for(Account acc: [Select id,name from Account Order by name])
    {
      lstOptions .Add(new SelectOption(acc.id,acc.name));
    
    }
}
   public void GetRelateRecords()
   
   {
      lstCon=new List<Contact>();
      lstOpp=new List<Opportunity>();
      lstcases=new List<Case>();
   
      if(SelectedAccountID != null && SelectedAccountID != '')
      {
        List<Account> lstAccounts = [Select id, name,
                   (Select id,firstname,lastname,title,email,fax,phone from Contacts),
                   (Select id, name,stagename,amount,closeDate from Opportunities),
                   (Select id, casenumber,subject,type,reason,origin,priority,status from Cases)
                          from Account 
                                      where id=:SelectedAccountID];
                                      
         for(Account acc:lstAccounts)
         {
         
         lstCon=acc.Contacts;
         lstOpp=acc.Opportunities;
         lstcases=acc.Cases;
         }
      }
   }
}