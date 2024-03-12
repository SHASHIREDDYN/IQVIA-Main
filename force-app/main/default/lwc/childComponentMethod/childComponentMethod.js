import { LightningElement, api } from 'lwc';

export default class ChildComponentMethod extends LightningElement 
{
    // Non-Parameterized Method...
    @api showCustomMessage()
    {
        alert('This is Child Component Non - Parameterized Method.');
    }

    // Parameterized Method...
    @api showEmployeeDetails(empDetailsParam)
    {
        alert('Employee Details Are.....: '+ empDetailsParam.FirstName + ' ' + empDetailsParam.LastName);
    }
}