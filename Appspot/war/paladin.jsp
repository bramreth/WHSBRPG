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
boolean flag1 = false;
boolean flag2 = false;
boolean flag3 = false;
boolean flag4 = false;
boolean flag5 = false;

	int s1 = 0;//initialise choice variables
	int s2 = 0;
	String i1 = "";
	String i2 = "";
	String i3 = "";
	String i4 = "";
	boolean item4 = false;
	if (request.getParameter("skill") != null) {
		try{
			String[] a = request.getParameterValues("skill");
			s1 = Integer.parseInt(a[0]);//get proficviency choices
			s2 = Integer.parseInt(a[1]);
			flag1 = true;
		}catch(Exception e){
		}
	}
	if (request.getParameter("item1") != null) {
		i1 = request.getParameter("item1");//get item 1 choice
		flag2 = true;
	}
	if (request.getParameter("item2") != null) {
		i2 = request.getParameter("item2");//get item 2 choice
		flag3 = true;
	}
	if (request.getParameter("item3") != null) {
		i3 = request.getParameter("item3");//get item 3 choice
		flag4 = true;
	}
	if (request.getParameter("item4") != null) {
		i4 = request.getParameter("item4");//get item 4 choice
		if(i4.equals("1")){
			item4 = true;//convert to a boolean value
		}else{
			item4 = false;
		}
		flag5 = true;
	}
	if(flag1 == true && flag2 == true && flag3 == true && flag4 == true && flag5 == true){//if all choices are made
		player.paladin(s1, s2, i1, i2, i3, item4);//set to paladin with choice parameters
		player.processingFinal();//final processing
		session.setAttribute("player7", player);
		response.sendRedirect("sheet.jsp");//rdirect to final page
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
		Paladin
		</h2>
	<form>
	<div id = "align">
	<h3>Skills:</h3> 
	
	<p>choose two skills:</p><!-- proficiency checkbox with function limmiting to two options -->
	<input type="checkbox" name="skill"  value="1"onclick = "checkboxlimit(skill,2);">athletics
	<input type="checkbox" name="skill"  value="2" onclick = "checkboxlimit(skill,2);">insight
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,2);">intimidation
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,2);">medicine
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,2);">persuasion
	<input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,2);">religion<br>
	<br>
	<h3>Equipment:</h3>
	<p>choose a martial weapon</p><!-- item 1 radio buttons -->
	<input type="radio" name="item1"  value="Battleaxe">Battleaxe
	<input type="radio" name="item1"  value="Flail">Flail
	<input type="radio" name="item1"  value="Glaive">Glaive
	<input type="radio" name="item1"  value="Greataxe">Greataxe 
	<input type="radio" name="item1"  value="Greatsword">Greatsword
	<input type="radio" name="item1"  value="Halberd">Halberd
	<input type="radio" name="item1"  value="Lance">Lance
	<input type="radio" name="item1"  value="Longsword">Longsword
	<input type="radio" name="item1"  value="Maul">Maul
	<input type="radio" name="item1"  value="Morningstar">Morningstar
	<input type="radio" name="item1"  value="Pike">Pike
	<input type="radio" name="item1"  value="Rapier">Rapier
	<input type="radio" name="item1"  value="Scimitar">Scimitar
	<input type="radio" name="item1"  value="Shortsword">Shortsword<br>
	<input type="radio" name="item1"  value="Trident">Trident
	<input type="radio" name="item1"  value="War pick">War pick
	<input type="radio" name="item1"  value="Warhammer">Warhammer
	<input type="radio" name="item1"  value="Whip">Whip
	<p>choose a shield or another martial weapon</p><!-- item 2 radio buttons -->
	<input type="radio" name="item2"  value="">Shield
	<input type="radio" name="item2"  value="Battleaxe">Battleaxe
	<input type="radio" name="item2"  value="Flail">Flail
	<input type="radio" name="item2"  value="Glaive">Glaive
	<input type="radio" name="item2"  value="Greataxe">Greataxe 
	<input type="radio" name="item2"  value="Greatsword">Greatsword
	<input type="radio" name="item2"  value="Halberd">Halberd
	<input type="radio" name="item2"  value="Lance">Lance
	<input type="radio" name="item2"  value="Longsword">Longsword
	<input type="radio" name="item2"  value="Maul">Maul
	<input type="radio" name="item2"  value="Morningstar">Morningstar
	<input type="radio" name="item2"  value="Pike">Pike
	<input type="radio" name="item2"  value="Rapier">Rapier
	<input type="radio" name="item2"  value="Scimitar">Scimitar
	<input type="radio" name="item2"  value="Shortsword">Shortsword<br>
	<input type="radio" name="item2"  value="Trident">Trident
	<input type="radio" name="item2"  value="War pick">War pick
	<input type="radio" name="item2"  value="Warhammer">Warhammer
	<input type="radio" name="item2"  value="Whip">Whip
	<p>choose five javelins or a simple melee weapon</p><!-- item 3 radio buttons -->
	<input type="radio" name="item3"  value="">Five javelins
	<input type="radio" name="item3"  value="Club">Club
	<input type="radio" name="item3"  value="Dagger">Dagger
	<input type="radio" name="item3"  value="Greatclub">Greatclub
	<input type="radio" name="item3"  value="Javelin">Javelin
	<input type="radio" name="item3"  value="Light hammer">Light hammer
	<input type="radio" name="item3"  value="Mace">Mace
	<input type="radio" name="item3"  value="Quaterstaff">Quaterstaff
	<input type="radio" name="item3"  value="Sickle">Sickle
	<input type="radio" name="item3"  value="Spear">Spear
	<p>choose a pack:</p><!-- item 4 radio buttons -->
	<input type="radio" name="item4"  value="1">A priest's pack <b> or </b>
	<input type="radio" name="item4"  value="0">An explorers pack<br><br>
	<input type="submit" id = "fixedbutton">
	</div>
	</form>
</body>
</html>