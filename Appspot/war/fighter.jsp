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
	int s1 = 0;//variables for choices
	int s2 = 0;
	boolean item1 = false;
	String i = "";
	String j = "";
	String k = "";
	String item2 = "";
	String item3 = "";
	boolean item4 = false;
	boolean item5 = false;
	int feature = 0;
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
		}catch(Exception e){
		}
	}
	if (request.getParameter("item1") != null) {
			i = request.getParameter("item1");
			if(i.equals("1")){
				item1 = true;//get chosen item as a boolean value
			}else{
				item1 = false;
			}
			flag1 = true;
	}
	if (request.getParameter("item2") != null) {
			item2 = request.getParameter("item2");//get chosen item 2
			flag2 =true;
	}
	if (request.getParameter("item3") != null) {
		item3 = request.getParameter("item3");//get chosen item 3
		flag3 =true;
	}
	if (request.getParameter("item4") != null) {
		j = request.getParameter("item4");
		if(j.equals("1")){
			item4 = true;//get chosen item 4 as a boolean value
		}else{
			item4 = false;
		}
		flag4 = true;
	}
	if (request.getParameter("item5") != null) {
		k = request.getParameter("item5");
		if(j.equals("1")){
			item5 = true;//get chosen item 5 as a boolean value
		}else{
			item5 = false;
		}
		flag5 = true;
	}	
	if (request.getParameter("feat") != null) {
		feature = Integer.parseInt(request.getParameter("feat"));//get fighter feature as an integer
		flag6 = true;
	}
	if(flag1 == true && flag2 == true && flag3 == true
			&& flag4 == true && flag5 == true && flag6 == true){//if all choices are made
		player.fighter(s1, s2, item1, item2, item3, item4, item5, feature);//fighter setter with all parameters
		player.processingFinal();//final processing
		session.setAttribute("player7", player);
		response.sendRedirect("sheet.jsp");//redirect to confirmation page
	}
	%>
<div id="navcontainer"><!-- naviagtion bar -->
		<ul class="navigation">
			<li id="active"><a href="race.jsp">Character Creator</a></li>
			<li><a href="CharacterViewer.jsp" id="current">Character Viewer</a></li>
		</ul>
	</div>

<h1>Bram's character creator</h1>
	<h2>
		Fighter
		</h2>
	<form>
	<div id = "align">
	<h3>Skills:</h3>
	<b>choose two skills:</b><br><!-- checkbox for proficiencies, function limits to two choices -->
	<input type="checkbox" name="skill"  value="1"onclick = "checkboxlimit(skill,2);">acrobatics
	<input type="checkbox" name="skill"  value="2" onclick = "checkboxlimit(skill,2);">animal handling
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,2);">athletics
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,2);">history
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,2);">insight
	<input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,2);">intimidation
	<input type="checkbox" name="skill"  value="7"onclick = "checkboxlimit(skill,2);">perception
	<input type="checkbox" name="skill"  value="8"onclick = "checkboxlimit(skill,2);">survival<br>
	<br>
	<div id = "one"></div>
	<h3>Equipment:</h3>
	<br><!-- item 1 radio buttons -->
	<input type="radio" name="item1"  value="1">Chainmail <b> or </b>
	<input type="radio" name="item1"  value="0">Leather, longbow, and 20 arrows
	<br>
	<b>choose a martial weapon</b><br><!-- item 2 radio buttons -->
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
	<input type="radio" name="item2"  value="Blowgun">Blowgun
	<input type="radio" name="item2"  value="Crossbow, hand">Crossbow, hand
	<input type="radio" name="item2"  value="Crossbow, heavy">Crossbow, heavy
	<input type="radio" name="item2"  value="Longbow">Longbow
	<input type="radio" name="item2"  value="Net">Net<br>
	<br><b> and another martial weapon or a shield:</b><br><!-- item 3 radio buttons -->
	<input type="radio" name="item3"  value="">Shield
	<input type="radio" name="item3"  value="Battleaxe">Battleaxe
	<input type="radio" name="item3"  value="Flail">Flail
	<input type="radio" name="item3"  value="Glaive">Glaive
	<input type="radio" name="item3"  value="Greataxe">Greataxe 
	<input type="radio" name="item3"  value="Greatsword">Greatsword
	<input type="radio" name="item3"  value="Halberd">Halberd
	<input type="radio" name="item3"  value="Lance">Lance
	<input type="radio" name="item3"  value="Longsword">Longsword
	<input type="radio" name="item3"  value="Maul">Maul
	<input type="radio" name="item3"  value="Morningstar">Morningstar
	<input type="radio" name="item3"  value="Pike">Pike
	<input type="radio" name="item3"  value="Rapier">Rapier
	<input type="radio" name="item3"  value="Scimitar">Scimitar
	<input type="radio" name="item3"  value="Shortsword">Shortsword<br>
	<input type="radio" name="item3"  value="Trident">Trident
	<input type="radio" name="item3"  value="War pick">War pick
	<input type="radio" name="item3"  value="Warhammer">Warhammer
	<input type="radio" name="item3"  value="Whip">Whip
	<input type="radio" name="item3"  value="Blowgun">Blowgun
	<input type="radio" name="item3"  value="Crossbow, hand">Crossbow, hand
	<input type="radio" name="item3"  value="Crossbow, heavy">Crossbow, heavy
	<input type="radio" name="item3"  value="Longbow">Longbow
	<input type="radio" name="item3"  value="Net">Net<br>
	<br><b>choose one of the following:</b><br><!-- item 4 radio buttons -->
	<input type="radio" name="item4"  value="1">A light crossbow and 20 bolts <b> or </b>
	<input type="radio" name="item4"  value="0">two handaxes
	<br><b>choose a pack:</b><br><!-- item 5 radio button -->
	<input type="radio" name="item5"  value="1">A dungeoneer's pack <b> or </b>
	<input type="radio" name="item5"  value="0">An explorers pack
	<br><br>
	<b>choose a feature:</b><br><!-- feature radio buttons -->
	<input type="radio" name="feat"  value="1">Archery: +2 to ranged attack rolls <br>
	<input type="radio" name="feat"  value="2">Defence: +1 to AC<br>
	<input type="radio" name="feat"  value="3">Dueling: +2 to one handed melee attacks ( with no other weapons)<br>
	<input type="radio" name="feat"  value="4">Great weapon fighting: reroll 1's and 2's for damage with two handed weapons <br>
	<input type="radio" name="feat"  value="5">Protection: use your shield to give enemies in 5 ft disadvantage as a reaction <br>
	<input type="radio" name="feat"  value="6">Two-weapon fighting: add your ability modifier to weapons used in your off hand <br>
	<div id = "two"></div>
	<input type="submit" id = "fixedbutton"><!-- submit button -->
	</div>
	</form>
</body>
</html>