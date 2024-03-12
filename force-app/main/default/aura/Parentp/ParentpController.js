({
	handlecomponentevent : function(component, event, helper) 
    {
	  var messge=event.getParam("message");
      var label=event.getParam("label");
        
        component.set("v.MessageFromNotifier",message);
        component.set("v.label",label);
        
        
        var count=parseint(component.get("v.eventcount")+1);
        component.set("v.eventcount",count);
	}
})