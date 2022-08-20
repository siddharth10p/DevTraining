@IsTest
private class LeadTriggerHandlerTest {

    //test insert method
    @IsTest
    static void testDupEmailCheckOnInsert() {
        Lead lead1 = new Lead(FirstName = 'Test', LastName = 'Lead 1', Email = 'test@abcd.com', Company = 'Google');
        insert lead1;
        
        Lead lead2 = new Lead(FirstName = 'Test', LastName = 'Lead 2', Email = 'test@abcd.com', Company = 'Microsoft');
        try {
            insert lead2;
        } catch(DmlException e) {
            System.assertEquals(true, e.getMessage().contains('Duplicate email'));
        }
    } // End method
    
    @IsTest
    static void testDupEmailCheckOnUpdate() {
        Lead lead1 = new Lead(FirstName = 'Test', LastName = 'Lead 1', Email = 'test@abcd.com', Company = 'Google');
        insert lead1;
        
        Lead lead2 = new Lead(FirstName = 'Test', LastName = 'Lead 2', Email = 'test@abcd1.com', Company = 'Microsoft');
        insert lead2;
        try {
            lead2.Email = 'test@abcd.com';
            update lead2;
        } catch(DmlException e) {
            System.assertEquals(true, e.getMessage().contains('Duplicate email'));
        }
    } // End method
}