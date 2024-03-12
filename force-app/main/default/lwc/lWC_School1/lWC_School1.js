import { LightningElement } from 'lwc';

export default class LWC_School1 extends LightningElement 
{
   myvalue="Salesforce Bolt";
   handlechange (event){
    this.myvalue=event.target.value;

   }
}