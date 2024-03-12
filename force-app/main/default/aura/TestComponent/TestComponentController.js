({
	addition : function(component, event, helper) {
		var firstnumber=parseInt(component.get("v.fnumber"));
        var secondnumber=parseInt(component.get("v.snumber"));
        
        var addition=component.get("c.getadditionresult");
        addition.setParams({"fistnumber":firstnumber,"secndnumber":secondnumber});
        addition.setCallback(this,function(response){
              var addResult=response.getReturnValue();
              alert(addResult);
            component.set("v.result",(addResult));
        });  
        
        $A.enqueueAction(addition);
	}
})