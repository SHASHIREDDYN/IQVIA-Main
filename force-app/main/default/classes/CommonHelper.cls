public class CommonHelper 
{
    
 Public static void DoDMLoperations()
    {
         User userToDeativate = [Select id,firstname,lastname,userName,isActive from User Where userName=:'manageruser123@tcs.com' Limit 1];
            
        if(userToDeativate.id !=null)
        {
            userToDeativate.IsActive = false;
            
            Update userToDeativate;
            
            // Invoke the method to Create Lead Record
            
               CreateLeadRecord();
        }
        }
 
    @future()
    
    Public static void CreateLeadRecord()
    {
        
            Lead ld = new Lead();
            
            ld.FirstName = 'Sam Kumar';
            ld.LastName = 'Lead Record';
            ld.Company = 'Salesforce';
            ld.Status = 'Open- Not Contacted';
            ld.Rating = 'Hot';
            ld.Fax = '56780';
            ld.PAN_NUMBER__c = '4565';
        
        insert ld;
        }
    
    public static void Addition(integer x,integer y)
    {
        system.debug('Sum of the Value is '+(x+y));
        
    }
    public static void CheckEquals(string s1,string s2)
    {
        if(s1==s2)
        system.debug('Both are the Equlas');
        else
            system.debug('Both are Differernt');
    }
    
    }