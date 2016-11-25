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
<option value = "I believe that anything worth doing is worth doing right. I can't help it - I'm a perfectionist.">
I believe that anything worth doing is worth doing right. I can't help it - I'm a perfectionist.</option>
<option value = "I'm a snob who looks down on those who can't appreciate fine art.">
I'm a snob who looks down on those who can't appreciate fine art.</option>
<option value = "I always want to know how things work and what makes people tick.">
I always want to know how things work and what makes people tick.</option>
<option value = "I'm full of witty aphorisms and have a proverb for every occasion.">
I'm full of witty aphorisms and have a proverb for every occasion.</option>
<option value = "I'm rude to people who lack my commitment to hard work and fair play.">
I'm rude to people who lack my commitment to hard work and fair play.</option>
<option value = "I like to talk at length about my profession.">
I like to talk at length about my profession.</option>
<option value = "I don't part with my money easily and will haggle tireless to get the best deal possible.">
I don't part with my money easily and will haggle tireless to get the best deal possible.</option>
<option value = "I'm well known for my work, and I want to make sure everyone appreciates it. I'm always taken aback when people haven't heard of me.">
I'm well known for my work, and I want to make sure everyone appreciates it. I'm always taken aback when people haven't heard of me.</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Community. It is the duty of all civilised people to strengthen the bonds of community and the security of civilisation.">
Community. It is the duty of all civilised people to strengthen the bonds of community and the security of civilisation.</option>
<option value = "Generosity. My talents were given to me so that I could use them to benefit the world.">
Generosity. My talents were given to me so that I could use them to benefit the world.</option>
<option value = "Freedom. Everyone should be free to pursue his or her livelihood.">
Freedom. Everyone should be free to pursue his or her livelihood.</option>
<option value = "Greed. I'm only in it for the money.">
Greed. I'm only in it for the money.</option>
<option value = "People. I'm commited to the people I care about, not to ideals.">
People. I'm commited to the people I care about, not to ideals.</option>
<option value = "Aspiration. I work hard to be the best there is at my craft.">
Aspiration. I work hard to be the best there is at my craft.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "The workshop where I learned my trade is the most important place in the world to me.">
The workshop where I learned my trade is the most important place in the world to me.</option>
<option value = "I created a great work for someone, and then found them unworthy to recieve it. I'm still looking for someone worthy.">
I created a great work for someone, and then found them unworthy to recieve it. I'm still looking for someone worthy.</option>
<option value = "I owe my guild a great debt for forging me into the person I am today.">
I owe my guild a great debt for forging me into the person I am today.</option>
<option value = "I pursue wealth to secure someone's love.">
I pursue wealth to secure someone's love.</option>
<option value = "One day I will return to my guild and prove that I am the greatest artisan of them all.">
One day I will return to my guild and prove that I am the greatest artisan of them all.</option>
<option value = "I will get revenge on the evil forces that destroyed my place of buisness and ruined my livelihood.">
I will get revenge on the evil forces that destroyed my place of buisness and ruined my livelihood.</option>
</select><br>

<b>Flaw</b><br>
<select name = "flaw">
<option value = "I'll do anything to get my hands on something rare or priceless.">
I'll do anything to get my hands on something rare or priceless.</option>
<option value = "I'm quick to assume that someone is trying to cheat me.">
I'm quick to assume that someone is trying to cheat me.</option>
<option value = "No one must ever learn that I once stole money from guild coffers.">
No one must ever learn that I once stole money from guild coffers.</option>
<option value = "I'm never satisfied with what I have - I always want more.">
I'm never satisfied with what I have - I always want more.</option>
<option value = "I would kill to aquire a noble title.">
I would kill to aquire a noble title.</option>
<option value = "I'm horribly jealous of anyone who can outshine my handiwork. Everywhere I go, I'm surrounded by rivals.">
I'm horribly jealous of anyone who can outshine my handiwork. Everywhere I go, I'm surrounded by rivals.</option>
</select><br><br>

<input type="submit" id = "fixedbutton">
</div>
</form>

</body>
</html>



