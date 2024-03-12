<aura:application extends="force:slds">    

    <lightning:accordion  aura:id='id' activesectionname='Basic Info'>
        <lightning:accordionsection name='Basic Info' label='Basic Info'>
            <lightning:input label='Firstname' aura:id='fname'/>
            <lightning:input label='Lastname' aura:id='lname'/>
        </lightning:accordionsection>
         <lightning:accordionsection name='Basic Info' label='Contact Info'>
            <lightning:input label='Phone' aura:id='phone'/>
            <lightning:input label='Email' aura:id='email'/>
        </lightning:accordionsection>
    
    </lightning:accordion>
</aura:application>

<!-- <c:IQVIA_Component6/> -->
    <!-- <c:iqvia -->