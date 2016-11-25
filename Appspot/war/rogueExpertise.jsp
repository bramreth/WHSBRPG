<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">

<script src="valid.js"></script><!-- import validation function -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
<% 
	session.getAttribute("tempPlayer");
	coursework player = (coursework)session.getAttribute("tempPlayer");//get latest object
	int e1 = 0;//choice variables inititalised
	int e2 = 0;
	boolean flag1 = false;
	if (request.getParameter("skill") != null) {
		String[] a = request.getParameterValues("skill");
		e1 = Integer.parseInt(a[0]);//get two selected expertises
		e2 = Integer.parseInt(a[1]);
		flag1 = true;
	}
	if(flag1){//if expertises are chosen
		player.expertise(e1, e2);//run expertise method exclusive to rogues
		player.processingFinal();//finalise processing
		session.setAttribute("player7", player);
		response.sendRedirect("sheet.jsp");//redirect to finalise page
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
		Rogue</h2>
	<form>
	<h3>expertise:</h3>
	<div id = "align">
	<b>choose two skills:</b><br><br><!-- user chooses a skill they are already proficient in -->
	<% if(player.acrobatics){%><input type="checkbox" name="skill"  value="1"onclick = "checkboxlimit(skill,2);">acrobatics<%} %>
	<!-- the if statements only display the option if the user is already proficient with the skill -->
	<% if(player.animalHandling){%><input type="checkbox" name="skill"  value="2" onclick = "checkboxlimit(skill,2);">animal handling<%} %>
	<!-- any skill the user picks gets its proficiency bonus doubled -->
	<% if(player.arcana){%><input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,2);">arcana<%} %>
	<% if(player.athletics){%><input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,2);">athletics<%} %>
	<% if(player.deception){%><input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,2);">deception<%} %>
	<% if(player.history){%><input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,2);">history<%} %>
	<% if(player.insight){%><input type="checkbox" name="skill"  value="7"onclick = "checkboxlimit(skill,2);">insight<%} %>
	<% if(player.intimidation){%><input type="checkbox" name="skill"  value="8"onclick = "checkboxlimit(skill,2);">intimidation<%} %>
	<% if(player.investigation){%><input type="checkbox" name="skill"  value="9"onclick = "checkboxlimit(skill,2);">investigation<%} %>
	<% if(player.medicine){%><input type="checkbox" name="skill"  value="10"onclick = "checkboxlimit(skill,2);">medicine<%} %>
	<% if(player.nature){%><input type="checkbox" name="skill"  value="11"onclick = "checkboxlimit(skill,2);">nature<%} %>
	<% if(player.perception){%><input type="checkbox" name="skill"  value="12"onclick = "checkboxlimit(skill,2);">perception<%} %>
	<% if(player.performance){%><input type="checkbox" name="skill"  value="13"onclick = "checkboxlimit(skill,2);">performance<%} %>
	<% if(player.persuasion){%><input type="checkbox" name="skill"  value="14"onclick = "checkboxlimit(skill,2);">persuasion<%} %>
	<% if(player.religion){%><input type="checkbox" name="skill"  value="15"onclick = "checkboxlimit(skill,2);">religion<%} %>
	<% if(player.sleightOfHand){%><input type="checkbox" name="skill"  value="16"onclick = "checkboxlimit(skill,2);">sleight of hand<%} %>
	<% if(player.stealth){%><input type="checkbox" name="skill"  value="17"onclick = "checkboxlimit(skill,2);">stealth<%} %>
	<% if(player.survival){%><input type="checkbox" name="skill"  value="18"onclick = "checkboxlimit(skill,2);">survival<%} %>
	<br><br>
	<input type="submit" id = "fixedbutton"><!-- submit choices -->
	</div>
	</form>
</body>
</html>

