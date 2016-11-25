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


			<b>Personality trait</b><br> <select name="personality">

				<option value="My friends know they can rely on me, no matter what.">
					My friends know they can rely on me, no matter what.</option>

				<option
					value="I work hard so that I can play hard when the work is done.">
					I work hard so that I can play hard when the work is done.</option>

				<option
					value="I enjoy sailing into new ports and making new friends over a flagon of ale.">
					I enjoy sailing into new ports and making new friends over a flagon
					of ale.</option>

				<option value="I stretch the truth for the sake of a good story.">
					I stretch the truth for the sake of a good story.</option>

				<option
					value="To me, a tavern brawl is a nice way to get to know a new city.">
					To me, a tavern brawl is a nice way to get to know a new city.</option>

				<option value="I never pass up a friendly wager.">I never
					pass up a friendly wager.</option>

				<option value="My language is as foul as an otyugh nest.">
					My language is as foul as an otyugh nest.</option>

				<option
					value="I like a job well done, especially if I can convince someone else to do it.">
					I like a job well done, especially if I can convince someone else
					to do it.</option>

			</select><br> <b>Ideal</b><br> <select name="ideal">

				<option
					value="Respect. The thing that keeps a ship together is mutual respect between captain and crew.">
					Respect. The thing that keeps a ship together is mutual respect
					between captain and crew</option>

				<option
					value="Fairness. We all do the work, so we all share in the rewards.">
					Fairness. We all do the work, so we all share in the rewards.</option>

				<option
					value="Freedom. The sea is freedom - the freedom to go anywhere and do anything.">
					Freedom. The sea is freedom - the freedom to go anywhere and do
					anything.</option>

				<option
					value="Mastery. I'm a predator, and the other ships on the sea are my prey.">
					Mastery. I'm a predator, and the other ships on the sea are my
					prey.</option>

				<option
					value="People. I'm committed to my crewmates, not to ideals.">
					People. I'm committed to my crewmates, not to ideals.</option>

				<option
					value="Aspiration. Someday I'll own my own ship and chart my own destiny.">
					Aspiration. Someday I'll own my own ship and chart my own destiny.</option>

			</select><br> <b>Bond</b><br> <select name="bond">

				<option
					value="I'm loyal to my captain first, everything else second.">
					I'm loyal to my captain first, everything else second.</option>

				<option
					value="The ship is most important - crewmaes and captains come and go.">
					The ship is most important - crewmaes and captains come and go.</option>

				<option value="I'll always remember my first ship.">I'll
					always remember my first ship.</option>

				<option
					value="In a harbor town, I have a paramour whose eyes nearly stole me from the sea.">
					In a harbor town, I have a paramour whose eyes nearly stole me from
					the sea.</option>

				<option
					value="I was cheated out of my fair share of the profits, and I want to get my due.">
					I was cheated out of my fair share of the profits, and I want to
					get my due.</option>

				<option
					value="Rutheless pirates murdered my captain and crewmates, plundered our ship, and left me to die. Vengeance will be mine.">
					Rutheless pirates murdered my captain and crewmates, plundered our
					ship, and left me to die. Vengeance will be mine.</option>

			</select><br> <b>Flaw</b><br> <select name="flaw">

				<option value="I follow orders, even if I think they're wrong.">
					I follow orders, even if I think they're wrong.</option>

				<option value="I'll say anything to avoid having to do extra work.">
					I'll say anything to avoid having to do extra work.</option>

				<option
					value="Once someone questions my courage, I never back down no matter how dangerous the situation.">
					Once someone questions my courage, I never back down no matter how
					dangerous the situation.</option>
				<option value="once I start drinking, it's hard for me to stop.">
				once I start drinking, it's hard for me to stop.</option>

				<option
					value="I can't help but pocket loose coins and other trinkets I come across.">
					I can't help but pocket loose coins and other trinkets I come
					across.</option>

				<option value="My pride will probably lead to my destruction.">
					My pride will probably lead to my destruction.</option>


			</select><br> <br> <input type="submit" id="fixedbutton">
	</div>
</form>
</body>
</html>



