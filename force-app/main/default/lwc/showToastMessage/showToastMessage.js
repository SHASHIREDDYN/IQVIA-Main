import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class ShowToastMessage extends LightningElement 

{
    showSuccessMessage()
    {
        const successToast = new ShowToastEvent({
                                title : 'success',
                                message : 'Operation Completed Successfully.',
                                variant : 'success',
                                mode : 'dismissible'
                            });
        this.dispatchEvent(successToast);
    }

    showErrorMessage()
    {
        const errorToast = new ShowToastEvent({
                                title : 'error',
                                message : 'Operation Failed. Something went wrong.',
                                variant : 'error',
                                mode : 'dismissible'
                            });
        this.dispatchEvent(errorToast);
    }

    showWarningMessage()
    {
        const warningToast = new ShowToastEvent({
                    title : 'warning',
                    message : 'Please Enter the Required Field Values.',
                    variant : 'warning',
                    mode : 'pester'
                });
        this.dispatchEvent(warningToast);
    }

    showInformationMessage()
    {
        const InformationToast = new ShowToastEvent({
                    title : 'information',
                    message : 'Please Review the Document.',
                    variant : 'info',
                    mode : 'sticky'
                });
        this.dispatchEvent(InformationToast);
    }
}

/* {
    showSuccessMessage()
    {
      const successToast=new ShowToastEvent({
        title:'success',
        message:'Operation Completed Successfully',
        variant:'success',
        mode:'dismissible'
      });
      this.dispatchEvent(successToast);
    }
      showErrorMessage()
      {
      const errorToast = new ShowToastEvent({
        title:'error',
        message:'Operation failed,someting went wrong',
        variant:'error',
        mode:'pester'
      });
      this.dispatchEvent(errorToast);
    }
      warningMessage(){
      const warningToast = new ShowToastEvent({
        title:'warning',
        message:'Please enter the required Filed value',
        variant:'error',
        mode:'dismissible'
      });
      this.dispatchEvent(warningToast);
    }
      infoMessage()
      {
      const infoToast = new ShowToastEvent({
        title:'warning',
        message:'Please review the document',
        variant:'info',
        mode:'sticky'
      });
      this.dispatchEvent(infoToast);
    }
} */