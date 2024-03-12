({
	firecomponentevent : function(component, event, helper) 
    {
	  var componentEvent=component.getEvent("cmpEvent");
        
      var msgstring=component.get("v.messageString");
        
        msgstring=$A.util.isEmpty(msgstring)?"No Message Passed":msgstring;
        
        componentEvent.setParams({
            "message":msgstring,
            "label":"cistom Label"
        });
        componentEvent.fire();
        }
})