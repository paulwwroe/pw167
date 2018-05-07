

Feature: Update date value
	The date value of the primary input field should be
	updated when a screen reader user changes the value
	of the day, month or year optins. 


Scenario: Buy last coffee
  Given there are 1 coffees left in the machine
  And I have deposited 1$
  When I press the coffee button
  Then I should be served a coffee