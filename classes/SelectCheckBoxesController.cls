public with sharing class SelectCheckBoxesController 
{
	public List<SelectOption> availableOptions {get; set;}
	public String selectedOne {get; set;}
	
    public SelectCheckBoxesController() 
    {
        availableOptions = new List<SelectOption>();
        availableOptions.add(new SelectOption('1', 'Test1'));
        availableOptions.add(new SelectOption('2', 'Test2'));
        availableOptions.add(new SelectOption('3', 'Test3'));
    }
}