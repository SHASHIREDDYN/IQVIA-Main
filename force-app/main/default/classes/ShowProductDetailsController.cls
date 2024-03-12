public class ShowProductDetailsController 
{
     Public integer productCode{get;set;}
     Public string productName{get;set;}
     Public string ManuafacturerName{get;set;}
     public Decimal unitPrice{get;set;}
     Public Date expiryDate{get;set;}
     public Date ManuafactureringDate{get;set;}
     Public Boolean isInstock{get;set;}
  
       
       Public ShowProductDetailsController ()
       {
         
       productCode=12345;
       productName='Lap';
       ManuafacturerName='Dell';
       unitPrice=5000;
       expiryDate =system.today();
       ManuafactureringDate= system.today().AddDays(15);
       isInstock= true;
       }
       
       
   






}