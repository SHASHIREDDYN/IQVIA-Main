public class GlobalSearchRecordPageController 
{
   Public string searchText{get;set;}
   
   Public List<Account> lstAccounts{get;set;}
   
   public List<Contact> lstContacts{get;set;}
   
   public List<Lead> lstLeads{get;set;}  
      
   public void SearchRecords()
   {
             lstAccounts= new List<Account>(); 
             lstContacts = new List<Contact>();
             lstLeads = new List<Lead>();
              
    
      if(searchText !=null && searchText != '')
      {
         string searchQuery = 'FIND '+ '\''+ searchText + '*'+'\''+' IN ALL FIELDS RETURNIG '+
      
                               'Account(ID,name,rating,industry,annualrevenue) ,'+
                               'Contact(ID,firstname,lastname,email,title,phone),'+
                               'Lead(ID,firstname,lastname,email,title,phone)';
                               
       List<List<SObject>> lstRecords = Search.Query(searchQuery);
     
             lstAccounts= (List<Account>) lstRecords.Get(0); 
             
             lstContacts = (List<Contact>) lstRecords.Get(1);
             
             lstLeads= (List<Lead>) lstRecords.Get(2);
      
      }
      
      
      
   }
   
   
}