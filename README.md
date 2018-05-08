# Accessible Date Picker UI

![date picker ui diagram](https://github.com/paulwwroe/pw167/blob/master/images/diagram.png "Date Picker Ui")

## Problem

Whilst choosing to develop a custom date picker UI component can maximise cross-browser support and ensure consistent behaviour, it can also result in poor accessibility, meaning that screen reader users may find it difficult, or in some cases impossible to select and set a date. This design pattern presents an accessible solution that can be implemented alongside a custom built date picker UI component.

## Solution

Include 3 additional dropdown lists for day, month and year within a container element that is only accessible to screen reader users and hidden to others. Programmatically set the value of the primary input field when either of the 3 additional dropdown lists are changed. Apply ARIA roles to the primary input field so that a screen reader user is only able to control the value of the day, month and year dropdown list controls.

## Code Examples

The code examples below demonstrate how the solution given could be implemented using HTML, JavaScript and CSS.

#### CSS
Create a style class that can be applied to elements that are accessible for screen reader users, yet hidden to other users.
```css
.sr-only {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0,0,0,0);
	border: 0;
}
```

#### HTML
Create three additional dropdown lists for day, month and year.
```html
<div aria-hidden="true">
	<!-- Primary input field -->
	<input type="text" name="myDateInput" id="myDateInput" />
	<button>Select Date</buton>
</div>

<!-- Container element for day, month and year input fields -->
<div class="sr-only"> 
	<label>select a day</label>
	<select id="sr-day" onchange="update()">
		<option value="01">01</option>
		<option value="02">02</option>
		<option value="03">03</option>
		<!-- ... -->
	</select>
	<label>select a month</label>
	<select id="sr-month" onchange="update()">
		<option value="01">01</option>
		<option value="02">02</option>
		<option value="03">03</option>
		<!-- ... -->
	</select>
	<label>select a year</select>
	<select id="sr-year" onchange="update()">
		<option value="2018">2018</option>
		<option value="2019">2019</option>
		<option value="2020">2020</option>
		<!-- ... -->
	</select> 
</div>
```

#### JavaScript
Create a function that updates the value of the primary input field using the concatenated values of the additional input fields. The function is triggered when the 'onchange' event listenner that is attached to each of the additional input elements occurs.

```javascript
//	Primary input field
const myDateInput = document.getElementById('myDateInput');

//	Day, month and year select elements
const srDay = document.getElementById('sr-day');
const srMonth = document.getElementById('sr-month');
const srYear = document.getElementById('sr-year');

//	 Set value of primary input to concatenated value
const update = () => {
	
	//	... add validation e.g. protect against invalid dates

	myDateInput.value = srDay.value + '/' + srMonth.value + '/' + srYear.value;

}
```

## ARIA

| Attribute		| Value 		| Details 		|
| ------------- |:-------------:|:-------------:|
| aria-hidden	| true			| Hide the primary input field to screen reader users	|

## Announcements

![dropdown list](https://github.com/paulwwroe/pw167/blob/master/images/announcement.png "dropdown list")

The table below outlines how each of the elements within the solution should be announced. 

| Identifier	| Announces 				|
| ------------- |:-------------------------:|
| 1 			| 'select a day (DD)'		|
| 2 			| 'select a month (MM)'		|
| 3 			| 'select a year (YYYY)'	|

## Feature

The following features act as acceptance criteria that must be met in order to successfully implement the solution given. Each of these features can be in [features](https://github.com/paulwwroe/pw167/tree/master/features).

```
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

Feature: Apply ARIA role to hidedate picker UI
	
	A screen reader must not be able to interact with
	the original date picker UI. An ARIA attribute is
	applied to the container element to hide it.

Scenario: I am a screen reader user wanting to set a date
	
	Given I set focus to the date field	
	
	When I set a date

	Then I should only be able to set day, month, or year
		And shouldn't be ableto focus to the date picker UI
```