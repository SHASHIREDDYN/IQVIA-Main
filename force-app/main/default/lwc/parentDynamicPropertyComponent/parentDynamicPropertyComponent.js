import { LightningElement ,track} from 'lwc';

export default class ParentDynamicPropertyComponent extends LightningElement 
{
    @track parentProperty = 'Parent Property Value';

    handleOnClick()
    {
        this.parentProperty = 'New Value has been Assigned upon Button Click.';
    }

    handleOnchange(event)
    {
        this.parentProperty = event.target.value;
    }
}