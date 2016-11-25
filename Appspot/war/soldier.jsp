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
<option value = "I'm always polite and respectful.">
I'm always polite and respectful.</option>
<option value = "I'm haunted by memories of war.I can't get the images of violence out of my mind.">
I'm haunted by memories of war.I can't get the images of violence out of my mind.</option>
<option value = "I've lost too many friends, and I'm slow to make new ones.">
I've lost too many friends, and I'm slow to make new ones.</option>
<option value = "I'm full of inspiring and cautionary tales from my military experience relevent to almost every">
I'm full of inspiring and cautionary tales from my military experience relevent to almost every</option>
<option value = "I can stare down a hell hound without flinching.">
I can stare down a hell hound without flinching.</option>
<option value = "I enjoy being strong and like breaking things.">
I enjoy being strong and like breaking things.</option>
<option value = "I have a crude sense of humor.">
I have a crude sense of humor.</option>
<option value = "I face problems head-on. A simple, direct solution is the best path to success.">
I face problems head-on. A simple, direct solution is the best path to success.</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Greater Good. Our lot is to lay down our lives in defence of others.">
Greater Good. Our lot is to lay down our lives in defence of others.</option>
<option value = "Responsibility. I do what I must and obey just authority.">
Responsibility. I do what I must and obey just authority.</option>
<option value = "Independence. When people follow orders blindly, they embrace a kind of tyranny.">
Independence. When people follow orders blindly, they embrace a kind of tyranny.</option>
<option value = "Might. In life as in war, the stronger force wins.">
Might. In life as in war, the stronger force wins.</option>
<option value = "Live and Let Live. Ideals aren't worth killing over or going to war for.">
Live and Let Live. Ideals aren't worth killing over or going to war for.</option>
<option value = "My city, nation, or people are all that matter.">
My city, nation, or people are all that matter.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "I would still lay down my life for the people I served with.">
I would still lay down my life for the people I served with.</option>
<option value = "Someone saved my life on the battlefield. To this day, I will never leave a friend behind.">
Someone saved my life on the battlefield. To this day, I will never leave a friend behind.</option>
<option value = "My honor is my life.">
My honor is my life.</option>
<option value = "I'll never forget the crushing defeat my company suffered or the enemies who dealt it.">
I'll never forget the crushing defeat my company suffered or the enemies who dealt it.</option>
<option value = "Those who fight beside me are those worth dying for.">
Those who fight beside me are those worth dying for.</option>
<option value = "I fight for those who cannot fight for themselves.">
I fight for those who cannot fight for themselves.</option>
</select><br>


<b>Flaw</b><br>
<select name = "flaw">
<option value = "The monstrous enemy we face in battle still leaves me quivering with fear.">
The monstrous enemy we face in battle still leaves me quivering with fear.</option>
<option value = "I have little respect for anyone who is not a proven warrior.">
I have little respect for anyone who is not a proven warrior.</option>
<option value = "I made a terrible mistake in battle that cost many lives - and I would do anything to keep that mistake secret">
I made a terrible mistake in battle that cost many lives - and I would do anything to keep that mistake secret</option>
<option value = "My hatred of my enemies is blind and unreasoning.">
My hatred of my enemies is blind and unreasoning.</option>
<option value = "I obey the law, even if the law causes misery.">
I obey the law, even if the law causes misery.</option>
<option value = "I'd rather eat my armor than admit when I'm wrong.">
I'd rather eat my armor than admit when I'm wrong.</option>
</select><br><br>

<input type="submit" id = "fixedbutton">
</div>
</form>

</body>
</html>


