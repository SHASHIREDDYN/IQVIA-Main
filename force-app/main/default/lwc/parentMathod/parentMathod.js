import { LightningElement } from 'lwc';

export default class ParentMathod extends LightningElement 
{
    callCustomMessage()
    {
       var invokecustom=this.template.querySelector('c-child-method');
       invokecustom.showCustomeMessage();
    }

    callEmployeeMessage()
    {
       var invokeEmployee=this.template.querySelector('c-child-method');
       var params=
       {
             'FirstName':'Shashi',
             'LastName':'Reddy'
       };

       invokeEmployee.showEmployeeMessage(params);
    }
}