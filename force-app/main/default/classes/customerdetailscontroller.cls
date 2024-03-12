public class customerdetailscontroller 
{
  public integer Customerid{get;set;}
  public string  Name{get;set;}
  public string  Phone{get;set;}
  public string  Emailid{get;set;}
  public decimal annularevenue{get;set;}
  public boolean isnew{get;set;}

//Constructor
public customerdetailscontroller ()
{
    customerid=1423;
    name='shashi';
    phone='9986784244';
    emailid='shashi@gmail.com';
    annularevenue=4566;
    isnew=true;
  
}
}