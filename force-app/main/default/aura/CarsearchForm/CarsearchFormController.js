({
	doinit : function(component, event, helper){
    //will be fetcinh car type from backend using apex controller
    
        var createCaRecord= $A.get("e.force:createRecord");
        if(createCaRecord){
            component.set("v.ShowNew",true);
        } else{
            component.set("v.ShowNew",false);
            
        }
        
        helper.getCarType(component, helper);
    
	},
    
  
    onsearchclick:function(component, event, helper){
       var SearchFormsubmit = component.getEvent('SearchFormsubmit');
        SearchFormsubmit.setParams({
            
            "carTypeId" : component.find("carType").get('v.value')
        });
        
SerachFormsubmit.fire();   
    },
   
    createRecord:function(component, event, helper){
        var createCarreccord = $A.get("e.force:createRecord");
        
        createCarreccord.setParams({
            "entityApiName":"Namespace0207__CarType__c"
            
      });
        createCarreccord.fire();
    },
    
})

/*refererence
ToggleButton:function(component, event, helper) {
    var currentvalue = component.get("v.isNewAvailable");
        console.log('Method is executed');
        debugger;
        if(currentvalue){
          component.set("v.isNewAvailable","false") ; 
        } else{
          component.set("v.isNewAvailable","true") ; 

        }*/