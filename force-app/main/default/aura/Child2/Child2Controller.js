({
	invoke : function(component, event, helper) {
		var Salary=component.get("v.Salary");
        console.log('Salary:'+Salary)
        var Exp=component.get("v.Exp");
        var bonus=0;
        console.log('Exp:'+Exp);
       
        if(Exp>5)
        {
            bonus=Salary*0.30;
        }else
        {
            bonus=Salary*0.20;
        }
        component.set("v.bonus",bonus);
        console.log('bonus:'+bonus);
        
        
	}
})