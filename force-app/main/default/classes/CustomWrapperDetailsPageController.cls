public class CustomWrapperDetailsPageController 
{
   
  public List<CustomWrapper> lstWrapper{get;set;}
  
  public void selectallrecords()
  {
  for(CustomWrapper  cWrapper : lstWrapper)
  {
  cWrapper.isselected =true;
  }
  }
  
  public void unselectallrecords()
  {
  for(CustomWrapper  cWrapper : lstWrapper)
  {
  cWrapper.isselected =False;
  }
  }
  public void GetRecords()
  
  {
    lstWrapper = new List<CustomWrapper>();
     
     //Get the Records from the Object and Store them into the collaction
      
     List<Account> lstAccounts = [Select id, name, phone,fax from Account  Order by name Limit 20];
     
    // Pass the Account record to Custom  Wrapper .
    
     for(Account acc: lstAccounts)
    {
       CustomWrapper cWrapper = new CustomWrapper(acc,false);
       lstWrapper.Add(cWrapper);
    }
    
     List<Contact> lstcontact = [Select id, firstname,lastname, phone, fax from Contact Order by lastname Limit 20]; 
  
            // Pass the Contact record to Custom  Wrapper .
            
            for(Contact con:lstContact)
            {
               CustomWrapper cWrapper = new CustomWrapper(con,false);
               lstWrapper.Add(cWrapper);
            }

  
     List<Lead> lstLead = [Select id, firstname,lastname, phone, fax from Lead Order by lastname Limit 20]; 
     
                 // Pass the Lead record to Custom  Wrapper .
          
             for(Lead ld: lstLead)
             {
               CustomWrapper cWrapper = new CustomWrapper(ld,false); 
               lstWrapper.Add(cWrapper);
            }

             
  
  
  }
  
}