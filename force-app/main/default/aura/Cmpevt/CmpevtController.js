({
	invoke : function(component, event, helper) {
		var evt=component.getEvent("one");
        evt.setParams({"empname":"shashi"});
        evt.fire();
	},
    show : function(component, event, helper){
        var name=event.getParam("empname");
        component.set("v.name",name);
    }
})