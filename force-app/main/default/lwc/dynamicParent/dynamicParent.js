import { LightningElement, track } from 'lwc';

export default class DynamicParent extends LightningElement 
{
   @track parentProperty='Parent Propery Value';

   handleChange(event)
   {
     this.parentProperty=event.target.value;    
   }

   handleOnClick()
    {
        this.parentProperty='New Value has been assigned upon button Click';
    }
}