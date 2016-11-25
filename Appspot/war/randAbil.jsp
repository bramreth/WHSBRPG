<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">

<script src="validRadio.js"></script><!-- imports a funcion to make the radio buttons work in two dimentions -->
<% 
	session.getAttribute("player5");//import latest object
	coursework player = (coursework)session.getAttribute("player5");
	int point1 = processing.rand4D6();//genetarte the players 6 dice rolls for ability scores
	int point2 = processing.rand4D6();
	int point3 = processing.rand4D6();
	int point4 = processing.rand4D6();
	int point5 = processing.rand4D6();
	int point6 = processing.rand4D6();
	int st = 0;//initialise the values that will be appended to the object
	int de = 0;
	int co = 0;
	int in = 0;
	int wi = 0;
	int ch = 0;
int check;//counter
boolean[] flag = {false, false, false, false, false, false};//array of flags to check all 6 choices have been made
if (request.getParameter("str") != null) {
	st = Integer.parseInt(request.getParameter("str"));//set the str to the value selected in the radio buttons for str
	flag[0] = true;//set first flag to true
}
if (request.getParameter("dex") != null) {
	de = Integer.parseInt(request.getParameter("dex"));//set the dex to the chosen value
	flag[1] = true;//second flag true
}
if (request.getParameter("con") != null) {
	co = Integer.parseInt(request.getParameter("con"));//set the constitution to the chosen value
	flag[2] = true;//third flag true
}
if (request.getParameter("int") != null) {
	in = Integer.parseInt(request.getParameter("int"));//set the intelligence to the chosen value
	flag[3] = true;//fourth flag true
}
if (request.getParameter("wis") != null) {
	wi = Integer.parseInt(request.getParameter("wis"));//set the widom to the chosen value
	flag[4] = true;//fith flag true
}
if (request.getParameter("cha") != null) {
	ch = Integer.parseInt(request.getParameter("cha"));//set the charisma to the chosen value
	flag[5] = true;//sixth flag true
}

