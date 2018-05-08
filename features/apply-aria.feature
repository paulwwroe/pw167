Feature: Apply ARIA role to hide date picker UI
	
	A screen reader must not be able to interact with
	the original date picker UI. An ARIA attribute is
	applied to the container element to hide it.

Scenario: I am a screen reader user wanting to set a date
	
	Given I set focus to the date field	
	
	When I set a date

	Then I should only be able to set day, month, or year
		And shouldn't be ableto focus to the date picker UI