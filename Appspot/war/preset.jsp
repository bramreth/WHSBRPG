<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<script src="validRadio.js"></script><!-- import 2d radio button functions -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
<div id="navcontainer"><!-- navigation bar -->
		<ul class="navigation">
			<li id="active"><a href="race.jsp">Character Creator</a></li>
			<li><a href="CharacterViewer.jsp" id="current">Character Viewer</a></li>
		</ul>
	</div>
<% 
session.getAttribute("player5");//latest character object
coursework player = (coursework)session.getAttribute("player5");

int st = 0;//initialise base ability scores
int de = 0;
int co = 0;
int in = 0;
int wi = 0;
int ch = 0;
int check;
boolean[] flag = {false, false, false, false, false, false};//flags to check all scores are asigned
if (request.getParameter("str") != null) {
	st = Integer.parseInt(request.getParameter("str"));//assign str
	flag[0] = true;//set flag to true
}
if (request.getParameter("dex") != null) {
	de = Integer.parseInt(request.getParameter("dex"));//assign dex
	flag[1] = true;
}
if (request.getParameter("con") != null) {
	co = Integer.parseInt(request.getParameter("con"));//assign con
	flag[2] = true;
}
if (request.getParameter("int") != null) {
	in = Integer.parseInt(request.getParameter("int"));//assign int
	flag[3] = true;
}
if (request.getParameter("wis") != null) {
	wi = Integer.parseInt(request.getParameter("wis"));//assign wis
	flag[4] = true;
}
if (request.getParameter("cha") != null) {
	ch = Integer.parseInt(request.getParameter("cha"));//assign charisma
	flag[5] = true;
}

check = 0;
for(int x=0; x<6; x++){
	if(flag[x] == true){
		check++;// equals six if all flags are true
	}
	if(check == 6){//all flags true
		player.seta1(st);//add all scores to new values
		player.seta2(de);
		player.seta3(co);
		player.seta4(in);
		player.seta5(wi);
		player.seta6(ch);
		session.setAttribute("player6", player);//save latest object
		response.sendRedirect("class.jsp");//redirect
	}
}
%>
<h1>Bram's character creator</h1>
	<h2>
		Preset
		</h2>
		<form name="abs">
		<div id="leftcolumn1"><!-- left collumn -->
		<b>ability scores:</b><br>
		<table>
		<tr>
			<td>Strength:</td>   
			<td><input type="radio" id = "one1" name =  "str" value="15" onclick = "oneWipe(1);">15 </td> <!-- similar to rand but all values are preset -->
			<td><input type="radio" id ="two1" name = "str" value="14" onclick = "twoWipe(1);">14 </td> <!-- the wipe functions makes the radio buttons clear in two dimensions -->
			<td><input type="radio" id ="three1" name = "str" value="13" onclick = "threeWipe(1);">13 </td><!-- allows only one choice per row and column -->
			<td><input type="radio" id ="four1" name = "str" value="12" onclick = "fourWipe(1);">12 </td> 
			<td><input type="radio" id ="five1" name = "str" value="10" onclick = "fiveWipe(1);">10 </td> 
			<td><input type="radio" id ="six1" name = "str" value="8" onclick = "sixWipe(1);">8 </td> 
		</tr>
		<tr>
			<td>Dexterity: </td>
			<td><input type="radio" id ="one2" name = "dex" value="15" onclick = "oneWipe(2);">15</td>
			<td><input type="radio" id ="two2" name = "dex" value="14" onclick = "twoWipe(2);">14</td>
			<td><input type="radio" id ="three2" name = "dex" value="13" onclick = "threeWipe(2);">13</td>
			<td><input type="radio" id ="four2" name = "dex" value="12" onclick = "fourWipe(2);">12</td>
			<td><input type="radio" id ="five2" name = "dex" value="10" onclick = "fiveWipe(2);">10</td>
			<td><input type="radio" id ="six2" name = "dex" value="8" onclick = "sixWipe(2);">8</td>
		</tr>
		<tr>
			<td>Constitution:</td>
			<td><input type="radio" id ="one3" name = "con" value="15" onclick = "oneWipe(3);">15</td>
			<td><input type="radio" id ="two3" name = "con" value="14" onclick = "twoWipe(3);">14</td>
			<td><input type="radio" id ="three3" name = "con" value="13" onclick = "threeWipe(3);">13</td>
			<td><input type="radio" id ="four3" name = "con" value="12" onclick = "fourWipe(3);">12</td>
			<td><input type="radio" id ="five3" name = "con" value="10" onclick = "fiveWipe(3);">10</td>
			<td><input type="radio" id ="six3" name = "con"value="8" onclick = "sixWipe(3);">8</td>
		</tr>
		<tr>
			<td>Intelligence:</td>
			<td><input type="radio" id ="one4" name = "int" value="15" onclick = "oneWipe(4);">15</td>
			<td><input type="radio" id ="two4" name = "int" value="14" onclick = "twoWipe(4);">14</td>
			<td><input type="radio" id ="three4" name = "int" value="13" onclick = "threeWipe(4);">13</td>
			<td><input type="radio" id ="four4" name = "int" value="12" onclick = "fourWipe(4);">12</td>
			<td><input type="radio" id ="five4" name = "int" value="10" onclick = "fiveWipe(4);">10</td>
			<td><input type="radio" id ="six4" name = "int" value="8" onclick = "sixWipe(4);">8</td>
		</tr>
		<tr>
			<td>Wisdom:</td>     
			<td><input type="radio" id ="one5" name = "wis" value="15" onclick = "oneWipe(5);">15</td>
			<td><input type="radio" id ="two5" name = "wis" value="14" onclick = "twoWipe(5);">14</td>
			<td><input type="radio" id ="three5" name = "wis" value="13" onclick = "threeWipe(5);">13</td>
			<td><input type="radio" id ="four5" name = "wis" value="12" onclick = "fourWipe(5);">12</td>
			<td><input type="radio" id ="five5" name = "wis" value="10" onclick = "fiveWipe(5);">10</td>
			<td><input type="radio" id ="six5" name = "wis" value="8" onclick = "sixWipe(5);">8</td>
		</tr>
		<tr>
			<td>Charisma:</td>    
			<td><input type="radio" id ="one6" name = "cha" value="15" onclick = "oneWipe(6);">15</td>   
			<td><input type="radio" id ="two6" name = "cha" value="14" onclick = "twoWipe(6);">14</td>   
			<td><input type="radio" id ="three6" name = "cha" value="13" onclick = "threeWipe(6);">13</td>   
			<td><input type="radio" id ="four6" name = "cha" value="12" onclick = "fourWipe(6);">12</td>   
			<td><input type="radio" id ="five6" name = "cha" value="10" onclick = "fiveWipe(6);">10</td>   
			<td><input type="radio" id ="six6" name = "cha" value="8" onclick = "sixWipe(6);">8</td>   
		</tr>
		</table>
		</div>
		
		<div id="rightcolumn1"><!-- right collumn -->
		<b>your  points</b><br><!--  standard scores -->
		15
		<br>
		14
		<br>
		13
		<br>
		12
		<br>
		10
		<br>
		8

		</div>
		
		<div id = "submit">
		<input type="submit" id = "fixedbutton"><!-- submit button -->
		</div>	
		</form>
</body>
</html>