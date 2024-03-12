({
	invoke : function(component, event, helper) {
        var acc=event.getParam("accname");
        component.set("v.val1",acc);
		
	}
})