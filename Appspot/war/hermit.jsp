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
<option value = "I've been isolated for so long that I rarely speak, preffering gestures and the occasional grunt.">
I've been isolated for so long that I rarely speak, preferring gestures and the occasional grunt.</option>
<option value = "I am utterly serene, even in the face of disaster.">
I am utterly serene, even in the face of disaster.</option>
<option value = "The leader of my community had something wise to say on every topic, I am eager to share that wisdom.">
The leader of my community had something wise to say on every topic, I am eager to share that wisdom.</option>
<option value = "I feel tremendous empathy for all who suffer.">
I feel tremendous empathy for all who suffer.</option>
<option value = "I'm oblivious to ettiquette and social expectations.">
I'm oblivious to etiquette and social expectations.</option>
<option value = "I connect everything that happens to me to a grand, cosmic plan.">
I connect everything that happens to me to a grand, cosmic plan.</option>
<option value = "I often get lost in my own thoughts and contemplation, becoming oblivious to my surroundings.">
I often get lost in my own thoughts and contemplation, becoming oblivious to my surroundings.</option>
<option value = "I am working on a grand philosophical theory and love sharing my ideas.">
I am working on a grand philosophical theory and love sharing my ideas.</option>
</select><br>


<b>Ideal</b><br>
<select name = "ideal">
<option value = "Greater good. My gifts are meant to be shared with all, not used for my own benefit.">
Greater good. My gifts are meant to be shared with all, not used for my own benefit.</option>
<option value = "Logic. Emotions must not cloud our sense of what is right and true, or our logical thinking.">
Logic. Emotions must not cloud our sense of what is right and true, or our logical thinking.</option>
<option value = "Free Thinking. Inquiry and curiosity are the pillars of progress.">
Free Thinking. Inquiry and curiosity are the pillars of progress.</option>
<option value = "Power. Solitude and contemplation are paths towards mystical or magical power.">
Power. Solitude and contemplation are paths towards mystical or magical power.</option>
<option value = "Live and Let Live. Meddling in the affaris of others only causes trouble.">
Live and Let Live. Meddling in the affaris of others only causes trouble.</option>
<option value = "Self-Knowledge. If you know yourself, there's nothing left to know.">
Self-Knowledge. If you know yourself, there's nothing left to know.</option>
</select><br>


<b>Bond</b><br>
<select name = "bond">
<option value = "Nothing is more important than the other members of my hermitage, order, or association.">
Nothing is more important than the other members of my hermitage, order, or association.</option>
<option value = "I entered seclusion to hide from the ones who might still be hunting me. I must someday confront them.">
I entered seclusion to hide from the ones who might still be hunting me. I must someday confront them.</option>
<option value = "I'm still seeking the enlightenment I pursued in seclusion, and it still eludes me.">
I'm still seeking the enlightenment I pursued in seclusion, and it still eludes me.</option>
<option value = "I entered seclusion because I loved someone I could not have.">
I entered seclusion because I loved someone I could not have.</option>
<option value = "Should my discovery come to light, it could bring ruin to the world.">
Should my discovery come to light, it could bring ruin to the world.</option>
<option value = "My isolation gave me insight into a great evil that only I can destroy.">
My isolation gave me insight into a great evil that only I can destroy.</option>
</select><br>

<b>Flaw</b><br>
<select name = "flaw">
<option value = "Now that I've returned to the world, I enjoy its delights a little too much.">
Now that I've returned to the world, I enjoy its delights a little too much.</option>
<option value = "I harbor dark, bloodthirsty thoughts that my isolation and meditation failed to quell.">
I harbor dark, bloodthirsty thoughts that my isolation and meditation failed to quell.</option>
<option value = "I am dogmatic in my thoughts and philosophy.">
I am dogmatic in my thoughts and philosophy.</option>
<option value = "I let my need to win arguments overshadow friendships and harmony.">
I let my need to win arguments overshadow friendships and harmony.</option>
<option value = "I'd risk too much to uncover a lost bit of knowledge.">
I'd risk too much to uncover a lost bit of knowledge.</option>
<option value = "I like keeping secrets and won't share them with anyone.">
I like keeping secrets and won't share them with anyone.</option>
</select><br><br>

<input type="submit" id = "fixedbutton">
</div>
</form>

</body>
</html>



