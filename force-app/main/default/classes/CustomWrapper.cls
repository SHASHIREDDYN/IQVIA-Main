public class CustomWrapper 
{
    public Id recordId{get;set;}
    public string firstName{get;set;}
    public string lastName{get;set;}

    public string phoneNumber{get;set;}
    public string faxNumber{get;set;}
    public Boolean isselected{get;set;}

      // Prepare a COnstructor to Convert the Account Record into out custom Type.
      
    public CustomWrapper(Account acc,boolean selection)
        
    {
        recordID= acc.id;
        lastName= acc.Name;
        phoneNumber = acc.Phone;
        faxNumber = acc.Fax;
        isselected=Selection;
    }
    
    
    //Preapare a consstructor to Convert the Lead Record into out Custom Type.
    public CustomWrapper(Lead ld, boolean selection)
    
    {
        recordId = ld.id;
        firstName = ld.FirstName;
        lastName= ld.LastName;
        phoneNumber= ld.Phone;
        faxNumber = ld.Fax;
        isselected=Selection;
              
    }
    
        //Preapare a consstructor to Convert the Contact Record into out Custom Type.
     public CustomWrapper(Contact con,boolean selection)
    {
        recordID = con.Id;
        firstName= con.FirstName;
        lastName = con.LastName;
        phoneNumber = con.Phone;
        faxNumber = con.Fax;
        isselected=Selection;
       
        
        
    }
 }