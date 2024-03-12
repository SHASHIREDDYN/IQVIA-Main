import { LightningElement, api } from 'lwc';

export default class ConditionalRendering extends LightningElement 
{
    @api areDetailsvisible= false;


    handlechange(event)
    {
           this.areDetailsvisible=event.target.checked;
    }
}