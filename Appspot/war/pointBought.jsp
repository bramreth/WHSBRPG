<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">

<script>
var S = 0;//holds the cost of the chosen strength
var D = 0;//holds the cost of the chosen dexterity
var Co = 0;//holds the cost of the chosen constitution
var I = 0;//holds the cost of the chosen intelligence
var W = 0;//holds the cost of the chosen wisdom
var Ca = 0;//holds the cost of the chosen charisma
var points = 27 - S - D - Co - I - W - Ca;//calculates how many points the user has spent when they start with 27
function display(){
	document.getElementById("points").innerHTML = points;//sets the div to show the remaining points
}
function point1(x, y){
	S = x;//set value of strength cost
	points = 27 - S - D - Co - I - W - Ca;//recalculate points
	var elem = document.getElementById("p1");
	elem.value = points;//save the points value in the invisible radio buttons
	var score = document.getElementById("p2");
	score.value = y;//save the chosen strength score in the invisible radio buttons
	document.getElementById("points").innerHTML = points;//alter points remaining display
}
function point2(x, y){
	D = x;//set value of dexterity cost
	points = 27 - S - D - Co - I - W - Ca;//reacalculate
	var elem = document.getElementById("p1");
	elem.value = points;//save points
	var score = document.getElementById("p3");
	score.value = y;//save chosen dex score
	document.getElementById("points").innerHTML = points;
}
function point3(x, y){//same for constitution
	Co = x;
	points = 27 - S - D - Co - I - W - Ca;
	var elem = document.getElementById("p1");
	elem.value = points;
	var score = document.getElementById("p4");
	score.value = y;
	document.getElementById("points").innerHTML = points;
}
function point4(x, y){//same for intelligence
	I = x;
	points = 27 - S - D - Co - I - W - Ca;
	var elem = document.getElementById("p1");
	elem.value = points;
	var score = document.getElementById("p5");
	score.value = y;
	document.getElementById("points").innerHTML = points;
}
function point5(x, y){//same for wisdom
	W = x;
	points = 27 - S - D - Co - I - W - Ca;
	var elem = document.getElementById("p1");
	elem.value = points;
	var score = document.getElementById("p6");
	score.value = y;
	document.getElementById("points").innerHTML = points;
}
function point6(x, y){//same for charisma
	Ca = x;
	points = 27 - S - D - Co - I - W - Ca;
	var elem = document.getElementById("p1");
	elem.value = points;
	var score = document.getElementById("p7");
	score.value = y;
	document.getElementById("points").innerHTML = points;
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body onload = "display();"><!-- display current points -->
<% 
session.getAttribute("player5");
coursework player = (coursework)session.getAttribute("player5");//get latest object
int p = 0;//server side variable for points
int st = 0;//variables for scores
int de = 0;
int co = 0;
int in = 0;
int wi = 0;
int ch = 0;
if (request.getParameter("str") != null && request.getParameter("dex") != null 
	&& request.getParameter("con") != null && request.getParameter("int") != null 
	&& request.getParameter("wis") != null && request.getParameter("cha") != null) {//check the values in the invisible radio buttons
	p = Integer.parseInt(request.getParameter("points"));//get points
	st = Integer.parseInt(request.getParameter("strV"));//get all ability score values
	de = Integer.parseInt(request.getParameter("dexV"));
	co = Integer.parseInt(request.getParameter("conV"));
	in = Integer.parseInt(request.getParameter("intV"));
	wi = Integer.parseInt(request.getParameter("wisV"));
	ch = Integer.parseInt(request.getParameter("chaV"));
	if(p == 0){//if all points have been spent
		player.seta1(st);//add the chosen values to the repective abilities
		player.seta2(de);
		player.seta3(co);
		player.seta4(in);
		player.seta5(wi);
		player.seta6(ch);
		session.setAttribute("player6", player);//save latest object
		response.sendRedirect("class.jsp");//redirect
	}
	if(p > 0){//not all points spent
		out.println("you still have points left");//output not all points spent
	}
	if(p < 0){//too many points spent
		out.println("you have spent too many points");//output too many points spent
	}
}

%>
<div id="navcontainer"><!-- navigation bar -->
		<ul class="navigation">
			<li id="active"><a href="race.jsp">Character Creator</a></li>
			<li><a href="CharacterViewer.jsp" id="current">Character Viewer</a></li>
		</ul>
	</div>

<h1>Bram's character creator</h1>
	<h2>
		Point bought
		</h2>
		<form name="abs">
		<div id="leftcolumn1">
		<b>ability scores:</b><br>
		<table><!-- table for formatting -->
		<tr>
			<td>Strength:</td>   
			<td><input type="radio" id = "one1" name =  "str" value="0" onclick = "point1(0, 8);">8 </td> <!-- all options for ability scores -->
			<td><input type="radio" id ="two1" name = "str" value="1"onclick = "point1(1, 9);">9 </td> <!-- functions alter reamining points -->
			<td><input type="radio" id ="three1" name = "str" value="2"onclick = "point1(2, 10);">10 </td> 
			<td><input type="radio" id ="four1" name = "str" value="3"onclick = "point1(3, 11);">11 </td> 
			<td><input type="radio" id ="five1" name = "str" value="4"onclick = "point1(4, 12);">12 </td> 
			<td><input type="radio" id ="six1" name = "str" value="5"onclick = "point1(5, 13);">13 </td> 
			<td><input type="radio" id ="five1" name = "str" value="6"onclick = "point1(7, 14);">14 </td> 
			<td><input type="radio" id ="six1" name = "str" value="7"onclick = "point1(9, 15);">15 </td> 
		</tr>
		<tr>
			<td>Dexterity: </td>
			<td><input type="radio" id = "one1" name =  "dex" value="0"onclick = "point2(0, 8);">8 </td> 
			<td><input type="radio" id ="two1" name = "dex" value="1"onclick = "point2(1, 9);">9 </td> 
			<td><input type="radio" id ="three1" name = "dex" value="2"onclick = "point2(2, 10);">10 </td> 
			<td><input type="radio" id ="four1" name = "dex" value="3"onclick = "point2(3, 11);">11 </td> 
			<td><input type="radio" id ="five1" name = "dex" value="4"onclick = "point2(4, 12);">12 </td> 
			<td><input type="radio" id ="six1" name = "dex" value="5"onclick = "point2(5, 13);">13 </td> 
			<td><input type="radio" id ="five1" name = "dex" value="6"onclick = "point2(7, 14);">14 </td> 
			<td><input type="radio" id ="six1" name = "dex" value="7"onclick = "point2(9, 15);">15 </td> 
			</tr>
		<tr>
			<td>Constitution:</td>
			<td><input type="radio" id = "one1" name =  "con" value="0"onclick = "point3(0, 8);">8 </td> 
			<td><input type="radio" id ="two1" name = "con" value="1"onclick = "point3(1, 9);">9 </td> 
			<td><input type="radio" id ="three1" name = "con" value="2"onclick = "point3(2, 10);">10 </td> 
			<td><input type="radio" id ="four1" name = "con" value="3"onclick = "point3(3, 11);">11 </td> 
			<td><input type="radio" id ="five1" name = "con" value="4"onclick = "point3(4, 12);">12 </td> 
			<td><input type="radio" id ="six1" name = "con" value="5"onclick = "point3(5, 13);">13 </td> 
			<td><input type="radio" id ="five1" name = "con" value="6"onclick = "point3(7, 14);">14 </td> 
			<td><input type="radio" id ="six1" name = "con" value="7"onclick = "point3(9, 15);">15 </td> 
		</tr>
		<tr>
			<td>Intelligence:</td>
			<td><input type="radio" id = "one1" name =  "int" value="0"onclick = "point4(0, 8);">8 </td> 
			<td><input type="radio" id ="two1" name = "int" value="1"onclick = "point4(1, 9);">9 </td> 
			<td><input type="radio" id ="three1" name = "int" value="2"onclick = "point4(2, 10);">10 </td> 
			<td><input type="radio" id ="four1" name = "int" value="3"onclick = "point4(3, 11);">11 </td> 
			<td><input type="radio" id ="five1" name = "int" value="4"onclick = "point4(4, 12);">12 </td> 
			<td><input type="radio" id ="six1" name = "int" value="5"onclick = "point4(5, 13);">13 </td> 
			<td><input type="radio" id ="five1" name = "int" value="6"onclick = "point4(7, 14);">14 </td> 
			<td><input type="radio" id ="six1" name = "int" value="7"onclick = "point4(9, 15);">15 </td> 
		</tr>
		<tr>
			<td>Wisdom:</td>     
			<td><input type="radio" id = "one1" name =  "wis" value="0"onclick = "point5(0, 8);">8 </td> 
			<td><input type="radio" id ="two1" name = "wis" value="1"onclick = "point5(1, 9);">9 </td> 
			<td><input type="radio" id ="three1" name = "wis" value="2"onclick = "point5(2, 10);">10 </td> 
			<td><input type="radio" id ="four1" name = "wis" value="3"onclick = "point5(3, 11);">11 </td> 
			<td><input type="radio" id ="five1" name = "wis" value="4"onclick = "point5(4, 12);">12 </td> 
			<td><input type="radio" id ="six1" name = "wis" value="5"onclick = "point5(5, 13);">13 </td> 
			<td><input type="radio" id ="five1" name = "wis" value="6"onclick = "point5(7, 14);">14 </td> 
			<td><input type="radio" id ="six1" name = "wis" value="7"onclick = "point5(9, 15);">15 </td> 
		</tr>
		<tr>
			<td>Charisma:</td>    
			<td><input type="radio" id = "one1" name =  "cha" value="0"onclick = "point6(0, 8);">8 </td> 
			<td><input type="radio" id ="two1" name = "cha" value="1"onclick = "point6(1, 9);">9 </td> 
			<td><input type="radio" id ="three1" name = "cha" value="2"onclick = "point6(2, 10);">10 </td> 
			<td><input type="radio" id ="four1" name = "cha" value="3"onclick = "point6(3, 11);">11 </td> 
			<td><input type="radio" id ="five1" name = "cha" value="4"onclick = "point6(4, 12);">12 </td> 
			<td><input type="radio" id ="six1" name = "cha" value="5"onclick = "point6(5, 13);">13 </td> 
			<td><input type="radio" id ="five1" name = "cha" value="6"onclick = "point6(7, 14);">14 </td> 
			<td><input type="radio" id ="six1" name = "cha" value="7"onclick = "point6(9, 15);">15 </td>   
		</tr>
		</table>
			
		</div>
		<div id="rightcolumn1"><!-- right collumn showing how many points the cores cost -->
		<b>your points</b><br>
		<div id = "points"></div>
		<br>
		<center>
		<table>
		<tr>
		<td>Score</td>
		<td>Cost</td>
		</tr>
		<tr>
		<td>8</td>
		<td>0</td>
		</tr>
		<tr>
		<td>9</td>
		<td>1</td>
		</tr>
		<tr>
		<td>10</td>
		<td>2</td>
		</tr>
		<tr>
		<td>11</td>
		<td>3</td>
		</tr>
		<tr>
		<td>12</td>
		<td>4</td>
		</tr>
		<tr>
		<td>13</td>
		<td>5</td>
		</tr>
		<tr>
		<td>14</td>
		<td>7</td>
		</tr>
		<tr>
		<td>15</td>
		<td>9</td>
		</tr>
		</table>
		</center>
		
		</div>
		<div id = "hidden"><!-- hidden div to give values to the jsp -->
		<input type = "radio" name = "points" id = "p1" value = "27" checked><!-- passes js points -->
		<input type = "radio" name = "strV" id = "p2" value = "0" checked><!-- passes chosen ability score values -->
		<input type = "radio" name = "dexV" id = "p3" value = "0" checked>
		<input type = "radio" name = "conV" id = "p4" value = "0" checked>
		<input type = "radio" name = "intV" id = "p5" value = "0" checked>
		<input type = "radio" name = "wisV" id = "p6" value = "0" checked>
		<input type = "radio" name = "chaV" id = "p7" value = "0" checked>
		</div>
		<div id = "submit">
		<input type="submit" id = "fixedbutton"><!-- submit button -->
		</div>	
		</form>
</body>
</html>