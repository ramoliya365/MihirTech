Trigger Gmail_integration on Contact (after update) {
    if(Trigger.IsUpdate && Trigger.isAfter){
        GmailApiNamedCredential.sendEmail();
        System.debug('trigger call');
    }
}