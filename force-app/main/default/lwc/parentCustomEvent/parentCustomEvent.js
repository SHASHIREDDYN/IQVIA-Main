import { LightningElement, track } from 'lwc';

export default class ParentCustomEvent extends LightningElement 
{
    @track empfirstName;
    @track emplastName;
    @track emppFullName;


    handlChangeEvent(event)
    {
          this.empfirstName=event.detail.Fname;
          this.emplastName=event.detail.Lname;

          this.emppFullName=this.empfirstName+this.emplastName;
    }
}