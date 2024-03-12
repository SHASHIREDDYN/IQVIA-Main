public class Searchcontactpageconroller
{
  
    public string serchtest{get;set;}
    public list<Account> lstcon{get;set ;}
    public void Searchcontactpageconroller()
    {
   lstcon=new list<Account>();
   if(serchtest != null && serchtest != '')
   {
             serchtest +='%';
             
             lstcon=[select id,name,rating,industry from Account where name like:serchtest];            
}
  else
  { 
               ApexPages.AddMessage(new ApexPages.Message(ApexPages.severity.Error, 'Please enter the serch to serch Matching Records'));
  }
}
}