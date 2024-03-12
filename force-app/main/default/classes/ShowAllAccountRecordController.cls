public with sharing class ShowAllAccountRecordController
 {
           
           Public Transient List<Account>  lstAccounts{get;set;}
           
           //Preapre Default Constructor
           
         Public ShowAllAccountRecordController()
         
         {
         
               lstAccounts = new List<Account>();
               
               lstAccounts = [Select id,name,rating, industry, annualrevenue,phone, fax from  Account Order by name] ;       
         
         }
         
         
         
 
 
 
 
 
 
 
 
 
}