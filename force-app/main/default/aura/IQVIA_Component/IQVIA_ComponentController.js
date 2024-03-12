({
	invoke : function(component, event, helper) 
    {
		var salary = component.get("v.salary");
        console.log('salary:'+salary);
        var exp =component.get("v.Exp");
        var bonus=0;
        console.log('Exp:'+exp);
        if (exp>5){
        bonus=salary*0.30;
        }else{
        bonus=salary*0.20;
        }
        component.set("v.bonus",bonus);
        console.log('Bonus:'+bonus);
             
	}
    
})