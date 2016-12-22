public class InputLookupRelationshipController 
{
	public String lookupString {get; set;}
    public InputLookupRelationshipController()
    {
    	List<Account> accList = [Select Id, Name From Account];
    	List<LookupHelper> helperList = new List<LookupHelper>();

    	for(Account a: accList) {
    		LookupHelper helper = new LookupHelper();
    		helper.id = a.Id;
    		helper.label = a.Name;

    		helperList.add(helper);
    	}

    	lookupString = JSON.serialize(helperList);
    }

    public class LookupHelper
    {
    	public String id;
    	public String label;
    }
}