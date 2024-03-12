({
	show : function(component, event, helper) {
        component.set("v.Name","shashidahr");
        component.set("v.Salary",10000);
		
	},
    invoke : function(component, event, helper) {
        component.set("v.Name","");
        component.set("v.Salary","");
		
	}
})