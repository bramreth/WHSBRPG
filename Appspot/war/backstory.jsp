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
<h1>Bram's character creator</h1>
	<h2>
		Backstory
		</h2>
<% 
session.getAttribute("player4");//get latest object
coursework player = (coursework)session.getAttribute("player4");//make useable
if (request.getParameter("backstory") != null) {
	if (request.getParameter("backstory") != ""){//check a backstory was entered
		if(request.getParameter("backstory").length() <490){//check the backstory wasn't longer than 490 characters due to google datastore constraints
			try{
				player.backstory = request.getParameter("backstory");//set player backstory to what was enterred
				session.setAttribute("player5", player);
				response.sendRedirect("abilChoice.jsp");//redirect to next page
			}catch(Exception e){
			}
		}else{
		out.println("backstory limmited to 490 characters");//output the user enterred too many characters
		}
	}
}
%>
		<form>
		<div id = "align">
		<textarea name="backstory" style="width: 300px; height: 450px;"></textarea><br><br><!-- create text area for bakcstory input -->
		<input type="submit" id = "fixedbutton"><!-- submit button -->
		</div>
		</form>
</body>
</html>