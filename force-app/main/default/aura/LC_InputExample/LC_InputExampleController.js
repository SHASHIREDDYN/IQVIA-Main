({
    
    invoke : function (component, event,helper) {
      var firstName=component.find("lname").get("v.value");
       var lastName=component.find("fname").get("v.value");
        var name=firstName+'-'+lastName;
        
        console.log('Lastname'+lastName);
        console.log('Firstname'+firstName);
        component.find("name").set("v.value",name);
    }

});