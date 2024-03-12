import { LightningElement, api } from 'lwc';

export default class CustomEventChild extends LightningElement 
{
    @api firstname='shashidhar';
    @api lastname='Reddy';

    handleChildComponentEvent()
    {
        const employeeDetailMessage=new CustomEvent('employeenameevent',{
                                            detail:{

                                                Fname:this.firstname,
                                                Lname:this.lastname
                                            }
        });

        this.dispatchEvent(employeeDetailMessage);
    }
}