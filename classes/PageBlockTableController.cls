public with sharing class PageBlockTableController 
{
	public List<Contact> contactList {get; set;}

    public PageBlockTableController() 
    {
        contactList = [Select 	Id, Name, 
        						DoNotCall,
        						Sample_Checkbox__c,
        						Email,
        						Birthdate
        				From    Contact
        				Limit   10];
    }
}