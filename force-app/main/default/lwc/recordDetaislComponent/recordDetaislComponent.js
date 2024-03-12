import { LightningElement, api } from 'lwc';

export default class RecordDetaislComponent extends LightningElement 
{
   @api recordId;
   @api objectApiName;
}