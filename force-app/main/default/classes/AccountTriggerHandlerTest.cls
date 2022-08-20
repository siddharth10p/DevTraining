@IsTest
private class AccountTriggerHandlerTest {

    @IsTest
    static void testPrimaryContactFunction() {
        Account acct = new Account(Name = 'Test Acct', AnnualRevenue = 500001);
        insert acct;
        
        List<Contact> conList = [SELECT FirstName, LastName
                                 FROM Contact
                                 WHERE AccountId =: acct.Id];
        System.assertEquals(1, conList.size());
        System.assertEquals('Primary - ' + acct.Name, conList[0].FirstName);
        System.assertEquals('Contact', conList[0].LastName);
    }
}