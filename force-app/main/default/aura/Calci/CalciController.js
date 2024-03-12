({
    Add : function(component, event, helper) {
        helper.CallMe(component);
         var result=parseInt(abc)+parseInt(bbc);
        component.find("Cval").set("v.value",result);
		
	},
    Sub : function(component, event, helper) {
                helper.CallMe(component);

         var result=parseInt(abc)-parseInt(bbc);
        component.find("Cval").set("v.value",result);
		
	},
    reset : function(component, event, helper) {
        component.find("ab").set("v.value","");
        component.find("bb").set("v.value","");
        component.find("Cval").set("v.value","");

		
	}
})