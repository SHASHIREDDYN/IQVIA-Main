({
	Add : function(component) {
        var aval=component.get("v.aval");
        var bval=component.get("v.bval");
        component.set("v.result",parseInt(aval)+parseInt(bval));
        
	}
})