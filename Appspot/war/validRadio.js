function oneWipe(id){//treat all the radio buttons with an id starting with one as a group of radio buttons
	var row = id;//get the wanted value to remain checked
	document.getElementById("one1").checked = false;//clear all checks in the collumn
	document.getElementById("one2").checked = false;
	document.getElementById("one3").checked = false;
	document.getElementById("one4").checked = false;
	document.getElementById("one5").checked = false;
	document.getElementById("one6").checked = false;
	switch(row){//check the selected rows
	case 1: 
		document.getElementById("one1").checked = true;//if the first one was checked, re-check it after clearing all
		break;
	case 2:
		document.getElementById("one2").checked = true;
		break;
	case 3:
		document.getElementById("one3").checked = true;
		break;
	case 4:
		document.getElementById("one4").checked = true;
		break;
	case 5:
		document.getElementById("one5").checked = true;
		break;
	case 6:
		document.getElementById("one6").checked = true;
		break;
	}
}
function twoWipe(id){//the same as oneWipe for the second column
	var row = id;
	document.getElementById("two1").checked = false;
	document.getElementById("two2").checked = false;
	document.getElementById("two3").checked = false;
	document.getElementById("two4").checked = false;
	document.getElementById("two5").checked = false;
	document.getElementById("two6").checked = false;
	switch(row){
	case 1: 
		document.getElementById("two1").checked = true;
		break;
	case 2:
		document.getElementById("two2").checked = true;
		break;
	case 3:
		document.getElementById("two3").checked = true;
		break;
	case 4:
		document.getElementById("two4").checked = true;
		break;
	case 5:
		document.getElementById("two5").checked = true;
		break;
	case 6:
		document.getElementById("two6").checked = true;
		break;
	}
}
function threeWipe(id){//third column
	var row = id;
	document.getElementById("three1").checked = false;
	document.getElementById("three2").checked = false;
	document.getElementById("three3").checked = false;
	document.getElementById("three4").checked = false;
	document.getElementById("three5").checked = false;
	document.getElementById("three6").checked = false;
	switch(row){
	case 1: 
		document.getElementById("three1").checked = true;
		break;
	case 2:
		document.getElementById("three2").checked = true;
		break;
	case 3:
		document.getElementById("three3").checked = true;
		break;
	case 4:
		document.getElementById("three4").checked = true;
		break;
	case 5:
		document.getElementById("three5").checked = true;
		break;
	case 6:
		document.getElementById("three6").checked = true;
		break;
	}
}
function fourWipe(id){//fourth column
	var row = id;
	document.getElementById("four1").checked = false;
	document.getElementById("four2").checked = false;
	document.getElementById("four3").checked = false;
	document.getElementById("four4").checked = false;
	document.getElementById("four5").checked = false;
	document.getElementById("four6").checked = false;
	switch(row){
	case 1: 
		document.getElementById("four1").checked = true;
		break;
	case 2:
		document.getElementById("four2").checked = true;
		break;
	case 3:
		document.getElementById("four3").checked = true;
		break;
	case 4:
		document.getElementById("four4").checked = true;
		break;
	case 5:
		document.getElementById("four5").checked = true;
		break;
	case 6:
		document.getElementById("four6").checked = true;
		break;
	}
}
function fiveWipe(id){//fith column
	var row = id;
	document.getElementById("five1").checked = false;
	document.getElementById("five2").checked = false;
	document.getElementById("five3").checked = false;
	document.getElementById("five4").checked = false;
	document.getElementById("five5").checked = false;
	document.getElementById("five6").checked = false;
	switch(row){
	case 1: 
		document.getElementById("five1").checked = true;
		break;
	case 2:
		document.getElementById("five2").checked = true;
		break;
	case 3:
		document.getElementById("five3").checked = true;
		break;
	case 4:
		document.getElementById("five4").checked = true;
		break;
	case 5:
		document.getElementById("five5").checked = true;
		break;
	case 6:
		document.getElementById("five6").checked = true;
		break;
	}
}
function sixWipe(id){//sixth column
	var row = id;
	document.getElementById("six1").checked = false;
	document.getElementById("six2").checked = false;
	document.getElementById("six3").checked = false;
	document.getElementById("six4").checked = false;
	document.getElementById("six5").checked = false;
	document.getElementById("six6").checked = false;
	switch(row){
	case 1: 
		document.getElementById("six1").checked = true;
		break;
	case 2:
		document.getElementById("six2").checked = true;
		break;
	case 3:
		document.getElementById("six3").checked = true;
		break;
	case 4:
		document.getElementById("six4").checked = true;
		break;
	case 5:
		document.getElementById("six5").checked = true;
		break;
	case 6:
		document.getElementById("six6").checked = true;
		break;
	}
}