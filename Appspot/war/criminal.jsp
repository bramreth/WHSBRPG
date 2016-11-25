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
<option value = "I always have a plan for what to do when things go wrong.">
I always have a plan for what to do when things go wrong.</option>
<option value = "I am always calm, no matter what the situation. I never raise my voice or let my emotions control me.">
I am always calm, no matter what the situation. I never raise my voice or let my emotions control me.</option>
<option value = "The first thing I do in a new place is note the locations of everything valuable - or where such things could be hidden.">
The first thing I do in a new place is note the locations of everything valuable - or where such things could be hidden.</option>
<option value = "I would rather make a new friend than a new enemy.">
I would rather make a new friend than a new enemy.</option>
<option value = "I am incredibly slow to trust. Those who seem the fairest often have the most to hide.">
I am incredibly slow to trust. Those who seem the fairest often have the most to hide.</option>
<option value = "I don't pay attention to the risks in a situation. Never tell me the odds.">
I don't pay attention to the risks in a situation. Never tell me the odds.</option>
<option value = "The best way to get me to do something is to tell me I can't do it.">
The best way to get me to do something is to tell me I can't do it.</option>
<option value = "I blow up at the slightest insult.">
I blow up at the slightest insult.</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Honor. I don't steal from others in the trade.">
Honor. I don't steal from others in the trade.</option>
<option value = "Freedom. Chains are meant to be broken, as are those who would forge them.">
Freedom. Chains are meant to be broken, as are those who would forge them.</option>
<option value = "Charity. I steal from the wealthy so that I can help people in need.">
Charity. I steal from the wealthy so that I can help people in need.</option>
<option value = "Greed. I will do whatever it takes to become wealthy.">
Greed. I will do whatever it takes to become wealthy.</option>
<option value = "People. I'm loyal to my friends, not to any ideals, and everyone else can take a trip down the Styx for all I care.">
People. I'm loyal to my friends, not to any ideals, and everyone else can take a trip down the Styx for all I care.</option>
<option value = "Redemption. There's a spark of good in everyone.">
Redemption. There's a spark of good in everyone.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "I'm trying to pay off an old debt I owe to a generous benefactor.">
I'm trying to pay off an old debt I owe to a generous benefactor.</option>
<option value = "My ill-gotten gains go to support my family">
My ill-gotten gains go to support my family</option>
<option value = "Something important was taken from me, and I aim to steal it back.">
Something important was taken from me, and I aim to steal it back.</option>
<option value = "I will become the greatest thief that ever lived.">
I will become the greatest thief that ever lived.</option>
<option value = "I'm guilty of a terrible crime. I hope I can redeem myself for it.">
I'm guilty of a terrible crime. I hope I can redeem myself for it.</option>
<option value = "Someone I loved died because of I mistake I made. That will never happen again.">
Someone I loved died because of I mistake I made. That will never happen again.</option>
</select><br>


<b>Flaw</b><br>
<select name = "flaw">
<option value = "When I see something valuable, I can't think about anything but how to steal it.">
When I see something valuable, I can't think about anything but how to steal it.</option>
<option value = "When faced with a choice between money and my friends, I usually choose the money.">
When faced with a choice between money and my friends, I usually choose the money.</option>
<option value = "If there's a plan, I'll forget it. If I don't forget it, I'll ignore it.">
If there's a plan, I'll forget it. If I don't forget it, I'll ignore it.</option>
<option value = "I have a 'tell' that reveals when I'm lying.">
I have a 'tell' that reveals when I'm lying.</option>
<option value = "I turn tail and run when things look bad.">
I turn tail and run when things look bad.</option>
<option value = "An innocent person is in prison for a crime that I commited. I'm okay with that.">
An innocent person is in prison for a crime that I commited. I'm okay with that.</option>
</select><br><br>

<input type="submit" id = "fixedbutton">
</div>
</form>

</body>
</html>


