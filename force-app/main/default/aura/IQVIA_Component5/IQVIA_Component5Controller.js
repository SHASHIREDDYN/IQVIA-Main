({
	invoke : function(component, event, helper) {
		
        var firstname=component.find("fname").get("v.value");
        var lastname=component.find("lname").get("v.value");
        var name=firstname+lastname;
        component.find("Name").set("v.value",name);
        
	}
})