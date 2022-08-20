public with sharing class LeadTriggerHandler {

    // Insert trigger
    public static void dupEmailCheckOnInsert(List<Lead> leadList) {
        Set<String> leadEmailSet = new Set<String> ();
        for (Lead aLead : leadList) {
            if (String.isNotBlank(aLead.Email)) {
                leadEmailSet.add(aLead.Email);
            }
        }
        Set<String> emailExist = new Set<String> ();
        for (Lead leadExist: [SELECT Id, Email
                            FROM Lead
                            WHERE Email IN :leadEmailSet]) { // 100
            emailExist.add(leadExist.Email);
        } // End for

        for (Lead aLead : leadList) {
            if (emailExist.contains(aLead.Email)) {
                aLead.Email.addError('Duplicate email');
            }
        } // End for
    } // End method


    // A method to validate email on update
    public static void dupEmailCheckOnUpdate(List<Lead> leadList) {
        Set<String> leadEmailSet = new Set<String> ();
        for (Lead aLead : leadList) {
            if (String.isNotBlank(aLead.Email)) {
                leadEmailSet.add(aLead.Email);
            }
        }
        Map<String, Id> emailExist = new Map<String, Id> ();
        for (Lead leadExist: [SELECT Id, Email
                                FROM Lead
                                WHERE Email IN :leadEmailSet]) {
            emailExist.put(leadExist.Email, leadExist.Id);
        } // End for

        for (Lead aLead : leadList) { //100 
            if (emailExist.containsKey(aLead.Email) && emailExist.get(aLead.Email) != aLead.Id) {
                aLead.Email.addError('Duplicate email');
            }
        } // End for
    } // End method
} // End class