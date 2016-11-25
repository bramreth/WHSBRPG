<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<script src="valid.js"></script><!-- import checkbox validation function -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
<% 
	session.getAttribute("player6");
	coursework player = (coursework)session.getAttribute("player6");//get latest object
	int s1 = 0;//initialised choice variables
	int s2 = 0;
	int s3 = 0;
	int s4 = 0;
	String i1 = "";
	String i2 = "";
	String i3 = "";
	boolean flag1 = false;
	boolean flag2 = false;
	boolean flag3 = false;
	boolean flag4 = false;
	if (request.getParameter("skill") != null) {
		try{
			String[] a = request.getParameterValues("skill");
			s1 = Integer.parseInt(a[0]);//get four proficiency choices
			s2 = Integer.parseInt(a[1]);
			s3 = Integer.parseInt(a[2]);
			s4 = Integer.parseInt(a[3]);
			flag1 = true;
		}catch(Exception e){
		}
	}
	if (request.getParameter("item1") != null) {
			i1 = request.getParameter("item1");//get item 1
			flag2 = true;
	}
	if (request.getParameter("item2") != null) {
			i2 = request.getParameter("item2");//get item 2
			flag3 =true;
	}
	if (request.getParameter("item3") != null) {
		i3 = request.getParameter("item3");//get item 3
		flag4 =true;
	}
	
	if(flag1 == true && flag2 == true && flag3 == true
			&& flag4 == true){//if all choices are made
		player.rogue(s1, s2, s3, s4, i1, i2, i3);//ste object as rogue with all parameters
		session.setAttribute("tempPlayer", player);//set temporary attribute object
		response.sendRedirect("rogueExpertise.jsp");//redirect to rogue specific further choices
	}
	%>
<div id="navcontainer"><!-- navigation bar -->
		<ul class="navigation">
			<li id="active"><a href="race.jsp">Character Creator</a></li>
			<li><a href="CharacterViewer.jsp" id="current">Character Viewer</a></li>
		</ul>
	</div>
<h1>Bram's character creator</h1>
	<h2>
		Rogue</h2>
	<form>
	<div id = "align">
	<h3>Skills:</h3>
	<b>choose four skills:</b><br><!-- proficiency choices -->
	<input type="checkbox" name="skill"  value="1"onclick = "checkboxlimit(skill,4);">acrobatics<!-- limitted to four choices -->
	<input type="checkbox" name="skill"  value="2" onclick = "checkboxlimit(skill,4);">athletics
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,4);">deception
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,4);">insight
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,4);">intimidation
	<input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,4);">investigation<br>
	<input type="checkbox" name="skill"  value="7"onclick = "checkboxlimit(skill,4);">perception
	<input type="checkbox" name="skill"  value="8"onclick = "checkboxlimit(skill,4);">performance
	<input type="checkbox" name="skill"  value="9"onclick = "checkboxlimit(skill,4);">persuasion
	<input type="checkbox" name="skill"  value="10"onclick = "checkboxlimit(skill,4);">sleight of hand
	<input type="checkbox" name="skill"  value="11"onclick = "checkboxlimit(skill,4);">stealth
	<br>
	<h3>Equipment:</h3>
	<p>first weapon:</p><!-- item 1 radio buttons -->
	<input type="radio" name="item1"  value=", rapier">rapier <b> or </b>
	<input type="radio" name="item1"  value=", shortsword">shortsword
	<p>second weapon:</p><!-- item 2 radio buttons -->
	<input type="radio" name="item2"  value=", shortbow and quiver of 20 arrows">a shortbow and quiver of 20 arrows <b> or </b>
	<input type="radio" name="item2"  value=", shortsword">shortsword
	<p>pack:</p><!-- item 3 radio buttons -->
	<input type="radio" name="item3"  value=", burglar's pack">A burglar's pack <b> or </b>
	<input type="radio" name="item3"  value=", dungeoneer's pack">A dungeoneer's pack <b> or </b>
	<input type="radio" name="item3"  value=", explorer's pack">An explorer's pack
	<br><br>
	<input type="submit" id = "fixedbutton"><!-- submit button -->
	</div>
	</form>
</body>
</html>

