({
	ShowAddition : function(component, event, helper) {
		 var Fnumber=component.find("fnum").get("v.value");
         var Snumber=component.find("snum").get("v.value");
        
        var Addtion=parseInt(Fnumber)+parseInt(Snumber);
        component.find("Add").set("v.value",Addtion);
	}
})