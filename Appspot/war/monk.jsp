<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script>

</script>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">

<script src="valid.js"></script><!-- import checkbox validation -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>

<% 
	session.getAttribute("player6");
	coursework player = (coursework)session.getAttribute("player6");//get latest object
	boolean flag1 = false;
	boolean flag2 = false;
	boolean flag3 = false;
	boolean flag4 = false;
	int s1 = 0;
	int s2 = 0;
	String i = "";
	String item1 = "";
	String item2 = "";
	if (request.getParameter("i") != null) {
			i = request.getParameter("i");//get chosen item 1
			flag1 = true;
	}
	if (request.getParameter("skill") != null) {
		try{
			String[] a = request.getParameterValues("skill");
			s1 = Integer.parseInt(a[0]);//get chosen proficiencies
			s2 = Integer.parseInt(a[1]);
			flag2 = true;
		}catch(Exception e){
		}
	}
	if (request.getParameter("item1") != null) {
		item1 = request.getParameter("item1");//get item1 choice
		flag3 = true;
	}
	if (request.getParameter("item2") != null) {
		item2 = request.getParameter("item2");//get item2 choice
		flag4 = true;
	}
	if(flag1 == true && flag2 == true && flag3 == true && flag4 == true){
		player.monk(i, s1, s2, item1, item2);//monk setter with choice parameters
		player.processingFinal();//process character sheet
		session.setAttribute("player7", player);
		response.sendRedirect("sheet.jsp");
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
		Monk
		</h2>
	<form>
	<div id = "align">
	<h3>Skills:</h3> 
	<p>choose an artisans tool or instrument:</p><!-- i radio buttons -->
	<input type="radio" name="i"  value="Alchemist's supplies">alchemist's supplies
	<input type="radio" name="i"  value="Brewer's supplies">Brewer's supplies
	<input type="radio" name="i"  value="Calligrapher's supplies">Calligrapher's supplies
	<input type="radio" name="i"  value="Carpenter's tools">Carpenter's tools
	<input type="radio" name="i"  value="Carpenter's tools">Carpenter's tools
	<input type="radio" name="i"  value="Cartographer's tools">Cartographer's tools
	<input type="radio" name="i"  value="Cobbler's tools">Cobbler's tools
	<input type="radio" name="i"  value="Cook's utensil's">Cook's utensil's
	<input type="radio" name="i"  value="Glassblower's tools">Glassblower's tools
	<input type="radio" name="i"  value="Jeweler's tools">Jeweler's tools<br>
	<input type="radio" name="i"  value="Leatherworker's tools">Leatherworker's tools
	<input type="radio" name="i"  value="Mason's tools">Mason's tools
	<input type="radio" name="i"  value="Painter's supplies">Painter's supplies
	<input type="radio" name="i"  value="Potter's tools">Potter's tools
	<input type="radio" name="i"  value="Smith's tools">Smith's tools
	<input type="radio" name="i"  value="Tinker's tools">Tinker's tools
	<input type="radio" name="i"  value="Weaver's tools">Weaver's tools
	<input type="radio" name="i"  value="Woodcarver's tools">woodcarver's tools<br>
	<input type="radio" name="i"  value="Bagpipes">Bagpipes
	<input type="radio" name="i"  value="Drum">Drum
	<input type="radio" name="i"  value="Dulcimer">Dulcimer
	<input type="radio" name="i"  value="Flute">Flute
	<input type="radio" name="i"  value="Lute">Lute
	<input type="radio" name="i"  value="Lyre">Lyre
	<input type="radio" name="i"  value="Horn">Horn
	<input type="radio" name="i"  value="Pan flute">Pan flute
	<input type="radio" name="i"  value="Shawm">Shawm
	<input type="radio" name="i"  value="Viol">Viol
	
	<p>choose two skills:</p><!-- proficiency radio buttons, two choices -->
	<input type="checkbox" name="skill"  value="1"onclick = "checkboxlimit(skill,2);">acrobatics
	<input type="checkbox" name="skill"  value="2" onclick = "checkboxlimit(skill,2);">athletics
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,2);">history
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,2);">insight
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,2);">religion
	<input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,2);">stealth<br>
	<br>
	<h3>Equipment:</h3>
	
	<p>choose a shortsword or simple weapon</p><!-- item 1 radio buttons -->
	<input type="radio" name="item1"  value="">shortsword
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
	
	<p>choose a pack:</p><!-- item 2 radio buttons -->
	<input type="radio" name="item2"  value="1">A dungeoneer's pack <b> or </b>
	<input type="radio" name="item2"  value="0">An explorers pack
	<input type="submit" id = "fixedbutton">
	</div>
	</form>
</body>
</html>