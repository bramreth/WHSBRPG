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
<option value = "I hide scraps of food and trinkets away in my pockets.">
I hide scraps of food and trinkets away in my pockets.</option>
<option value = "I ask lots of questions.">
I ask lots of questions.</option>
<option value = "I like to squeeze into small places where no one else can get to me.">
I like to squeeze into small places where no one else can get to me.</option>
<option value = "I sleep with my back to a wall or tree, with everything I own wrapped in a bundle in my arms.">
I sleep with my back to a wall or tree, with everything I own wrapped in a bundle in my arms.</option>
<option value = "I eat like a pig and have bad manners.">
I eat like a pig and have bad manners.</option>
<option value = "I think anyone who's mice to me is hiding evil intent.">
I think anyone who's mice to me is hiding evil intent.</option>
<option value = "I don't like to bathe.">
I don't like to bathe.</option>
<option value = "I bluntly say what other people are hinting at or hiding.">
I bluntly say what other people are hinting at or hiding.</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Respect. All people, rich or poor, deserve respect.">
Respect. All people, rich or poor, deserve respect.</option>
<option value = "Community. We have to take care of each other, because no one else is going to do it.">
Community. We have to take care of each other, because no one else is going to do it.</option>
<option value = "Change. The low are lifted up, and the high and mighty are brought down. Change is the nature of things.">
Change. The low are lifted up, and the high and mighty are brought down. Change is the nature of things.</option>
<option value = "Retribution. The rich need to be shown what life and death are like in the gutters.">
Retribution. The rich need to be shown what life and death are like in the gutters.</option>
<option value = "People. I help the people who help me - that's what keeps us alive.">
People. I help the people who help me - that's what keeps us alive.</option>
<option value = "Aspiration. I'm going to prove that I'm worthy of a better life.">
Aspiration. I'm going to prove that I'm worthy of a better life.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "my town or city is my home, and I'll fight to defend it.">
my town or city is my home, and I'll fight to defend it.</option>
<option value = "I sponsor my orphanage to keep others from enduring what I was forced to endure.">
I sponsor my orphanage to keep others from enduring what I was forced to endure.</option>
<option value = "I owe my survival to another urchin who taught me to live on the streets.">
I owe my survival to another urchin who taught me to live on the streets.</option>
<option value = "I owe a debt I can never repay to the person who took pity on me.">
I owe a debt I can never repay to the person who took pity on me.</option>
<option value = "I escaped my life of poverty by robbing an important person, and I'm wanted for it.">
I escaped my life of poverty by robbing an important person, and I'm wanted for it.</option>
<option value = "No one else should have to endure the hardships I've been thorugh.">
No one else should have to endure the hardships I've been thorugh.</option>
</select><br>


<b>Flaw</b><br>
<select name = "flaw">
<option value = "If I'm outnumbered, I will run away from a fight.">
If I'm outnumbered, I will run away from a fight.</option>
<option value = "Gold seems like a lot of money to me, and I'll do just about anything for more of it.">
Gold seems like a lot of money to me, and I'll do just about anything for more of it.</option>
<option value = "I will never fully trust anyone other than myself.">
I will never fully trust anyone other than myself.</option>
<option value = "I'd rather kill someone in their sleep than fight fair.">
I'd rather kill someone in their sleep than fight fair.</option>
<option value = "It's not stealing if I need it more than someone else.">
It's not stealing if I need it more than someone else.</option>
<option value = "People who can't take care of themselves get what they deserve.">
People who can't take care of themselves get what they deserve.</option>
</select><br><br>

<input type="submit" id = "fixedbutton">
</div>
</form>
</body>
</html>


