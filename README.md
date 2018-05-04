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

### CSS
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
```html
<div class="sr-only">
	<!-- Day -->
	<select id="sr-day">
		<option value="01">01</option>
		<!-- More options -->
	</select>
	<!-- Month -->
	<select id="sr-month">
		<option value="04">04</option>
		<!-- More options -->
	</select>
	<!-- Year -->
	<select id="sr-year">
		<option value="2018">2018</option>
		<!-- More options -->
	</select>
</div>
```

## Code Examples

```javascript
var s = "JavaScript syntax highlighting";
alert(s);
```

## ARIA

| Attribute		| Details		|
| ------------- |:-------------:|
| aria-hidden	|				|

## Announcements

## Acceptance Criteria

## Testing

