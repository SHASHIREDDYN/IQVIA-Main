({
	invoke : function(component, event) {
		var firstName=component.find("Fname").get("v.value");
        var secondName=component.find("Lname").get("v.value");
        var name=firstName+'-'+secondName;
        component.find("Name").set("v.value",name);
        
	}
})