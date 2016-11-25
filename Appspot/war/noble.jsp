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
<option value = "My eloquent flattery makes everyone I talk to feel like the most wonderful and important person in the world.">
My eloquent flattery makes everyone I talk to feel like the most wonderful and important person in the world.</option>
<option value = "The common folk love me for my kindness and generosity.">
The common folk love me for my kindness and generosity.</option>
<option value = "No one could doubt me looking at my regal bearing that I am a cut above the unwashed masses.">
No one could doubt me looking at my regal bearing that I am a cut above the unwashed masses.</option>
<option value = "I take great pains to always look my best and follow the latest fashions.">
I take great pains to always look my best and follow the latest fashions.</option>
<option value = "I don't like to get my hands dirty, and I won't be caught dead in unsuitable accommodations.">
I don't like to get my hands dirty, and I won't be caught dead in unsuitable accommodations.</option>
<option value = "Despite my noble birth, I do not place myself above other folk. we all have the same blood.">
Despite my noble birth, I do not place myself above other folk. we all have the same blood.</option>
<option value = "My favor, once lost, is lost forever.">
My favor, once lost, is lost forever.</option>
<option value = "If you do me an injury, I will crush you, ruin your name, and salt your fields.">
If you do me an injury, I will crush you, ruin your name, and salt your fields.</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Respect. respect is due to me because of my position, but all people regardless of station deserve to be treated with dignity.">
Respect. respect is due to me because of my position, but all people regardless of station deserve to be treated with dignity.</option>
<option value = "Responsibility. It is my duty to respect the authority of those above me, just as those below me must respect mine.">
Responsibility. It is my duty to respect the authority of those above me, just as those below me must respect mine.</option>
<option value = "Independence. I must prove that I can handle myself without the coddling of my family.">
Independence. I must prove that I can handle myself without the coddling of my family.</option>
<option value = "Power. If I can attain more power no one will tell me what to do.">
Power. If I can attain more power no one will tell me what to do.</option>
<option value = "Family. Blood runs thicker than water.">
Family. Blood runs thicker than water.</option>
<option value = "Noble Obligation. It is my duty to protect and care for the people beneath me.">
Noble Obligation. It is my duty to protect and care for the people beneath me.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "I will face any challenge to win the aproval of my family.">
I will face any challenge to win the aproval of my family.</option>
<option value = "My house's alliance with another noble family must be sustained at all costs.">
My house's alliance with another noble family must be sustained at all costs.</option>
<option value = "Nothing is more important than the other members of my family.">
Nothing is more important than the other members of my family.</option>
<option value = "I am in love with the heir of a family that my family despises.">
I am in love with the heir of a family that my family despises.</option>
<option value = "My loyalty to my sovereign is unwavering.">
My loyalty to my sovereign is unwavering.</option>
<option value = "The common folk must see me as a hero of the people.">
The common folk must see me as a hero of the people.</option>
</select><br>

<b>Flaw</b><br>
<select name = "flaw">
<option value = "I secretly believe that everyone is beneath me.">
I secretly believe that everyone is beneath me.</option>
<option value = "I hide a truly scandalous secret that could ruin my family forever.">
I hide a truly scandalous secret that could ruin my family forever.</option>
<option value = "I too often hear veiled insults and threats in every word addressed to me, and I'm quick to anger.">
I too often hear veiled insults and threats in every word addressed to me, and I'm quick to anger.</option>
<option value = "I have an insatiable desire for carnal pleasures.">
I have an insatiable desire for carnal pleasures.</option>
<option value = "In fact, the world does revolve around me.">
In fact, the world does revolve around me.</option>
<option value = "By my words and actions, I often bring shame to my family.">
By my words and actions, I often bring shame to my family.</option>
</select><br><br>

<input type="submit" id = "fixedbutton">
</div>
</form>

</body>
</html>



