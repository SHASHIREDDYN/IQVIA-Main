import { LightningElement, api } from 'lwc';

export default class CustomEventParent extends LightningElement 
{
    @api employeefirstname;
    @api employeelastname;

     @api employeeFullName;

    handleEmployeetEvent(event)
    {
         
    this.employeefirstname=event.detail.Fname;
    this.employeelastname=event.detail.Lname;

    this.employeeFullName=this.employeefirstname+this.employeelastname;

    }
}