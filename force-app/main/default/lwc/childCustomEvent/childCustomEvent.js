import { LightningElement, api } from 'lwc';

export default class ChildCustomEvent extends LightningElement  
{

    @api firstName='shashidhar';
    @api lastName='Reddy';

    handleChildComponent()
    {
        const employeeDetaisMessage= new CustomEvent('employeeeventname',{
                                                     detail:{
                                                     Fname:this.firstName,
                                                     Lname:this.lastName
                                                     }
                                                          });
        this.dispatchEvent(employeeDetaisMessage);                                
    }
}