public class ApexClassBasics 
{
    @AuraEnabled
        
        public static string GetMessage()
    {
        return 'Welcome to the javaScropt language';
    }
     @AuraEnabled
        public static List<Account>  GetAllAccounts()
    {
        List<Account> lstaccounts=[select Id,name,industry,rating,phone,fax from Account order by name];
        return lstaccounts;
    }
}
/* 

Server Side Controller:

1.Define the Apex class with required varaibles and methods to accessed from Lightning component through client Side controller

Define the Class ,Methods and Collection with annotation @AuraEnabled

Ex:

Public class AccHelper()
{
  @AuraEnabled
Public string search{get;set;}
  @AuraEnabled

Public List<Account> lstaccounts {get;set;}
}
    @AuraEnabled
  
Public static string ShowMessage()
{
   return 'Welcome to the Server side Conroller';
}
  @AuraEnabled

Public static List<Account> Getallaccoints(){

List<Acconts> lstacc=[select id,name,rating,industry from account];
return lstacc;
}


2.Reference the Lightning Controller.

<aura:component contrller="ShowMessage">  <aura:component/>


3.Invoke the client side controller from Lightning component.

<aura:component contrller="ShowMessage">  <aura:component/>
<lightning:button label="Submit" onlclick="{!c.shwowcall"/>

4.Invoke the classname from JavaScript.
1.
Var action=component.get("C.getaccounts");
2.If the method contains the parameters,then we have to supply the values for the meters in the form of "Objects".

variablename.setCallback({
"Keyname":value1,
"keyname":value1,
})

5.Create a callback action, which is used check the status of the method education.

variable name.setCallback(this,function(response){
var state=response.getState();
if(state=== "SUCCESS"){
var operationres=response.getRetuenValue();
console.log("Operation sucessfully");
}else{

}

6.Invoke the method Asynchonsly,by placing the method inside the Apex Queue.

$A.enqueueaction(<variablename>);
})
*/