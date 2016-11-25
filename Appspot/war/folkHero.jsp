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
<option value = "I judge people by their actions, not their words.">
I judge people by their actions, not their words.</option>
<option value = "If someone is in trouble, I'm always ready to lend help.">
If someone is in trouble, I'm always ready to lend help.</option>
<option value = "When I set my mind to something, I follow through no matter what gets in my way.">
When I set my mind to something, I follow through no matter what gets in my way.</option>
<option value = "I have a strong sense of fair play and always try to find the most equitable solution to arguments.">
I have a strong sense of fair play and always try to find the most equitable solution to arguments.</option>
<option value = "I'm confident in my own abilities and do what I can to instill confidence in others.">
I'm confident in my own abilities and do what I can to instill confidence in others.</option>
<option value = "Thinking is for other people. I prefer action.">
Thinking is for other people. I prefer action.</option>
<option value = "I misuse long words in an attempt to sound smarter.">
I misuse long words in an attempt to sound smarter.</option>
<option value = "I get bored easily. When am I going to get on with my destiny?">
I get bored easily. When am I going to get on with my destiny?</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Respect. People deserve to be treated with dignity and respect.">
Respect. People deserve to be treated with dignity and respect.</option>
<option value = "Fairness. No one should get preferential treatment before the law, and no one is above the law.">
Fairness. No one should get preferential treatment before the law, and no one is above the law.</option>
<option value = "Freedom. Tyrants must not be allowed to oppress the people.">
Freedom. Tyrants must not be allowed to oppress the people.</option>
<option value = "Might. If I become strong, I can take what I want - what I deserve.">
Might. If I become strong, I can take what I want - what I deserve.</option>
<option value = "Sincerity. There's no good in pretending to be something I'm not.">
Sincerity. There's no good in pretending to be something I'm not.</option>
<option value = "Destiny. Nothing and no one can steer me away from my higher calling.">
Destiny. Nothing and no one can steer me away from my higher calling.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "I have a family, but I have no idea where they are. One day, I hope to see them again.">
I have a family, but I have no idea where they are. One day, I hope to see them again.</option>
<option value = "I worked the land, I love the land, and I will protect the land.">
I worked the land, I love the land, and I will protect the land.</option>
<option value = "A proud noble once gave me a horrible beating, and I will take my revenge on any bully I encounter.">
A proud noble once gave me a horrible beating, and I will take my revenge on any bully I encounter.</option>
<option value = "My tools are symbols of my past life, and I carry them so that I will never forget my roots.">
My tools are symbols of my past life, and I carry them so that I will never forget my roots.</option>
<option value = "I protect those who cannot protect themselves.">
I protect those who cannot protect themselves.</option>
<option value = "I wish my childhood sweetheart had come with me to pursue my destiny.">
I wish my childhood sweetheart had come with me to pursue my destiny.</option>
</select><br>


<b>Flaw</b><br>
<select name = "flaw">
<option value = "The tyrant who rules my land will stop at nothing to see me killed.">
The tyrant who rules my land will stop at nothing to see me killed.</option>
<option value = "I'm convinced of the significance of my destiny, and blind to my shortcomings and the risk of failure.">
I'm convinced of the significance of my destiny, and blind to my shortcomings and the risk of failure.</option>
<option value = "The people who knew me when I was young know my shameful secret, so I can never go home again.">
The people who knew me when I was young know my shameful secret, so I can never go home again.</option>
<option value = "I have a weakness for the vices of the city, especially hard drink.">
I have a weakness for the vices of the city, especially hard drink.</option>
<option value = "Secretly, I believe that things would be better if I were a tyrant lording over the land.">
Secretly, I believe that things would be better if I were a tyrant lording over the land.</option>
<option value = "I have trouble trusting my allies.">
I have trouble trusting my allies.</option>
</select><br><br>

<input type="submit" id = "fixedbutton">
</div>
</form>

</body>
</html>
