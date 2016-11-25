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
coursework player = (coursework)session.getAttribute("player6");//get latest object
int s1 = 0;//initialise choice variables
int s2 = 0;
String item1 = "";
String item2 = "";
String item3 = "";
boolean flag1 = false;
boolean flag2 = false;
boolean flag3 = false;
boolean flag4 = false;
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
			item1 = request.getParameter("item1");//get item 1 choice
			flag2 = true;
	}
	if (request.getParameter("item2") != null) {
			item2 = request.getParameter("item2");//get item 2 choice
			flag3 =true;
	}
	if (request.getParameter("item3") != null) {
		item3 = request.getParameter("item3");//get item 3 choice
		flag4 =true;
	}
	if(flag1 == true && flag2 == true && flag3 == true && flag4 == true){//if all choices are made
		player.wizard(s1, s2, item1, item2, item3);//set player as a wizard with the chosen parameters
		player.processingFinal();//process sheet
		session.setAttribute("player7", player);
		response.sendRedirect("sheet.jsp");//redirect to the finalisation page
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
		Wizard
		</h2>
	<form>
	<div id = "align">
	<h3>Skills:</h3>
	<b>choose two skills:</b><br><!-- proficiency checkbox, max of two choices -->
	<input type="checkbox" name="skill"  value="1" onclick = "checkboxlimit(skill,2);">arcana
	<input type="checkbox" name="skill"  value="2"onclick = "checkboxlimit(skill,2);">history
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,2);">insight
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,2);">investigation
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,2);">medicine
	<input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,2);">religion<br>
	<br>
	<h3>Equipment:</h3>
	<p>choose a quaterstaff or dagger:</p><!-- item 1 radio butons -->
	<input type="radio" name="item1"  value=", quaterstaff"> quaterstaff 
	<input type="radio" name="item1"  value=", dagger">dagger
	<p>choose a component pouch or an arcane focus:</p><!-- item 2 radio buttons -->
	<input type="radio" name="item2"  value=", component pouch">component pouch <b> or </b>
	<input type="radio" name="item2"  value=", arcane focus">arcane focus
	<p>pack:</p><!-- item 3 radio buttons -->
	<input type="radio" name="item3"  value=", scholar's pack">scholar's pack <b> or </b>
	<input type="radio" name="item3"  value=", dungeoneer's pack">explorer's pack
	<br><br>
	<input type="submit" id = "fixedbutton"><!-- submit button -->
	</div>
	</form>
</body>
</html>