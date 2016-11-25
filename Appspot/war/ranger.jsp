<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<script>

</script>

<script src="valid.js"></script><!-- import checkbox validation method -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
<% 
	session.getAttribute("player6");
	coursework player = (coursework)session.getAttribute("player6");//get latest object
	int s1 = 0;//initialise choice variables
	int s2 = 0;
	String i = "";
	boolean item1 = false;
	boolean item2 = false;
	String w1 = "";
	String w2 = "";
	String j = "";
	String favouredEnemy = "";
	boolean pack = false;
	boolean flag1 = false;
	boolean flag2 = false;
	boolean flag3 = false;
	boolean flag4 = false;
	boolean flag5 = false;

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
			i = request.getParameter("item1");
			if(i.equals("1")){
				item1 = true;//get item 1 as a boolean value
			}else{
				item1 = false;
			}
			flag2 = true;
	}
	if (request.getParameter("item2a") != null) {
		int s = Integer.parseInt(request.getParameter("item2a"));
		if(s == 1){
			item2 = true;//get item 2a as a boolean value, 
			flag3 = true;//either this or the two weapons are needed
		}
	}
	if (request.getParameter("item2") != null) {
		try{
			String[] w = request.getParameterValues("item2");
			w1 = w[0];//get item 2 as two weapons
			w2 = w[1];
			flag3 =true;//these or the shortsword
		}catch(Exception e){
		}
	}
	if (request.getParameter("item3") != null) {
		j = request.getParameter("item3");
		if(j.equals("1")){
			pack = true;//get item  as a boolean value
		}else{
			pack = false;
		}
		flag4 = true;
	}
	if (request.getParameter("enemy") != null) {
		favouredEnemy = request.getParameter("enemy");//get favoured enemy as an option
		flag5 = true;
	}
	else{
	if (request.getParameter("enemy1") != null) {
		favouredEnemy += request.getParameter("enemy1");//or get the two input humanoids as strings and concatonate them to submit
		favouredEnemy += ", ";
		if (request.getParameter("enemy2") != null) {
			favouredEnemy += request.getParameter("enemy2");
			flag5 = true;
		}
		}
	}
	if(flag1 == true && flag2 == true && flag3 == true&& flag4 == true && flag5 == true){//if all needed fields are input
		player.ranger(s1, s2, item1, w1, w2, pack, favouredEnemy);//set ranger with parameters
		player.processingFinal();//process
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
		Ranger
		</h2>
	<form>
	<div id = "align">
	<h3>Skills:</h3>
	<b>choose two skills:</b><br><!-- proficiency checkboxes with function limiting the number of choices to two -->
	<input type="checkbox" name="skill"  value="1"onclick = "checkboxlimit(skill,2);">animal handling
	<input type="checkbox" name="skill"  value="2" onclick = "checkboxlimit(skill,2);">athletics
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,2);">insight
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,2);">investigation
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,2);">nature
	<input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,2);">perception
	<input type="checkbox" name="skill"  value="7"onclick = "checkboxlimit(skill,2);">stealth
	<input type="checkbox" name="skill"  value="8"onclick = "checkboxlimit(skill,2);">survival<br>
	<br>
	<div id = "one"></div>
	<h3>Equipment:</h3><!-- item 1 radio buttons -->
	<br>
	<input type="radio" name="item1"  value="1">Scale mail <b> or </b>
	<input type="radio" name="item1"  value="0">Leather armor
	<br>
	<p>choose a shortsword or two simple weapons.</p><!-- choose this or two weapons -->
	<input type="checkbox" name="item2a"  value="1">two shortswords 
	<br><b>or</b><br>
	<input type="checkbox" name="item2"  value="Club"onclick = "checkboxlimit(item2,2);">Club<!-- two weapons checkbox -->
	<input type="checkbox" name="item2"  value="Dagger"onclick = "checkboxlimit(item2,2);">Dagger
	<input type="checkbox" name="item2"  value="Greatclub"onclick = "checkboxlimit(item2,2);">Greatclub
	<input type="checkbox" name="item2"  value="Javelin"onclick = "checkboxlimit(item2,2);">Javelin
	<input type="checkbox" name="item2"  value="Light hammer"onclick = "checkboxlimit(item2,2);">Light hammer
	<input type="checkbox" name="item2"  value="Mace"onclick = "checkboxlimit(item2,2);">Mace
	<input type="checkbox" name="item2"  value="Quaterstaff"onclick = "checkboxlimit(item2,2);">Quaterstaff
	<input type="checkbox" name="item2"  value="Sickle"onclick = "checkboxlimit(item2,2);">Sickle
	<input type="checkbox" name="item2"  value="Spear"onclick = "checkboxlimit(item2,2);">Spear
	<p>choose a pack:</p><!-- item 3 radio buttons -->
	<input type="radio" name="item3"  value="1">A dungeoneer's pack <b> or </b>
	<input type="radio" name="item3"  value="0">An explorers pack
	<p>choose a preferred enemy</p><!-- preffered enemy checkbox -->
	<input type="radio" name="enemy"  value="aberrations">aberrations
	<input type="radio" name="enemy"  value="beasts">beasts
	<input type="radio" name="enemy"  value="celestials">celestials
	<input type="radio" name="enemy"  value="constructs">constructs
	<input type="radio" name="enemy"  value="dragons">dragons
	<input type="radio" name="enemy"  value="elementals">elementals
	<input type="radio" name="enemy"  value="fey">fey
	<input type="radio" name="enemy"  value="fiends">fiends
	<input type="radio" name="enemy"  value="giants">giants
	<input type="radio" name="enemy"  value="monstrosities">monstrosities
	<input type="radio" name="enemy"  value="oozes">oozes
	<input type="radio" name="enemy"  value="plants">plants
	<input type="radio" name="enemy"  value="undead">undead
	<br><b>or two humanoid races: </b>(such as gnolls, orcs or humans)<br><!-- preferred enemy textboxes -->
	<input type="text" name="enemy1"> and <input type="text" name="enemy2">
	<br><br>
	<input type="submit" id = "fixedbutton"><!-- submit button -->
	</div>
	</form>
</body>
</html>

