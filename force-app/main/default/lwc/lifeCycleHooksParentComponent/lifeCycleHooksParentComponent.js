import { LightningElement } from 'lwc';

export default class LifeCycleHooksParentComponent extends LightningElement 
{
    constructor()
    {
        super();
        console.log('Parent - Constructor Method Executed.');
    }

    connectedCallback()
    {
        console.log('Parent - Connected Callback Method Executed.');
    }

    renderedCallback()
    {
        console.log('Parent - RenderedCallBack Method Executed.');
    }

    disconnectedCallback()
    {
        console.log('Parent - DisconnectedCallBack Method Executed.');
    }

    errorCallback(error, stack)
    {
        console.log('Parent - ErrorCallback Method Executed.'+ error);
        console.log(stack);
    }
}