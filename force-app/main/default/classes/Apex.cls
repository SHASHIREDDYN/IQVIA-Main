public class Apex {

    @AuraEnabled
    public static string callme(){
        string name='Iam from Apex';
        return name;
    }
}
/*
 <aura:event type="COMPONENT" desription="This is component name"/>
<aura:attribute name="empname" type="string"/>
</aura:event>
 1.How ti register the event
<aura:registerEvent name="" type="namespace:eventname"/>
2.How to fire the event
child.cmp
<aura:component>
<aura:rgisterEvent name="firstcall" type="c:firstevt"/>
<lightning:button label="submit" onclick="{!c.show}"/>
</aura:component>

show:function(){
//Get the event with the name firstCall
 var evt=component.getEvent("firstCall");
 evt.fire();
}

*/