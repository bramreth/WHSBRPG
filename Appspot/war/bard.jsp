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
	coursework player = (coursework)session.getAttribute("player6");//import latest object
	int s1 = 0;//initialise choice variables
	int s2 = 0;
	int s3 = 0;
	String i1 = "";
	String i2 = "";
	String i3 = "";
	String item1 = "";
	String item2 = "";
	String inst = "";
	boolean flag1 = false;
	boolean flag2 = false;
	boolean flag3 = false;
	boolean flag4 = false;
	boolean flag5 = false;
	if (request.getParameter("skill") != null) {
		String[] a = request.getParameterValues("skill");
		s1 = Integer.parseInt(a[0]);//set 3 skill choices
		s2 = Integer.parseInt(a[1]);
		s3 = Integer.parseInt(a[2]);
		flag1 = true;
	}
	if (request.getParameter("inst") != null) {
		try{
			String[] b = request.getParameterValues("inst");
			i1 = b[0];//set 3 instrument proficiencies
			i2 = b[1];
			i3 = b[2];
			flag2 = true;
		}catch(Exception e){
		}
	}
	if (request.getParameter("item1") != null) {
			item1 = request.getParameter("item1");//set first item choice
			flag3 = true;
	}
	if (request.getParameter("item2") != null) {
			item2 = request.getParameter("item2");//set second item choice
			flag4 =true;
	}
	if (request.getParameter("instI") != null) {
		inst = request.getParameter("instI");//set instrument the bard gets
		flag5 =true;
}
	
	if(flag1 == true && flag2 == true && flag3 == true && flag4 == true && flag5 == true){//if all flags for choices are true
		player.bard(i1, i2, i3, s1, s2, s3, item1, item2, inst);//bard setter method with choice parameters
		player.processingFinal();//process all choices to finalise sheet
		session.setAttribute("player7", player);//set final object
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
		Bard
		</h2>
	<form>
	<div id = "align">
	<h3>Skills:</h3>
	<b>choose three skills:</b><br><!-- skill checkbox with thre options -->
	<input type="checkbox" name="skill"  value="1" onclick = "checkboxlimit(skill,3);">athletics
	<input type="checkbox" name="skill"  value="2"onclick = "checkboxlimit(skill,3);">acrobatics
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,3);">sleight of hand
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,3);">stealth
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,3);">arcana
	<input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,3);">history
	<input type="checkbox" name="skill"  value="7" onclick = "checkboxlimit(skill,3);">investigation
	<input type="checkbox" name="skill"  value="8"onclick = "checkboxlimit(skill,3);">nature
	<input type="checkbox" name="skill"  value="9"onclick = "checkboxlimit(skill,3);">religion
	<input type="checkbox" name="skill"  value="10"onclick = "checkboxlimit(skill,3);">animal handling<br>
	<input type="checkbox" name="skill"  value="11"onclick = "checkboxlimit(skill,3);">insight
	<input type="checkbox" name="skill"  value="12"onclick = "checkboxlimit(skill,3);">medicine
	<input type="checkbox" name="skill"  value="13" onclick = "checkboxlimit(skill,3);">perception
	<input type="checkbox" name="skill"  value="14"onclick = "checkboxlimit(skill,3);">survival
	<input type="checkbox" name="skill"  value="15"onclick = "checkboxlimit(skill,3);">deception
	<input type="checkbox" name="skill"  value="16"onclick = "checkboxlimit(skill,3);">intimidation
	<input type="checkbox" name="skill"  value="17"onclick = "checkboxlimit(skill,3);">performance
	<input type="checkbox" name="skill"  value="18"onclick = "checkboxlimit(skill,3);">persuasion
	<br><br>
	<b>choose three instruments:</b><br><!-- instrument checkbox with three options -->
	<input type="checkbox" name="inst"  value="Bagpipes" onclick = "checkboxlimit(inst,3);">Bagpipes
	<input type="checkbox" name="inst"  value="Drum"onclick = "checkboxlimit(inst,3);">Drum
	<input type="checkbox" name="inst"  value="Dulcimer"onclick = "checkboxlimit(inst,3);">Dulcimer
	<input type="checkbox" name="inst"  value="Flute"onclick = "checkboxlimit(inst,3);">Flute
	<input type="checkbox" name="inst"  value="Lute"onclick = "checkboxlimit(inst,3);">Lute
	<input type="checkbox" name="inst"  value="Lyre"onclick = "checkboxlimit(inst,3);">Lyre
	<input type="checkbox" name="inst"  value="Horn"onclick = "checkboxlimit(inst,3);">Horn
	<input type="checkbox" name="inst"  value="Pan Flute"onclick = "checkboxlimit(inst,3);">Pan Flute
	<input type="checkbox" name="inst"  value="Shawm"onclick = "checkboxlimit(inst,3);">Shawm
	<input type="checkbox" name="inst"  value="Viol"onclick = "checkboxlimit(inst,3);">Viol<br>
	<br><br>
	<b>choose a rapier, a longsword or a simple weapon:</b><br><!-- item 1 radio buttons -->
	<input type="radio" name="item1"  value="Rapier">Rapier
	<input type="radio" name="item1"  value="Longsword">Longsword
	<input type="radio" name="item1"  value="Club">Club
	<input type="radio" name="item1"  value="Dagger">Dagger
	<input type="radio" name="item1"  value="Greatclub">Greatclub
	<input type="radio" name="item1"  value="Javelin">Javelin
	<input type="radio" name="item1"  value="Light hammer">Light hammer
	<input type="radio" name="item1"  value="Mace">Mace
	<input type="radio" name="item1"  value="Quaterstaff">Quaterstaff
	<input type="radio" name="item1"  value="Sickle">Sickle<br>
	<input type="radio" name="item1"  value="Spear">Spear
	<input type="radio" name="item1"  value="Crossbow, light">Crossbow, light
	<input type="radio" name="item1"  value="Dart">Dart
	<input type="radio" name="item1"  value="Shortbow">Shortbow
	<input type="radio" name="item1"  value="Sling">Sling
	<br><br>
	<b>choose a diplomat's pack or entertainer's pack:</b><br><!-- item 2 radio buttons -->
	<input type="radio" name="item2"  value="diplomat's pack">diplomat's pack
	<input type="radio" name="item2"  value="entertainer's pack">entertainer's pack
	<br><br>
	<b>choose an instruments:</b><br><!-- instrument item radio button -->
	<input type="radio" name="instI"  value="Bagpipes">Bagpipes
	<input type="radio" name="instI"  value="Drum">Drum
	<input type="radio" name="instI"  value="Dulcimer">Dulcimer
	<input type="radio" name="instI"  value="Flute">Flute
	<input type="radio" name="instI"  value="Lute">Lute
	<input type="radio" name="instI"  value="Lyre">Lyre
	<input type="radio" name="instI"  value="Horn">Horn
	<input type="radio" name="instI"  value="Pan Flute">Pan Flute
	<input type="radio" name="instI"  value="Shawm">Shawm
	<input type="radio" name="instI"  value="Viol">Viol<br>
	<br><br>
	<input type="submit" id = "fixedbutton"><!-- submit button -->
	</div>
	</form>
</body>
</html>