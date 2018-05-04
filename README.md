# Date Picker UI

![date picker ui diagram](https://github.com/paulwwroe/pw167/blob/master/images/diagram.png "Date Picker Ui")

## Contents
1. Context
2. Problem
3. Announcements
4. ARIA 
5. Acceptance Criteria
6. Code Examples
7. Testing
8. Solution


## Context

Whilst choosing to develop a custom UI for allowing a date value to be selected within a web page can guarantee cross-browser support and consistent behaviour, it can also result in poor accessibility. A screen reader user may find it difficult, or in some cases impossible to select and set a date value using a custom developped date picker UI. This design pattern presents a solution for developing a custom date picker UI, that when implemented optimizes accessibility for screen reader users.git


## Problem

## Solution

Create a dropdown lists for day, month and year within a container element that is only accessible to screen reader users and hidden to other users.

## Code Examples

The code examples below illustrate how the solution can be implemented.

### CSS
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

### HTML
Create a dropdown list for day, month and year.
```html
<!-- Primary input field -->
<input type="text" name="myDate" id="myDateInput" aria-hidden="true" />

<!-- Container element for day, month, year -->
<div class="sr-only"> 
	<select id="sr-day" onchange="update()">
		<option value="01">01</option>
		<option value="02">02</option>
		<option value="03">03</option>
	</select>
	<select id="sr-month" onchange="update()">
		<option value="01">01</option>
		<option value="02">02</option>
		<option value="03">03</option>
	</select>
	<select id="sr-year" onchange="update()">
		<option value="2018">2018</option>
		<option value="2019">2019</option>
		<option value="2020">2020</option>
	</select> 
</div>
```

### JavaScript
```javascript
//	Primary input field
const myDateInput = document.getElementById('myDateInput');

//	Day, Month and Year select elements
const srDay = document.getElementById('sr-day');
const srMonth = document.getElementById('sr-month');
const srYear = document.getElementById('sr-year');

//	 Set value of primary input to concatenated value
const update = () => {
  myDateInput.value = srDay.value + '/' + srMonth.value + '/' + srYear.value;
}
```


## ARIA

| Attribute		| Details		|
| ------------- |:-------------:|
| aria-hidden	|				|

## Announcements

## Acceptance Criteria

## Testing

