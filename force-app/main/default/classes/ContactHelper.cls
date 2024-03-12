public class ContactHelper 
{
    
  Public  static void createbulkcontacts()
        
    {
       List<Contact> lstcontacts = new  List<Contact>();
        for(integer counter=100;counter<=110; counter++)
            
        {
            Contact con = new Contact();
            
            con.FirstName = 'Bulk';
            con.LastName = 'Test Contact-'+counter;
            con.Title = 'Sales Rep';
            con.Phone = '995967855';
            con.Fax= '45788';
            con.Email = 'shashi'+counter+'@gmail.com';
            con.PAN_NUMBER__c ='ASBPN3356R';
            
            lstContacts.Add(con);
            
            if(! lstContacts.isEmpty())
                insert lstContacts;
            
        }
            
     //Insert the Contact Records..
     
      if(! lstContacts.isEmpty())
            insert lstContacts;
        for (Contact con:lstContacts)
        {
            system.debug('Contact Record '+ con);
        }
        
            
    }          
    
 }