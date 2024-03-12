({
	Show: function(component, event, helper) {
        component.set("v.Name","Shashi");
        component.set("v.Salary",5000);
		
        var name=component.get("v.Name");
        var salary=component.get("v.Salry");
	},
    
    Invoke: function(component, event, helper) {
      component.set("v.Name",'');
        component.set("v.Salary",0);
    }
})