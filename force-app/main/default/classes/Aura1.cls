public class Aura1 {
    @AuraEnabled
    public static string CallMe(){
        string name='Iam invoke from Apex';
        return name;
    }

}