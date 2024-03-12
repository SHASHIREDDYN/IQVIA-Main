public class pickcontroller
{ 
   public List<Selectoption> lstoptions{get;set;}
   public pickcontroller()
   {
     lstoptions = new list<Selectoption>();
     List<Account>lstaccounts= [select id,name from Account Order by name];
     for(Account acc:lstaccounts)
     {
        selectoption option = new selectoption(acc.id,acc.name);
        lstoptions.add(option );
     }
   }
   
}