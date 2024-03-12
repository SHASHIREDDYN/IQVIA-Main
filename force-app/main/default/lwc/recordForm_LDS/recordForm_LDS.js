import { LightningElement, api } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent'

export default class RecordForm_LDS extends LightningElement 
{
    @api recordId;
    @api objectApiName;

    handleOnSuccess()
    {
        const successToast=new ShowToastEvent({
               title:'success',
               message:'Record has been updated successfully',
               variant:'success',
               mode:'pester'

        });
        this.dispatchEvent(successToast);
    }
}