import { LightningElement, track } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class CreateAccountRecordComponent extends LightningElement 
{
    @track accName;
    @track accRating;
    @track accIndustry;
    @track accAnnualRevenue;
    @track accType;
    @track accOwnership;
    @track accPhone;
    @track accFax;
    @track accWebsite;
    @track accAccountNumber;
    @track accBillingCity;
    @track accBillingState;
    @track accBillingCountry;
    @track accPostalCode;
    @track accSLA;
    @track accCustomerPriority;
    @track accActive;

    handleNameChange(event)
    {
        this.accName = event.target.value;
    }

    handleRatingChange(event)
    {
        this.accRating = event.target.value;
    }

    handleIndustryChange(event)
    {
        this.accIndustry = event.target.value;
    }

    handleRevenueChange(event)
    {
        this.accAnnualRevenue = event.target.value;
    }

    handleTypeChange(event)
    {
        this.accType = event.target.value;
    }

    handleOwnershipChange(event)
    {
        this.accOwnership = event.target.value;
    }

    handlePhoneChange(event)
    {
        this.accPhone = event.target.value;
    }

    handleFaxChange(event)
    {
        this.accFax = event.target.value;
    }

    handleWebsiteChange(event)
    {
        this.accWebsite = event.target.value;
    }

    handleAccountNumberChange(event)
    {
        this.accAccountNumber = event.target.value;
    }

    handleCityChange(event)
    {
        this.accBillingCity = event.target.value;
    }

    handleStateChange(event)
    {
        this.accBillingState = event.target.value;
    }

    handleCountryChange(event)
    {
        this.accBillingCountry = event.target.value;
    }

    handleZipChange(event)
    {
        this.accPostalCode = event.target.value;
    }

    handleSLAChange(event)
    {
        this.accSLA = event.target.value;
    }

    handlePriorityChange(event)
    {
        this.accCustomerPriority = event.target.value;
    }

    handleStatusChange(event)
    {
        this.accActive = event.target.value;
    }

    handleSaveRecord()
    {
        const fields = {
                            'Name': this.accName,
                            'Rating': this.accRating,
                            'Industry': this.accIndustry,
                            'AnnualRevenue': this.accAnnualRevenue,
                            'Type': this.accType,
                            'Ownership' : this.accOwnership,
                            'Phone': this.accPhone,
                            'Fax' : this.accFax,
                            'Website': this.accWebsite,
                            'AccountNumber' : this.accAccountNumber,
                            'BillingCity': this.accBillingCity,
                            'BillingState' : this.accBillingState,
                            'BillingCountry' : this.accBillingCountry,
                            'BillingPostalCode' : this.accPostalCode,
                            'SLA__c' : this.accSLA,
                            'CustomerPriority__c' : this.accCustomerPriority,
                            'Active__c' : this.accActive
                        };

        const recordInput = {apiName : 'Account', fields};



        createRecord(recordInput).then(result => {
                                            const showSuccessMessage = new ShowToastEvent({
                                                                        title : 'success',
                                                                        message : 'Account Record Inserted Successfully.',
                                                                        variant : 'success',
                                                                        mode : 'dismissible'
                                                                    });

                                            this.dispatchEvent(showSuccessMessage);

                                            console.log('Account Record Inserted Successfully. Record Id is...: '+ result.id);
                                    })
                                    .catch(error => {
                                        console.log('Something went Wrong. Errors Occured. '+ JSON.stringify(error));
                                        
                                        const showErrorToast = new ShowToastEvent({
                                                                        title : 'error',
                                                                        message : 'Record Insertion has been Failed.',
                                                                        variant : 'error',
                                                                        mode : 'dismissible'
                                                                    });
                                            this.dispatchEvent(showErrorToast);
                                    })
    }
}