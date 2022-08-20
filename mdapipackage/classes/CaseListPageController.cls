/**
 * Description: This controller class pulls all the closed cases
 *
 * Created By: Siddharth Pandit
 * Created Date: 06/Aug/22
 **/
public with sharing class CaseListPageController {
    // A method to fetch closed cases
    public List<Case> getClosedCases() {
        return [SELECT CaseNumber, Account.Name, Contact.Name, Status, Priority
                    FROM Case
                    WHERE Status = 'Closed'];
    }
}