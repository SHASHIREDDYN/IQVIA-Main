public class Calcicontroler 
{
   public integer firstNumber{get;set;}
   public integer secondnumber{get;set;}
   public integer result{get;set;}

public void  Addition()
{
   result=firstnumber+secondnumber;
 }
 public void subtraction()
 {
  result=firstnumber-secondnumber;
  }
  public void Multiplication()
  {
  result=firstnumber*secondnumber;
  }
  
  public void Division()
  {
  if(Secondnumber>0)
  {
   result=firstnumber/secondnumber;
   Apexpages.AddMessage(New Apexpages.Message(Apexpages.severity.CONFIRM,'Division has been performed'));
   }
   else
   {
   Apexpages.AddMessage(New Apexpages.Message(Apexpages.severity.WARNING,'Division has been FAILED'));
  }
  }
  public void modulus()
  {
  result=Math.Mod(firstnumber,secondnumber);
  }
  }