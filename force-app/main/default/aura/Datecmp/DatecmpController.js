({
        handleChange : function(component, event, helper) {        
            var lookupId = event.getParam("value")[0];
        },
        handleSuccess : function(component, event, helper) {
            var record = event.getParam("response");
            var apiName = record.apiName; // returns "Case"
            var caseId = record.id; // returns the Id of the new record
        },
    })