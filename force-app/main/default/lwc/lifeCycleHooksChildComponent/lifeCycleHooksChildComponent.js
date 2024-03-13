import { LightningElement } from 'lwc';

export default class LifeCycleHooksChildComponent extends LightningElement 
{
    constructor()
    {
        super();
        console.log('Child - Constructor Method Executed.');
    }

    connectedCallback()
    {
        console.log('Child - Connected Callback Method Executed.');
    }

    renderedCallback()
    {
        console.log('Child - RenderedCallBack Method Executed.');
    }

    disconnectedCallback()
    {
        console.log('Child - DisconnectedCallBack Method Executed.');
    }

    errorCallback(error, stack)
    {
        console.log('Child - ErrorCallback Method Executed.'+ error);
        console.log(stack);
    }
}