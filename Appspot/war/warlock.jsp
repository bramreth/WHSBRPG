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
coursework player = (coursework)session.getAttribute("player6");//latest object
int s1 = 0;//initialise choice variables
int s2 = 0;
String item1 = "";
String item2 = "";
String item3 = "";
String item4 = "";
int patron = 0;
boolean flag1 = false;
boolean flag2 = false;
boolean flag3 = false;
boolean flag4 = false;
boolean flag5 = false;
boolean flag6 = false;
	if (request.getParameter("skill") != null) {
		try{
			String[] a = request.getParameterValues("skill");
			s1 = Integer.parseInt(a[0]);//get chosen proficiencies
			s2 = Integer.parseInt(a[1]);
			flag1 = true;
		}catch(Exception e){
		}
	}
	if (request.getParameter("item1") != null) {
			item1 = request.getParameter("item1");//get item 1
			flag2 = true;
	}
	if (request.getParameter("item2") != null) {
			item2 = request.getParameter("item2");//get item 2
			flag3 =true;
	}
	if (request.getParameter("item3") != null) {
		item3 = request.getParameter("item3");//get item 3
		flag4 =true;
	}
	if (request.getParameter("item4") != null) {
		item4 = request.getParameter("item4");//get item 4
		flag5 =true;
	}
	if (request.getParameter("patron") != null) {
		patron = Integer.parseInt(request.getParameter("patron"));//get chosen patron
		flag6 =true;
	}
	if(flag1 == true && flag2 == true && flag3 == true && flag4 == true && flag5 == true && flag6 == true){//if all choices are made
		player.warlock(s1,s2,item1,item2,item3,item4,patron);//set as warlock with chosen parameters
		player.processingFinal();//process character sheet
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
		Warlock
		</h2>
	<form>
	<div id = "align">
	<h3>Skills:</h3>
	<b>choose two skills:</b><br><!-- proficiency checkbox with a max of two choices -->
	<input type="checkbox" name="skill"  value="1" onclick = "checkboxlimit(skill,2);">arcana
	<input type="checkbox" name="skill"  value="2"onclick = "checkboxlimit(skill,2);">deception
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,2);">history
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,2);">intimidation
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,2);">investigation
	<input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,2);">nature
	<input type="checkbox" name="skill"  value="7"onclick = "checkboxlimit(skill,2);">religion<br>
	<br>
	<h3>Equipment:</h3><!-- item 1 radio buttons -->
	<p>choose a light crossbow and 20 bolts or a simple weapon:</p>
	<input type="radio" name="item1"  value=", A light crossbow and 20 bolts">A light crossbow and 20 bolts 
	<input type="radio" name="item1"  value=", Club">Club
	<input type="radio" name="item1"  value=", Dagger">Dagger
	<input type="radio" name="item1"  value=", Greatclub">Greatclub
	<input type="radio" name="item1"  value=", Javelin">Javelin
	<input type="radio" name="item1"  value=", Light hammer">Light hammer
	<input type="radio" name="item1"  value=", Mace">Mace
	<input type="radio" name="item1"  value=", Quaterstaff">Quaterstaff
	<input type="radio" name="item1"  value=", Sickle">Sickle
	<input type="radio" name="item1"  value=", Spear">Spear
	<input type="radio" name="item1"  value=", Crossbow, light">Crossbow, light
	<input type="radio" name="item1"  value=", Dart">Dart
	<input type="radio" name="item1"  value=", Shortbow">Shortbow
	<input type="radio" name="item1"  value=", Sling">Sling
	<p>choose a simple weapon:</p><!-- item 2 radio buttons -->
	<input type="radio" name="item2"  value=", Club">Club
	<input type="radio" name="item2"  value=", Dagger">Dagger
	<input type="radio" name="item2"  value=", Greatclub">Greatclub
	<input type="radio" name="item2"  value=", Javelin">Javelin
	<input type="radio" name="item2"  value=", Light hammer">Light hammer
	<input type="radio" name="item2"  value=", Mace">Mace
	<input type="radio" name="item2"  value=", Quaterstaff">Quaterstaff
	<input type="radio" name="item2"  value=", Sickle">Sickle
	<input type="radio" name="item2"  value=", Spear">Spear
	<input type="radio" name="item2"  value=", Crossbow, light">Crossbow, light
	<input type="radio" name="item2"  value=", Dart">Dart
	<input type="radio" name="item2"  value=", Shortbow">Shortbow
	<input type="radio" name="item2"  value=", Sling">Sling
	<p>choose a component pouch or an arcane focus:</p><!-- item 3 radio buttons -->
	<input type="radio" name="item3"  value=", component pouch">component pouch <b> or </b>
	<input type="radio" name="item3"  value=", arcane focus">arcane focus
	<p>pack:</p><!-- item 4 radio buttons -->
	<input type="radio" name="item4"  value=", scholar's pack">scholar's pack <b> or </b>
	<input type="radio" name="item4"  value=", dungeoneer's pack">dungeoneer's pack
	<p>choose an otherworldly patron:</p><!-- patron radio buttons -->
	<input type="radio" name="patron"  value="0"onclick = "">Archfey
	<input type="radio" name="patron"  value="1"onclick = "">Fiend
	<input type="radio" name="patron"  value="2"onclick = "">Great Old One
	<br><br>
	<input type="submit" id = "fixedbutton"><!-- submit button -->
	</div>
	</form>
</body>
</html>