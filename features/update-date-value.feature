Feature: Update date value
	
	The date value of the primary input field should be
	updated when a screen reader user changes the value
	of the day, month or year options. 

Scenario: I am a screen reader user wanting to set a date
	
	Given I update the value of day, month or year
		And the date selected is valid
	
	When I focus on the primary date text box
	
	Then the value of the date field is updated
		And I should hear the updated date