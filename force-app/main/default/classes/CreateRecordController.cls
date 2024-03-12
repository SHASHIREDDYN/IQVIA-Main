public class CreateRecordController 
{
Public string recordResult{get;set;}

    Public void CreateAccountRecord()
    
    {
    
       // Write the Code to Insert an Account Record..
       
       Account acc= new Account();
       
       acc.Name = 'Vf Page Test';
       acc.Rating = 'Hot';
       acc.Industry = 'Banking';
       acc.Fax = '99897';
       acc.Phone = '9989737244';
       
    
    insert acc;
    
    if(acc.id != null)
    
    recordResult = 'Account Record Insert Successfully..:'+acc.id;
    
    else
    
    recordResult = 'Something went wrong while inserting record. ';
    
    
    }

}