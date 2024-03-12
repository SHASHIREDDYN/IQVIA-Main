({
	invoke : function(component, event, helper) {
		var sal=component.get("v.Salary");
        console.log('salary');
        var exp=component.get("v.Exp");
        console.log('Exp');
        var bonus=0;
        if(exp>5){
            bonus=sal*0.30;
        }else{
            bonus=sal*0.10;
        }
        component.set("v.bonus",bonus);
        console.log('bonus:'+bonus);
	}
})