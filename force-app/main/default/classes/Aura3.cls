public class Aura3 {
    @AuraEnabled
    public static Decimal calculate(Integer amount,Integer rate,Integer years){
        Decimal Intrest=(amount*rate*years)/100;
        return Intrest;
    }

}