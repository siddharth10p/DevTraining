/**
 * @description       : A controller class to fetch contacts for Aura card component
 * @author            : Siddharth Pandit
 * @group             : 
 * @last modified on  : 08-13-2022
 * @last modified by  : Siddharth Pandit
**/
public with sharing class ContactListController {

    @AuraEnabled
    public static List<Contact> getContactList(List<Id> acctIds) {
        // Getting the list of contacts from where Id is in accountIds
        return [SELECT Id, Name, Email, Phone, AccountId FROM Contact WHERE AccountId in :acctIds];
    }
}
