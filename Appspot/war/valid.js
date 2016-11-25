function checkboxlimit(checkgroup, limit){//set limit of checkbox checks
	var checkgroup=checkgroup//make the checkgroup a useable variable
	var limit=limit//make the limit of the max number a useable variable
	for (var i=0; i<checkgroup.length; i++){//for each checkbox in the group
		checkgroup[i].onclick=function(){//run function onclick
		var checkedcount=0//variable, number of boxes that are checked
		for (var i=0; i<checkgroup.length; i++)//for each checkbox in the group
			checkedcount+=(checkgroup[i].checked)? 1 : 0//if that checkbox is checked increase the checkedcount by 1
		if (checkedcount>limit){//if checkcount is greater than the given limit
			this.checked=false//uncheck the box
			}
		}
	}
}