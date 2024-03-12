import { LightningElement } from 'lwc';

export default class LwcTwoWayBinding extends LightningElement 
{
    OnHandleNew()
    {
        alert('This is new Button') ;
    }
    OnHandleEdit()
    {
        alert('This is new Edit Button');
    }
    OnHandleDelete()
    {
        alert('This is new Delete Button ');
    }
}