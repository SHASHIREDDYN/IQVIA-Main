({
	Add : function(component) {
        var aval=component.get("v.aval");
        var bval=component.get("v.bval");
        var result=aval+bval;
        component.set("v.result",result);
        
	}
})