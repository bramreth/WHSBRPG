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
<option value = "I fall in and out of love easily, and am always pursuing someone.">
I fall in and out of love easily, and am always pursuing someone.</option>
<option value = "I have a joke for every occasion, especially occasions where humour is inappropriate">
I have a joke for every occasion, especially occasions where humour is inappropriate</option>
<option value = "Flattery is my preferred trick for getting what I want.">
Flattery is my preferred trick for getting what I want.</option>
<option value = "I'm a born gambler who can't resist taking a risk for a potential payoff.">
I'm a born gambler who can't resist taking a risk for a potential payoff.</option>
<option value = "I lie about almost everything, even when there's no good reason to.">
I lie about almost everything, even when there's no good reason to.</option>
<option value = "Sarcasm and insults are my weapons of choice.">
Sarcasm and insults are my weapons of choice.</option>
<option value = "I keep multiple holy symbols on me and invoke whatever deity might come in useful at any given moment.">
I keep multiple holy symbols on me and invoke whatever deity might come in useful at any given moment.</option>
<option value = "I pocket anything I see that might have some value.">
I pocket anything I see that might have some value.</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Independence. I am a free spirit - no one tells me what to do.">
Independence. I am a free spirit - no one tells me what to do.</option>
<option value = "Fairness. I never target people who can't afford to lose a few coins.">
Fairness. I never target people who can't afford to lose a few coins.</option>
<option value = "Charity. I distribute the money I acquire to the people who really need it.">
Charity. I distribute the money I acquire to the people who really need it.</option>
<option value = "Creativity. I never run the same con twice.">
Creativity. I never run the same con twice.</option>
<option value = "Friendship. Material goods come and go. Bonds of friendship last forever.">
Friendship. Material goods come and go. Bonds of friendship last forever.</option>
<option value = "Aspiration. I'm determined to make something of myself.">
Aspiration. I'm determined to make something of myself.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "I fleeced the wrong person and must work to ensure that this individual never crosses paths with me or those I care about.">
I fleeced the wrong person and must work to ensure that this individual never crosses paths with me or those I care about.</option>
<option value = "I owe everything to my mentor - a horrible person who's probably rotting in jail somewhere.">
I owe everything to my mentor - a horrible person who's probably rotting in jail somewhere.</option>
<option value = "Somewhere out there, I have a child who deosn't know me. I'm making the world better for him or her.">
Somewhere out there, I have a child who deosn't know me. I'm making the world better for him or her.</option>
<option value = "I come from a noble family, and one day I'll reclaim my lands and title from those who stole them from me.">
I come from a noble family, and one day I'll reclaim my lands and title from those who stole them from me.</option>
<option value = "A ppowerful person killed someone I love. Some day soon, I'll have my revenge.">
A powerful person killed someone I love. Some day soon, I'll have my revenge.</option>
<option value = "I swindled and ruined a person who didn't deserve it. I seek to atone for my misdeeds but might never be able to forgive myself.">
I swindled and ruined a person who didn't deserve it. I seek to atone for my misdeeds but might never be able to forgive myself.</option>
</select><br>


<b>Flaw</b><br>
<select name = "flaw">
<option value = "I can't resist a pretty face.">
I can't resist a pretty face.</option>
<option value = "I'm always in debt. I spend my ill-gotten gains on decadent luxuries faster than I bring them in...">
I'm always in debt. I spend my ill-gotten gains on decadent luxuries faster than I bring them in...</option>
<option value = "I'm convinced that no one could ever fool me the way I fool others">
I'm convinced that no one could ever fool me the way I fool others</option>
<option value = "I'm too greedy for my own good. I can't resist taking a risk if there's money involved.">
I'm too greedy for my own good. I can't resist taking a risk if there's money involved.</option>
<option value = "I can't resist swindling people who are more powerful than me.">
I can't resist swindling people who are more powerful than me.</option>
<option value = "I hate to admit it and will hate myself for it, but I'll run and preserve my own hide if the going gets tough.">
I hate to admit it and will hate myself for it, but I'll run and preserve my own hide if the going gets tough.</option>
</select><br><br>

<input type="submit" id = "fixedbutton">
</div>
</form>

</body>
</html>


