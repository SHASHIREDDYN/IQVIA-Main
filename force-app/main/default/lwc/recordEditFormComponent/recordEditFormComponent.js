import Title from '@salesforce/schema/Contact.Title';
import { LightningElement,api } from 'lwc';

export default class RecordEditFormComponent extends LightningElement 
{
    @api salesforceobjectApiName='Account';

    successToastMessage()
    {
           const sucessmsg=new ShowToastEvent;
           ({
              title:'success',
              message:'Account has been created succefully',
              variant:'success',
              mode:'sticky'

           });
           this.dispatchEvent(sucessmsg);
    }

    errorToastMessage()
    {
        const errorsmsg=new ShowToastEvent;
           ({
              title:'error',
              message:'While crating account error has occured',
              variant:'error',
              mode:'sticky'

           });
           this.dispatchEvent(errorsmsg);
    }
}