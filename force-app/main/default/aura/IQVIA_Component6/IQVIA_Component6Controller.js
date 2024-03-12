({
	calAdd : function(component, event, helper) {
		helper.callme(component);
        var result =parseInt(aval)+parseInt(bval);
        
        component.find ("cval").set("v.value",result);
  	},
    
    calSub : function(component, event, helper) {
    	helper.callme(component);
        var result =parseInt(aval)*parseInt(bval);
        
        component.find ("cval").set("v.value",result);
    },
    reset : function(component, event, helper) {
        component.find("aval").set("v.value",0);
        component.find("bval").set("v.value",0);        
        component.find ("cval").set("v.value",0);
        
    }

            
})