import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement 
{
   /*  //Data Binding  Method
   greeting='shashidhar'; 

    handleOnChange(event)
    {
        this.greeting=event.target.value;
    } */

 /*    2------------------>
         //Getter method
    firstname=''; 
    lastname='';  
    handleOnChange(event)
    {
        /* const field=event.target.name;

        if(field === 'Fname')
        {
            this.firstname=event.target.value;
        }else if(field === 'Lname')
        {
            this.lastname=event.target.value;
        }
 
   // We can use the below method also
        const elementname=event.target.name;
        const elementvalue=event.target.value;

        if(elementname ==='Fname')
        {
            this.firstname=elementvalue;
        }else
        {
            this.lastname=elementvalue;
        }
    }
    
   get Uppercase()
   {
         return `${this.firstname} ${this.lastname}`.toUpperCase();
   } */
     
  /*  3------------------------>
   // Fetch Data Using QuerySelector 

       greeting='shashidhar';

       handleonclick(event)
       {
           this.greeting=this.template.querySelector("lightning-input").value;
       } */
   
       // Fetch Data Using QuerySelectorall Method

       firstName='';
       lastName='';

       handlClick(event)
       {
         var input=this.template.querySelectorAll('lightning-input');

         input.forEach(function(element)
         {
             if(element.name=='Fname')
             this.firstName=element.value;
             
             else if (element.name== 'Lname')
             {
             this.lastName=element.value;
             }
         }, this);
       }
}