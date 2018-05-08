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