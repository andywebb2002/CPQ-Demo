trigger AccountFieldCopy on Account (before insert, before update) {
    for(Account acct : trigger.new)
    {
    	acct.Site = acct.name_copy__c;
    }
}