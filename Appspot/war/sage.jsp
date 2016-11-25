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
<option value = "I use polysyllabic words that convey the impression of great erudition.">
I use polysyllabic words that convey the impression of great erudition.</option>
<option value = "I've read every book in the world's greatest libraries - or like to boast that I have">
I've read every book in the world's greatest libraries - or like to boast that I have</option>
<option value = "I'm used to helping out those who aren't as smart as I am, and I patiently explain anything and everything to others.">
I'm used to helping out those who aren't as smart as I am, and I patiently explain anything and everything to others.</option>
<option value = "There's nothing I like more than a good mystery.">
There's nothing I like more than a good mystery.</option>
<option value = "I'm willing to listen to every side of an argument before I make my own judgement.">
I'm willing to listen to every side of an argument before I make my own judgement.</option>
<option value = "I...speak...slowly...when talking...to idiots... which...almost...everyone...is...compared...to me.">
I...speak...slowly...when talking...to idiots... which...almost...everyone...is...compared...to me.</option>
<option value = "I am horribly, horribly awkward in social situations.">
I am horribly, horribly awkward in social situations.</option>
<option value = "I'm convinced that people are always trying to steal my secrets.">
I'm convinced that people are always trying to steal my secrets.</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Knowledge. The path to power and self-improvement is through knowledge.">
Knowledge. The path to power and self-improvement is through knowledge.</option>
<option value = "Beauty. What is beautiful points us beyond itself towards what is true.">
Beauty. What is beautiful points us beyond itself towards what is true.</option>
<option value = "Logic. Emotions must not cloud our logical thinking.">
Logic. Emotions must not cloud our logical thinking.</option>
<option value = "No Limits. Nothing should fetter the infinite possibility inherent in all existence.">
No Limits. Nothing should fetter the infinite possibility inherent in all existence.</option>
<option value = "Power. Knowledge is the path to power and domination.">
Power. Knowledge is the path to power and domination.</option>
<option value = "Self-Improvement. The goal of a life of study is the betterment of oneself.">
Self-Improvement. The goal of a life of study is the betterment of oneself.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "It is my duty to protect my students.">
It is my duty to protect my students.</option>
<option value = "I have an ancient text that holds terrible secrets that must not fall into the wrong hands.">
I have an ancient text that holds terrible secrets that must not fall into the wrong hands.</option>
<option value = "I work to preserve a library, university, scriptorium or monastary.">
I work to preserve a library, university, scriptorium or monastary.</option>
<option value = "My life's work is a series of tomes related to a specific field of lore.">
My life's work is a series of tomes related to a specific field of lore.</option>
<option value = "I've been searching my whole life for the answer to a certain question.">
I've been searching my whole life for the answer to a certain question.</option>
<option value = "I sold my soul for knowledge. I hope to do great deeds and win it back.">
I sold my soul for knowledge. I hope to do great deeds and win it back.</option>
</select><br>


<b>Flaw</b><br>
<select name = "flaw">
<option value = "I am easily distracted  by the promise of information.">
I am easily distracted  by the promise of information.</option>
<option value = "Most people scream and run when they see a demon. I stop and take notes on its anatomy.">
Most people scream and run when they see a demon. I stop and take notes on its anatomy.</option>
<option value = "Unlocking an ancient mystery is worth the price of a civilisation.">
Unlocking an ancient mystery is worth the price of a civilisation.</option>
<option value = "I overlook obvious solutions in favor of complicated ones.">
I overlook obvious solutions in favor of complicated ones.</option>
<option value = "I speak without really thinking through my words, invariably insulting others.">
I speak without really thinking through my words, invariably insulting others.</option>
<option value = "I can't keep a secret to save my life, or anyone else's.">
I can't keep a secret to save my life, or anyone else's.</option>
</select><br><br>

<input type="submit" id = "fixedbutton">
</div>
</form>

</body>
</html>


