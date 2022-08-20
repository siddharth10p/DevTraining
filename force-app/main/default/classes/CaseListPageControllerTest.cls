/**
 * @description       : 
 * @author            : Siddharth Pandit
 * @group             : 
 * @last modified on  : 08-13-2022
 * @last modified by  : Siddharth Pandit
**/
@IsTest
private with sharing class CaseListPageControllerTest {
    @IsTest
    static void coverCaseListController() {
        // Create test data
        Account acct = new Account(Name = 'Test Account');
        insert acct;
        Contact cont = new Contact(FirstName = 'Ashley', LastName = 'Miller', AccountId = acct.Id);
        insert cont;
        Case cs = new Case(AccountId = acct.Id, ContactId = cont.Id, Priority = 'Low', Status = 'Closed');
        insert cs;
        Case cs1 = new Case(AccountId = acct.Id, ContactId = cont.Id, Priority = 'High', Status = 'Open');
        insert cs1;

        Test.startTest();
            // Invoke the controller method
            CaseListPageController cntrl = new CaseListPageController();
            List<Case> csList = cntrl.getClosedCases();
        Test.stopTest();
        // Assertions
        System.assertEquals(1, csList.size(), 'Error - We got an open case as well');
        System.assertEquals('Low', csList[0].Priority, 'Error - We got an open case');
        System.assertEquals(cs.Status, csList[0].Status, 'Error - We got an open case');
    }
}
