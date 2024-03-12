public class BasicCalculatorController 
{

   Public integer firstNumber{get;set;}
   public integer secondNumber{get;set;}
   public integer result{get;set;}
   
   
   public void Addition()
   
   {
       result= firstNumber+secondNumber;
       
   }
   
   public void subtraction()
   
   {
        result= firstNumber-secondNumber;
   }
   public void Multiplication()
   
   {
        result= firstNumber*secondNumber;
   }
}