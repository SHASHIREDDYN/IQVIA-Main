import { LightningElement } from 'lwc';

export default class ParentComponentMethod extends LightningElement 
{
    callCustomMessage()
    {
        var invokeCustomMessage = this.template.querySelector('c-child-component-methods');
        invokeCustomMessage.showCustomMessage();
    }

    callEmployeeDetails()
    {
        var invokeEmployeeDetails = this.template.querySelector('c-child-component-methods');
            var empInfo = {
                                'FirstName':'Ramesh',
                                'LastName':'Kumar'
                            };
            invokeEmployeeDetails.showEmployeeDetails(empInfo);
    }
}