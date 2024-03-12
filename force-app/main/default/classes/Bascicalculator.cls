public class Bascicalculator
 {
 
       
   Public integer firstNumber{get;set;}
   public integer secondNumber{get;set;}
   public integer result{get;set;}
   
   
   public void Addition()
   
   {
       result= firstNumber + secondNumber;
       
   }
   
    public void subtraction()
  {
    if(secondNumber> 0)
   {
        result= firstNumber - secondNumber;
        
    ApexPages.AddMessage(new ApexPages.Message(ApexPages.severity.CONFIRM,'Division Operation has been performed Successfully.'));
   }
   else
   {
   ApexPages.AddMessage(new ApexPages.Message(ApexPages.severity.Warning,'Division Operation Cannot be Performed.Please enter the valid Input.'));
 }
}
}