({
	callAdd : function(component, event, helper) {
        helper.callMethod(component);
        var result=parseInt(Aval)+parseInt(Bval);
        component.set("v.cval",result);
		
	},
    
    
    callMul : function(component, event, helper) {
        helper.callMethod(component);
        var result=parseInt(Aval)*parseInt(Bval);
        component.set("v.cval",result);
		
	},
    
    Reset : function(component, event, helper) {
        component.set("v.aval",0);
        component.set("v.bval",0);
        component.set("v.cval",0);
		
	},
})