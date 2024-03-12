({
	callAdd : function(component, event, helper) {
        var Aval=component.find("aval").get("v.value");
        var Bval=component.find("bval").get("v.value");
        var result=Aval+Bval;
        component.find("cval").set("v.value",result);
		
	},
    
    
    callMul : function(component, event, helper) {
        var Aval=component.find("aval").get("v.value");
        var Bval=component.find("bval").get("v.value");
        var result=Aval*Bval;
        component.find("cval").set("v.value",result);
		
	},
    
    Reset : function(component, event, helper) {
        componenet.find("aval").set("v.value",0);
        component.find("bval").set("v.value",0);
        component.find("cval").set("v.value",0);
		
	},
})