check = 0;
for(int x=0; x<6; x++){
	if(flag[x] == true){
		check++;//if all the flags are true this value will be 6
	}
	if(check == 6){//if all the flags are true
		player.seta1(st);//add the chosen strength to the players current strength
		player.seta2(de);//add the chosen dexterity
		player.seta3(co);//add the chosen constitution
		player.seta4(in);//add the chosen intelligence
		player.seta5(wi);//add the chosen wisdom
		player.seta6(ch);//add the chosen charisma
		session.setAttribute("player6", player);//set latest object
		response.sendRedirect("class.jsp");//redirect
	}
}
%>
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
<h1>Bram's character creator</h1>
	<h2>
		Random
		</h2>
		<form>
		<div id="control">
		<div id="leftcolumn1"><!-- left column -->
		<b>ability scores:</b>
		<table><!-- table for formatting -->
		<tr>
			<td>Strength:</td>   
			<td><input type="radio" id = "one1" name =  "str" value="<%=point1 %>" onclick = "oneWipe(1);"><%=point1 %> </td> <!-- put each random value as an option for each ability -->
			<td><input type="radio" id ="two1" name = "str" value="<%=point2 %>" onclick = "twoWipe(1);"><%=point2 %> </td> <!-- the function makes each row act like a radio button as well as the columns  -->
			<td><input type="radio" id ="three1" name = "str" value="<%=point3 %>" onclick = "threeWipe(1);"><%=point3 %> </td> <!-- the parameter of the function tells the js which row is checked -->
			<td><input type="radio" id ="four1" name = "str" value="<%=point4 %>" onclick = "fourWipe(1);"><%=point4 %> </td> 
			<td><input type="radio" id ="five1" name = "str" value="<%=point5 %>" onclick = "fiveWipe(1);"><%=point5 %> </td> 
			<td><input type="radio" id ="six1" name = "str" value="<%=point6 %>" onclick = "sixWipe(1);"><%=point6 %></td> 
		</tr>
		<tr>
			<td>Dexterity: </td>
			<td><input type="radio" id ="one2" name = "dex" value="<%=point1 %>" onclick = "oneWipe(2);"><%=point1 %></td>
			<td><input type="radio" id ="two2" name = "dex" value="<%=point2 %>" onclick = "twoWipe(2);"><%=point2 %></td>
			<td><input type="radio" id ="three2" name = "dex" value="<%=point3 %>" onclick = "threeWipe(2);"><%=point3 %></td>
			<td><input type="radio" id ="four2" name = "dex" value="<%=point4 %>" onclick = "fourWipe(2);"><%=point4 %></td>
			<td><input type="radio" id ="five2" name = "dex" value="<%=point5 %>" onclick = "fiveWipe(2);"><%=point5 %></td>
			<td><input type="radio" id ="six2" name = "dex" value="<%=point6 %>" onclick = "sixWipe(2);"><%=point6 %></td>
		</tr>
		<tr>
			<td>Constitution:</td>
			<td><input type="radio" id ="one3" name = "con" value="<%=point1 %>" onclick = "oneWipe(3);"><%=point1 %></td>
			<td><input type="radio" id ="two3" name = "con" value="<%=point2 %>" onclick = "twoWipe(3);"><%=point2 %></td>
			<td><input type="radio" id ="three3" name = "con" value="<%=point3 %>" onclick = "threeWipe(3);"><%=point3 %></td>
			<td><input type="radio" id ="four3" name = "con" value="<%=point4 %>" onclick = "fourWipe(3);"><%=point4 %></td>
			<td><input type="radio" id ="five3" name = "con" value="<%=point5 %>" onclick = "fiveWipe(3);"><%=point5 %></td>
			<td><input type="radio" id ="six3" name = "con"value="<%=point6 %>" onclick = "sixWipe(3);"><%=point6 %></td>
		</tr>
		<tr>
			<td>Intelligence:</td>
			<td><input type="radio" id ="one4" name = "int" value="<%=point1 %>" onclick = "oneWipe(4);"><%=point1 %></td>
			<td><input type="radio" id ="two4" name = "int" value="<%=point2 %>" onclick = "twoWipe(4);"><%=point2 %></td>
			<td><input type="radio" id ="three4" name = "int" value="<%=point3 %>" onclick = "threeWipe(4);"><%=point3 %></td>
			<td><input type="radio" id ="four4" name = "int" value="<%=point4 %>" onclick = "fourWipe(4);"><%=point4 %></td>
			<td><input type="radio" id ="five4" name = "int" value="<%=point5 %>" onclick = "fiveWipe(4);"><%=point5 %></td>
			<td><input type="radio" id ="six4" name = "int" value="<%=point6 %>" onclick = "sixWipe(4);"><%=point6 %></td>
		</tr>
		<tr>
			<td>Wisdom:</td>     
			<td><input type="radio" id ="one5" name = "wis" value="<%=point1 %>" onclick = "oneWipe(5);"><%=point1 %></td>
			<td><input type="radio" id ="two5" name = "wis" value="<%=point2 %>" onclick = "twoWipe(5);"><%=point2 %></td>
			<td><input type="radio" id ="three5" name = "wis" value="<%=point3 %>" onclick = "threeWipe(5);"><%=point3 %></td>
			<td><input type="radio" id ="four5" name = "wis" value="<%=point4 %>" onclick = "fourWipe(5);"><%=point4 %></td>
			<td><input type="radio" id ="five5" name = "wis" value="<%=point5 %>" onclick = "fiveWipe(5);"><%=point5 %></td>
			<td><input type="radio" id ="six5" name = "wis" value="<%=point6 %>" onclick = "sixWipe(5);"><%=point6 %></td>
		</tr>
		<tr>
			<td>Charisma:</td>    
			<td><input type="radio" id ="one6" name = "cha" value="<%=point1 %>" onclick = "oneWipe(6);"><%=point1 %></td>   
			<td><input type="radio" id ="two6" name = "cha" value="<%=point2 %>" onclick = "twoWipe(6);"><%=point2 %></td>   
			<td><input type="radio" id ="three6" name = "cha" value="<%=point3 %>" onclick = "threeWipe(6);"><%=point3 %></td>   
			<td><input type="radio" id ="four6" name = "cha" value="<%=point4 %>" onclick = "fourWipe(6);"><%=point4 %></td>   
			<td><input type="radio" id ="five6" name = "cha" value="<%=point5 %>" onclick = "fiveWipe(6);"><%=point5 %></td>   
			<td><input type="radio" id ="six6" name = "cha" value="<%=point6 %>" onclick = "sixWipe(6);"><%=point6 %></td>   
		</tr>
		</table>
		</div>
		
		
		
		
		<div id="rightcolumn1"><!-- right column -->
		<b>your random points</b><br><!-- outputs the set of points the user assigns to -->
		<%
		out.println(point1);
		%><br>
		<%
		out.println(point2);
		%><br>
		<%
		out.println(point3);
		%><br>
		<%
		out.println(point4);
		%><br>
		<%
		out.println(point5);
		%><br>
		<%
		out.println(point6);
		%>
		
		</div>
		</div>
		<br>
		<div id = "submit">
		<input type="submit" id = "fixedbutton"><!-- submit button -->
		</div>	
		</form>
</body>
</html>