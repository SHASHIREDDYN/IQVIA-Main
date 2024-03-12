({
	invoke : function(component, event, helper) {
		var name=event.getParam("empname");
        component.getEvent("v.myname",name);
        console.log(name);
	}
})