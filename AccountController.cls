public with sharing class AccountController 
{
    @AuraEnabled(cacheable=true)
    public static List<Account> displayAccounts()
    {
        return [SELECT Id,Name,Phone, AccountNumber FROM Account];
    }

   @AuraEnabled
   public static List<Contact> updateRecord(String accId)
   {
       System.debug('@@@@AccountId@@@'+accId);
       return [SELECT Id,Name,Phone FROM Contact WHERE Id=:accId];
    //    acc.site='Approved';
    //    try
    //    {
    //        update acc;
    //    }
	//    catch (Exception e)
    //    {
    //        System.debug('unable to update the record due to'+e.getMessage());
    //    }
    //    return displayAccounts();
    }
}