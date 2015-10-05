@isTest
public class SampleDeployClass {

    public static testmethod void t1() {
        helloMethod();

        Account acc = new Account(Name= 'fred', Phone='12345');
        insert acc; //cc hit the trigger  - This is changed on 10/03/2015 - Github change

        // Check that the trigger properly set the phone field:
        Account retAcc = [select id, phone from Account where id=:acc.id][0];
        System.assertEquals(getPhone(), retAcc.phone);
    }

    public static String getPhone() {
        return '12345';
    }
    
    public static void helloMethod() {
        System.debug('Hello World');
    }
}