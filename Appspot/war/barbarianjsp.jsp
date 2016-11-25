<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="CourseworkApp.css">

<script src="valid.js"></script><!-- import checkbox validation function -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
<% 
session.getAttribute("player6");
coursework player = (coursework)session.getAttribute("player6");//get latest object
int s1 = 0;//initialise all  choice vairables
int s2 = 0;
String item1 = "";
String item2 = "";
boolean flag1 = false;
boolean flag2 = false;
boolean flag3 = false;
	if (request.getParameter("skill") != null) {
		try{
			String[] a = request.getParameterValues("skill");//get two skill options from the checkbox
			s1 = Integer.parseInt(a[0]);
			s2 = Integer.parseInt(a[1]);
			flag3 = true;
		}catch(Exception e){
		}
	}
	if (request.getParameter("item1") != null) {
			item1 = request.getParameter("item1");//get chosen item
			flag1 = true;//set flag for continue
	}
	if (request.getParameter("item2") != null) {
			item2 = request.getParameter("item2");//get second item
			flag2 =true;//set second flag
	}
	
	if(flag1 == true && flag2 == true && flag3 == true){
		player.barbaian(s1, s2, item1, item2);//set barbarian with parameters
		player.processingFinal();//runs the method to do all the final character sheet calculations
		session.setAttribute("player7", player);//set the final object
		response.sendRedirect("sheet.jsp");//redirect to confirmation page
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
		Barbarian
		</h2>
	<form>
	<div id = "align">
	<h3>Skills:</h3><!-- checkbox for proficient skills -->
	<b>choose two skills:</b><br>
	<input type="checkbox" name="skill"  value="1" onclick = "checkboxlimit(skill,2);">animal handling
	<input type="checkbox" name="skill"  value="2"onclick = "checkboxlimit(skill,2);">athletics
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,2);">intimidation
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,2);">nature
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,2);">perception
	<input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,2);">survival<br>
	<br>
	<h3>Equipment:</h3><!-- radio buttons for first item option -->
	<b>choose a martial weapon:</b><br>
	<input type="radio" name="item1"  value="Greataxe">Greataxe 
	<input type="radio" name="item1"  value="Battleaxe">Battleaxe
	<input type="radio" name="item1"  value="Flail">Flail
	<input type="radio" name="item1"  value="Glaive">Glaive
	<input type="radio" name="item1"  value="Greatsword">Greatsword
	<input type="radio" name="item1"  value="Halberd">Halberd
	<input type="radio" name="item1"  value="Lance">Lance
	<input type="radio" name="item1"  value="Longsword">Longsword
	<input type="radio" name="item1"  value="Maul">Maul
	<input type="radio" name="item1"  value="Morningstar">Morningstar
	<input type="radio" name="item1"  value="Pike">Pike
	<input type="radio" name="item1"  value="Rapier">Rapier
	<input type="radio" name="item1"  value="Scimitar">Scimitar
	<input type="radio" name="item1"  value="Shortsword">Shortsword
	<input type="radio" name="item1"  value="Trident">Trident
	<input type="radio" name="item1"  value="War pick">War pick
	<input type="radio" name="item1"  value="Warhammer">Warhammer
	<input type="radio" name="item1"  value="Whip">Whip
	<br><br>
	<b>choose two handaxes or a simple weapon:</b><br><!-- rdio buttons for second item option -->
	<input type="radio" name="item2"  value="Two handaxes">Two handaxes 
	<input type="radio" name="item2"  value="Club">Club
	<input type="radio" name="item2"  value="Dagger">Dagger
	<input type="radio" name="item2"  value="Greatclub">Greatclub
	<input type="radio" name="item2"  value="Javelin">Javelin
	<input type="radio" name="item2"  value="Light hammer">Light hammer
	<input type="radio" name="item2"  value="Mace">Mace
	<input type="radio" name="item2"  value="Quaterstaff">Quaterstaff
	<input type="radio" name="item2"  value="Sickle">Sickle
	<input type="radio" name="item2"  value="Spear">Spear
	<input type="radio" name="item2"  value="Crossbow, light">Crossbow, light
	<input type="radio" name="item2"  value="Dart">Dart
	<input type="radio" name="item2"  value="Shortbow">Shortbow
	<input type="radio" name="item2"  value="Sling">Sling
	<br><br>
	<input type="submit" id = "fixedbutton"><!-- submit button -->
	</div>
	</form>
</body>
</html>