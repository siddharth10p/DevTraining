// Add proper comments
trigger LeadTrigger on Lead (before insert, before update) {
    if (Trigger.isInsert) {
        LeadTriggerHandler.dupEmailCheckOnInsert(Trigger.new);
    }

    if (Trigger.isUpdate) {
        LeadTriggerHandler.dupEmailCheckOnUpdate(Trigger.new);
    }
} // End trigger