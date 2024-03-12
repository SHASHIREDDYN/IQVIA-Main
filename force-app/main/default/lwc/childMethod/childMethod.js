import { LightningElement, api } from 'lwc';

export default class ChildMethod extends LightningElement 
{
    @api showCustomeMessage()
    {
        alert('This Non Parmeterized');
    }

    @api showEmployeeMessage(empname)
    {
        alert('Emaployee Name is...:'+empname.FirstName+''+empname.LastName);
    }
}