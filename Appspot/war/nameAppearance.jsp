<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<style>
#center{
	margin-top: 12%;
	width: 4%; 
	float: left;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
<%
session.getAttribute("player1");//get coursework class holding choices
coursework player = (coursework)session.getAttribute("player1");//set an object to equal the session variable
//variables initialised and declared to hold choices from the form
int age = 0;
String height = "";
int feet = 0;
int inches = 0;
int weight = 0;
boolean randHW = false;//whether or not the user wants a random weihgt and height
String rName = "";//real name
String pName = "";//player character name
String eyes = "";
String skin = "";
String hair = "";
boolean[] flags = new boolean[6];//array of flags for confirming if all choices are made
boolean flag3 = false;
boolean flag4 = false;
boolean flag5 = false;
boolean bigFlag = false;
if (request.getParameter("age") != null) {//sets age
	if (request.getParameter("age") != "") {//checks an age was enterred
		try{
			age = Integer.parseInt(request.getParameter("age"));//converts input age to an integer
			flags[0] = true;//sets first flag to true
		}catch(Exception e){
			//catches if non integers are enterred
		}
	}
}
if (request.getParameter("rName") != null) {//sets real name
	if (request.getParameter("rName") != ""){
		rName = request.getParameter("rName");//sets the name to the enterred name
		flags[1] = true;//sets he second flag to true
	}
}	
if (request.getParameter("cName") != null) {//sets player character name
	if (request.getParameter("cName") != ""){
		pName = request.getParameter("cName");
		flags[2] = true;
	}
}
if (request.getParameter("eyes") != null) {//set eye information
	if (request.getParameter("eyes") != ""){
		eyes = request.getParameter("eyes");
		flags[3] = true;
	}
}
if (request.getParameter("skin") != null) {//sets skin information
	if (request.getParameter("skin") != ""){
		skin = request.getParameter("skin");
		flags[4] = true;
	}
}
if (request.getParameter("hair") != null) {//sets hair information
	if (request.getParameter("hair") != ""){
		hair = request.getParameter("hair");
		flags[5] = true;
	}
}
if (request.getParameter("rand") != null) {//sets random height and weight flag
	int rand = Integer.parseInt(request.getParameter("rand"));
	if(rand == 1){//if the box was checked
		randHW = true;//set random height/weight to true
	}
}

if (request.getParameter("feet") != null) {//set the number of feet in the palyers height
	if (request.getParameter("feet") != ""){
		try{
			feet = Integer.parseInt(request.getParameter("feet"));
			flag3 = true;
		}catch(Exception e){
		}
	}
}
if (request.getParameter("inches") != null) {//set the number of inches in the players height
	if (request.getParameter("inches") != ""){
		try{
			inches = Integer.parseInt(request.getParameter("inches"));
			if(inches > 11){
				flag4 = false;// number not less than 11 inches
			}else{
				flag4 = true;
			}
		}catch(Exception e){
		}
	}
}
if (request.getParameter("Weight") != null) {//set the weight in pounds
	if (request.getParameter("Weight") != ""){
		try{
			weight = Integer.parseInt(request.getParameter("Weight"));
			if(weight > 500){//weight cannot be greater than 500 pounds
				flag5 = false;
			}else{
				flag5 = true;
			}
		}catch(Exception e){
		}
	}
}

int flagsTrue = 0;
for(int x=0; x<6;x++){//check through the flags
	if(flags[x] == true){//check flag 0 to 5
		flagsTrue++;//if flag true, increment flagsTrue count
		
	}
	if(flagsTrue>5){//if all the flags are true, then process
		if(randHW == true){//if random height and weight is chosen run standard setter
		player.Background(rName, pName, eyes, skin, hair, age, randHW, height, weight);//background setter method
		session.setAttribute("player2", player);//set the updated object as a session variable
		response.sendRedirect("background.jsp");//redirect to the next page
		}
		if(flag3 == true && flag4 == true && flag5 == true){//if the feet, inches and weight are entered
					height = feet + "' " + inches + "''";//append the feet and inches to put them with appropriate units in a string format
					player.Background(rName, pName, eyes, skin, hair, age, randHW, height, weight);//normal setter
					session.setAttribute("player2", player);//set the updated object as a session variable
					response.sendRedirect("background.jsp");//redirect to the next page
		}
	}
}
%>
<div id="navcontainer"><!-- nav bar for the top of the page -->
	<ul class="navigation">
		<li id="active"><a href="race.jsp">Character Creator</a></li>
		<li><a href="CharacterViewer.jsp" id="current">Character Viewer</a></li>
	</ul>
</div>

</head>
<body>
<h1>Bram's character creator</h1>
	<h2>
		Name and Appearance
		</h2>
		<form><!-- form for inputting choices -->
		<div id="leftcolumn"><!-- left column -->
		<b>character's name:</b><br>
		<input type="text" name="cName" maxlength="17"><br><br><br><!-- Character name input parallel to the real name -->
		<div id = "age" >Age: <input type="text" name="age" maxlength="4"></div><br><!-- textboxes for age, eyes, skin, hair in the left column -->
		<div id = "eyes" >Eyes: <input type="text" name="eyes" maxlength="17"></div><br>
		<div id = "skin" >Skin: <input type="text" name="skin" maxlength="17"></div><br>
		<div id = "hair" >Hair: <input type="text" name="hair" maxlength="17"></div><br>
		</div>
		<div id = "center" align="center">
		<input type="submit" id = "fixedbutton"><!-- submit form button -->
		</div>
		<div id="rightcolumn"><!-- right column -->
		<b>your name:</b><br>
		<input type="text" name="rName" maxlength="17"><br><br><br><!-- real name input -->
		Height <input type="text" name="feet" id="feet" maxlength="1"> foot <!-- height in feet and inches textboxes -->
		<input type="text" name="inches" id="inches" maxlength="2"> inches <br>
		<input type="checkbox" name="rand" value = "1">random height and weight<br><!-- random height and weight checkbox -->
		Weight <input type="text" name="Weight" id="Weight" maxlength="3"> pounds<br> <!-- weight in pounds -->
		</div>
		
		</form>
</body>
</html>


