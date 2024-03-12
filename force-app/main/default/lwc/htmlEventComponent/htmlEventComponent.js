import { LightningElement } from 'lwc';

export default class HtmlEventComponent extends LightningElement 
{
  SearchText='Shashidhar';
  componentLabel;
  componentName;

  handleOnChange(event)
  {
    this.SearchText=event.target.value;
    this.componentLabel=event.target.label;
    this.componentName=event.target.name;
  }
}