<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
	<% 
	session.getAttribute("player4");
	coursework player = (coursework)session.getAttribute("player4");
%>
<h1>Bram's character creator</h1>
	<h2>
		Ability Scores
		</h2>
<div id = "align"><!-- centralise all text -->
<center><!-- centralise the buttons -->
	<a href="randAbil.jsp"><button type="button">Random?</button></a><!-- link to the random ability score page -->
</center>
	Use numbers as though you had rolled dice and used those values<br><br>
<center>
	<a href ="preset.jsp"><button type="button">Preset?</button></a><!-- link to the preset ability score page -->
</center>
	use the standard number<br><br>
<center>
	<a href ="pointBought.jsp"><button type="button">Point bought?</button></a><!-- link to the point bought ability score page -->
</center>
	use custom numbers by spending points<br><br>
</div>

</body>
</html>