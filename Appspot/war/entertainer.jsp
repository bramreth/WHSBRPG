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
<option value = "I know a story relevant to almost every situation.">
I know a story relevant to almost every situation.</option>
<option value = "Whenever I come to a new place, I collect local rumors and spread gossip.">
Whenever I come to a new place, I collect local rumors and spread gossip.</option>
<option value = "I'm a hopeless romantic, always searching for that 'special someone'.">
I'm a hopeless romantic, always searching for that 'special someone'.</option>
<option value = "Nobody stays angry at me or around me for long, since I can diffuse any amount of tension.">
Nobody stays angry at me or around me for long, since I can diffuse any amount of tension.</option>
<option value = "I love a good insult, even one directed at me.">
I love a good insult, even one directed at me.</option>
<option value = "I get bitter if I'm not the center of attention.">
I get bitter if I'm not the center of attention.</option>
<option value = "I'll settle for nothing less than perfection.">
I'll settle for nothing less than perfection.</option>
<option value = "I change my mood or mind as quickly as I change key in a song.">
I change my mood or mind as quickly as I change key in a song.</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Beauty. When I perform, I make the world better than it was.">
Beauty. When I perform, I make the world better than it was.</option>
<option value = "Tradition. The stories, legends, and songs of the past must never be forgotten, for they teach us who we are.">
Tradition. The stories, legends, and songs of the past must never be forgotten, for they teach us who we are.</option>
<option value = "Creativity. The world is in need of new ideas and bold action.">
Creativity. The world is in need of new ideas and bold action.</option>
<option value = "Greed. I'm only in it for the money and fame.">
Greed. I'm only in it for the money and fame.</option>
<option value = "People. I like seeing the smiles on people's faces when I perform. That's all that matters.">
People. I like seeing the smiles on people's faces when I perform. That's all that matters.</option>
<option value = "Honesty. Art should reflect the soul; it should come from within and reveal who we really are.">
Honesty. Art should reflect the soul; it should come from within and reveal who we really are.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "My instrument is my most treasured possesion, and it reminds me of someone I love.">
My instrument is my most treasured possesion, and it reminds me of someone I love.</option>
<option value = "Someone stole my precious instrument, and someday I'll get it back.">
Someone stole my precious instrument, and someday I'll get it back.</option>
<option value = "I want to be famous, whatever it takes.">
I want to be famous, whatever it takes.</option>
<option value = "I idolize a hero of the old tales and measure my deeds against that person's.">
I idolize a hero of the old tales and measure my deeds against that person's.</option>
<option value = "I will do anything to prove myself superior to my hated rival.">
I will do anything to prove myself superior to my hated rival.</option>
<option value = "I would do anything for the other members of my old troupe.">
I would do anything for the other members of my old troupe.</option>
</select><br>


<b>Flaw</b><br>
<select name = "flaw">
<option value = "I'll do anything to win fame and renown.">
I'll do anything to win fame and renown.</option>
<option value = "I'm a sucker for a pretty face.">
I'm a sucker for a pretty face.</option>
<option value = "A scandal prevents me from ever going home again. That kind of trouble seems to follow me around.">
A scandal prevents me from ever going home again. That kind of trouble seems to follow me around.</option>
<option value = "I once satirized a noble who still wants my head. It was a mistike that I will likely repeat.">
I once satirized a noble who still wants my head. It was a mistike that I will likely repeat.</option>
<option value = "I have trouble keeping my true feelings hidden. My sharp tongue lands me in trouble.">
I have trouble keeping my true feelings hidden. My sharp tongue lands me in trouble.</option>
<option value = "Despite my best efforts, I am unreliable to my friends.">
Despite my best efforts, I am unreliable to my friends.</option>
</select><br><br>

<input type="submit" id = "fixedbutton">
</div>
</form>

</body>
</html>



