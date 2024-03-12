({
	show: function(component, event, helper) {
        var exp=component.get("v.exp");
        var salary=0;
        console.log('Exp:'+exp);
        if(exp <5){
            salary=5000;
        }else{
            salary=3000;
        }
        console.log('Salary:'+salary);
        component.set("v.salary",salary);
        
	}
})