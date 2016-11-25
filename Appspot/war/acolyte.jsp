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
<select name = "personality" id = "personality">
<option value = "I idolize a particular hero of my faith, and constantly refer to that person's deeds and example.">
I idolize a particular hero of my faith, and constantly refer to that person's deeds and example.</option>
<option value = "I can find common ground between the fiercest enemies, empathizing with them and always working toward peace">
I can find common ground between the fiercest enemies, empathizing with them and always working toward peace</option>
<option value = "I see omens in every event and action. The gods try to speak to us, we just need to listen.">
I see omens in every event and action. The gods try to speak to us, we just need to listen.</option>
<option value = "Nothing can shake my optimistic attitude">
Nothing can shake my optimistic attitude</option>
<option value = "I quote(or misquote) sacred texts and proverbs in almost every situation">
I quote(or misquote) sacred texts and proverbs in almost every situation</option>
<option value = "I am tolerant(or intolerant) of other faithes and respect(or condemn) the worship of other gods">
I am tolerant(or intolerant) of other faithes and respect(or condemn) the worship of other gods</option>
<option value = "I've enjoyed fine food, drink, and high society among my temple's elite. Rough living grates on me">
I've enjoyed fine food, drink, and high society among my temple's elite. Rough living grates on me</option>
<option value = "I've spent so long in the temple that I have little practical experience dealing with people in the outside world.">
I've spent so long in the temple that I have little practical experience dealing with people in the outside world.</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Tradition. The ancient traditions of worship and sacrifice must be preserved and upheld">
Tradition. The ancient traditions of worship and sacrifice must be preserved and upheld</option>
<option value = "Charity. I always try to help those in need, no matter what the personal cost.">
Charity. I always try to help those in need, no matter what the personal cost.</option>
<option value = "Change. We must help help bring about the changes the gods are constantly working in the world.">
Change. We must help help bring about the changes the gods are constantly working in the world.</option>
<option value = "Power. I hope to one day rise to the top of my faith's religous heirarchy">
Power. I hope to one day rise to the top of my faith's religous heirarchy</option>
<option value = "Faith. I trust that my deity will guide my actions. I have faith that if I work hard, things will go well.">
Faith. I trust that my deity will guide my actions. I have faith that if I work hard, things will go well.</option>
<option value = "Aspiration. I seek to prove myself worthy of my god's favor by matching my actions against his or her own teachings.">
Aspiration. I seek to prove myself worthy of my god's favor by matching my actions against his or her own teachings.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "I would die to recover an ancient relic of my faith that was lost long ago.">
I would die to recover an ancient relic of my faith that was lost long ago.</option>
<option value = "I will someday get revenge on the corrupt temple hierarchy who branded me a heretic">
I will someday get revenge on the corrupt temple hierarchy who branded me a heretic</option>
<option value = "I owe my life to the priest who took me in when my parents died.">
I owe my life to the priest who took me in when my parents died.</option>
<option value = "Everything I do is for the common people">
Everything I do is for the common people</option>
<option value = "I will do anything to protect the temple where I served">
I will do anything to protect the temple where I served</option>
<option value = "I seek to preserve a sacred text that my enemies consider heretical and seek to destroy">
I seek to preserve a sacred text that my enemies consider heretical and seek to destroy</option>
</select><br>


<b>Flaw</b><br>
<select name = "flaw">
<option value = "I judge others harshley, and myself even more severley">
I judge others harshley, and myself even more severley</option>
<option value = "I put too much trust in those who wield power within my temple's hierarchy">
I put too much trust in those who wield power within my temple's hierarchy</option>
<option value = "My piety sometimes leads me to blindly trust those that profess faith in my god.">
My piety sometimes leads me to blindly trust those that profess faith in my god.</option>
<option value = "I am inflexible in my thinking">
I am inflexible in my thinking</option>
<option value = "I am suspicous of strangers and expect the worst of them.">
I am suspicous of strangers and expect the worst of them.</option>
<option value = "Once I pick a goal, I become obsessed with it to the detriment of everything else in my life">
Once I pick a goal, I become obsessed with it to the detriment of everything else in my life</option>
</select><br><br>
<input type="submit" id = "fixedbutton">
</div>
</form>

</body>
</html>

