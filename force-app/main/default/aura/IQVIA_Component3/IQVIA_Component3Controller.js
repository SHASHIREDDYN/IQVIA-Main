({
	reset : function(component, event, helper) {
	component.set("v.empname","shashidhar");
    component.set("v.salary","2000");
        var Emp=component.get("v.empname");
        var Salary=component.get("v.salary");
	},
    
    invoke:function(component, event, helper){
       component.set("v.empname","");
       component.set("v.salary",0);
        
    }

})