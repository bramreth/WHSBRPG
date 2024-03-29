<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<script src="valid.js"></script><!-- import checkbox validation -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>

<% 
	session.getAttribute("player6");
	coursework player = (coursework)session.getAttribute("player6");//get latest objec
	int s1 = 0;//initialise choice variables
	int s2 = 0;
	String i1 ="";
	String i2 ="";
	boolean flag1 = false;
	boolean flag2 = false;
	boolean flag3 = false;
	if (request.getParameter("skill") != null) {
		try{
		String[] a = request.getParameterValues("skill");//get two chosen proficiencies
		s1 = Integer.parseInt(a[0]);
		s2 = Integer.parseInt(a[1]);
		flag1 = true;
		}catch(Exception e){
		}
	}
	if (request.getParameter("item1") != null) {
			i1 = request.getParameter("item1");//get item 1
			flag2 = true;
	}
	if (request.getParameter("item2") != null) {
		i2 = request.getParameter("item2");//get item 2
		flag3 = true;
	}
	if(flag1 == true && flag2 == true && flag3 == true){//if all choices are made
		player.druid(s1, s2, i1, i2);//druid setter with parameters
		player.processingFinal();//final processing method
		session.setAttribute("player7", player);
		response.sendRedirect("sheet.jsp");//redirect to finalisation page
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
		Druid
		</h2>
	<form>
	<div id = "align">
	<h3>Skills:</h3>
	<b>choose two skills:</b><br><!-- proficiency checkbox choices, must make 2 -->
	<input type="checkbox" name="skill"  value="1"onclick = "checkboxlimit(skill,2);">arcana
	<input type="checkbox" name="skill"  value="2" onclick = "checkboxlimit(skill,2);">animal handling
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,2);">insight
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,2);">medicine
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,2);">nature
	<input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,2);">perception
	<input type="checkbox" name="skill"  value="7"onclick = "checkboxlimit(skill,2);">religion
	<input type="checkbox" name="skill"  value="8"onclick = "checkboxlimit(skill,2);">survival<br>
	<br>
	<h3>Equipment:</h3>
	<br><!-- 1st item choice radio buttons -->
	<p>choose a wooden shield or simple weapon</p>
	<input type="radio" name="item1"  value=""> a Wooden shield 
	<input type="radio" name="item1"  value="Club">Club
	<input type="radio" name="item1"  value="Dagger">Dagger
	<input type="radio" name="item1"  value="Greatclub">Greatclub
	<input type="radio" name="item1"  value="Javelin">Javelin
	<input type="radio" name="item1"  value="Light hammer">Light hammer
	<input type="radio" name="item1"  value="Mace">Mace
	<input type="radio" name="item1"  value="Quaterstaff">Quaterstaff
	<input type="radio" name="item1"  value="Sickle">Sickle
	<input type="radio" name="item1"  value="Spear">Spear
	<input type="radio" name="item1"  value="Crossbow, light">Crossbow, light
	<input type="radio" name="item1"  value="Dart">Dart
	<input type="radio" name="item1"  value="Shortbow">Shortbow
	<input type="radio" name="item1"  value="Sling">Sling
	<br><!-- second choice radio buttons -->
	<p>choose a scimitar or simple melee weapon</p>
	<input type="radio" name="item2"  value=""> a Scimitar
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
	<br>
	<input type="submit" id = "fixedbutton"><!-- submit button -->
	</div>
	</form>
</body>
</html>