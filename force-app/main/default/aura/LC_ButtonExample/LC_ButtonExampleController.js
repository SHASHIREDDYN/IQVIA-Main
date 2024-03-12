({
	show : function(component, event, helper) {
        
        component.set("v.empname","shashidhar");
        component.set("v.salary",5000)
		
	},
    
    
	cancel : function(component, event, helper) {
        
        component.set("v.empname","");
        component.set('v.salary',0);
		
	}
})