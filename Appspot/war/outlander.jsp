<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
<div id="navcontainer"><!-- navigation bar -->
		<ul class="navigation">
			<li id="active"><a href="race.jsp">Character Creator</a></li>
			<li><a href="CharacterViewer.jsp" id="current">Character Viewer</a></li>
		</ul>
	</div>

</head>
<body>
<h1>Bram's character creator</h1>
	<h2>
		Background
		</h2>
<% 
session.getAttribute("player3");//import latest version of object 
coursework player = (coursework)session.getAttribute("player3");//set object to a useable variable
int selectedItem = 0;//set to a value the user picks for alignment
boolean flag = false;
if (request.getParameter("align") != null) {
	selectedItem = Integer.parseInt(request.getParameter("align"));//gets the users chocen
	player.setAlignment(selectedItem);//set the players alignment to the appropriate value
	flag = true;//set continue flag
}
if(request.getParameter("personality") != null){
	player.personality = request.getParameter("personality");//set the players personality to the value chosen
}
if(request.getParameter("ideal") != null){
	player.ideal = request.getParameter("ideal");//set the players ideal to the value chosen
}
if(request.getParameter("bond") != null){
	player.bond = request.getParameter("bond");//set the players bond to the value chosen
}
if(request.getParameter("flaw") != null){
	player.flaw = request.getParameter("flaw");//set the flaw personality to the value chosen
}
if(flag){//if an alignment is chosen
	session.setAttribute("player4", player);//set the latest version of the object
	response.sendRedirect("backstory.jsp");//redirect
}
%>
<form>
<div id = "align"><!-- radio buttons for choosing the players alignment -->
		<input type="radio" name="align" id="Chaotic good" value="0">Chaotic good<!-- seperated into collumns of good, neutral and chaotic  -->
		<input type="radio" name="align" id="Good" value="1">Good
		<input type="radio" name="align" id="Lawful good" value="2">Lawful good<br><!-- seperated into rows of good, neutral and evil -->
		<input type="radio" name="align" id="Chaotic neutral" value="3">Chaotic neutral
		<input type="radio" name="align" id="Neutral" value="4">Neutral
		<input type="radio" name="align" id="Lawful neutral" value="5">Lawful neutral <br>
		<input type="radio" name="align" id="Chaotic evil" value="6">Chaotic evil
		<input type="radio" name="align" id="Evil" value="7">Evil
		<input type="radio" name="align" id="Lawful evil" value="8">Lawful evil<br>

<h2><%= player.background %></h2><!-- output the players chosen background and all relevent personality traits, ideals, bonds and flaws as dropdown box options -->
<b>Personality trait</b><br>
<select name = "personality">
<option value = "I'm driven by a wonderlust that led me away from home.">
I'm driven by a wonderlust that led me away from home.</option>
<option value = "I watch over my friends as if they were a litter of newborn pups.">
I watch over my friends as if they were a litter of newborn pups.</option>
<option value = "I once ran twenty-five miles without stopping to warn to my clan of an approaching orc horde. I'd do it again if I had to.">
I once ran twenty-five miles without stopping to warn to my clan of an approaching orc horde. I'd do it again if I had to.</option>
<option value = "I have a lesson for every situation, drawn from observing nature.">
I have a lesson for every situation, drawn from observing nature.</option>
<option value = "I plaace no stock in wealthy or well-mannered folk. Money and manners won't save you from a hungry owlbear">
I plaace no stock in wealthy or well-mannered folk. Money and manners won't save you from a hungry owlbear</option>
<option value = "I'm always picking things up, absently fiddling with them, and sometimes accidentaly breaking them.">
I'm always picking things up, absently fiddling with them, and sometimes accidentaly breaking them.</option>
<option value = "I feel far more comfortable around animals than people.">
I feel far more comfortable around animals than people.</option>
<option value = "I was, in fact raised by wolves.">
I was, in fact raised by wolves.</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Change. Life is like the seasons, in constant change, and we must change with it.">
Change. Life is like the seasons, in constant change, and we must change with it.</option>
<option value = "Greater Good. It is each person's responsibility to make the most happiness for the whole tribe.">
Greater Good. It is each person's responsibility to make the most happiness for the whole tribe.</option>
<option value = "Honor. If I dishonour myself, I dishonour my whole clan.">
Honor. If I dishonour myself, I dishonour my whole clan.</option>
<option value = "Might. The strongest are meant to rule.">
Might. The strongest are meant to rule.</option>
<option value = "Nature. The natural world is more important than all the constructs of civilisation.">
Nature. The natural world is more important than all the constructs of civilisation.</option>
<option value = "Glory. I must earn glory in battle, for myself and my clan.">
Glory. I must earn glory in battle, for myself and my clan.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "My family, clan, or tribe is the most important thing in my life, even when they are far from me.">
My family, clan, or tribe is the most important thing in my life, even when they are far from me.</option>
<option value = "An injury to the unspoiled wilderness of my home is an injury to me.">
An injury to the unspoiled wilderness of my home is an injury to me.</option>
<option value = "I will bring terrible wrath down on the evildoers who destroyed my homeland.">
I will bring terrible wrath down on the evildoers who destroyed my homeland.</option>
<option value = "I am the last of my tribe, and it is up to me to ensure their names enter legend.">
I am the last of my tribe, and it is up to me to ensure their names enter legend.</option>
<option value = "I suffer from awful visions of a coming disaster and will do anything to prevent it.">
I suffer from awful visions of a coming disaster and will do anything to prevent it.</option>
<option value = "It is my duty to provide children to sustain my tribe.">
It is my duty to provide children to sustain my tribe.</option>
</select><br>


<b>Flaw</b><br>
<select name = "flaw">
<option value = "I am too enamored of ale, wine and other intoxicants.">
I am too enamored of ale, wine and other intoxicants.</option>
<option value = "There's no room for caution in a life lived to the fullest.">
There's no room for caution in a life lived to the fullest.</option>
<option value = "I remember every insult I've recieved and nurse a silent resentment toward anyone who's ever wronged me.">
I remember every insult I've recieved and nurse a silent resentment toward anyone who's ever wronged me.</option>
<option value = "I am slow to trust members of other races, tribes, and societies.">
I am slow to trust members of other races, tribes, and societies.</option>
<option value = "Violence is my answer to almost any challenge.">
Violence is my answer to almost any challenge.</option>
<option value = "Don't expect me to save those who can't save themselves. It is nature's way that the strong thrive and the weak perish.">
Don't expect me to save those who can't save themselves. It is nature's way that the strong thrive and the weak perish.</option>
</select><br><br>

<input type="submit" id = "fixedbutton">
</div>
</form>

</body>
</html>


