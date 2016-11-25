<%@page import="cc.coursework, cc.processing"%>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory"%>
    <%@ page import="com.google.appengine.api.datastore.DatastoreService"%>
    <%@ page import="com.google.appengine.api.datastore.Query"%>
    <%@ page import="com.google.appengine.api.datastore.Entity"%>
    <%@ page import="com.google.appengine.api.datastore.FetchOptions"%>
    <%@ page import="com.google.appengine.api.datastore.Key"%>
    <%@ page import="com.google.appengine.api.datastore.KeyFactory"%>
    <%@ page import="com.google.appengine.api.datastore.Query.Filter"%>
    <%@ page import="com.google.appengine.api.datastore.Query.FilterOperator"%>
    <%@ page import="com.google.appengine.api.datastore.Query.FilterPredicate"%>
    <%@ page import="com.google.appengine.api.datastore.Query.CompositeFilter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!-- import datastore classes -->
<!DOCTYPE html>
<jsp:useBean id="helper" class="helper.login" scope="page" /><!--  -->
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
<% 
	String username = (String)session.getAttribute("username");//get username
	
	if (request.getParameter("save") != null && request.getParameter("sheet") != null){
		int save = Integer.parseInt(request.getParameter("save"));
		session.setAttribute("save", save);//set the chosen save slot as a session attribute, so the print pages output the correct character slot
		if(request.getParameter("sheet").equals("1")){
			response.sendRedirect("print.jsp");//if the main sheet was selectd send to the amin sheet
		}
		if(request.getParameter("sheet").equals("2")){
			response.sendRedirect("print2.jsp");//if the second sheet was selected redirect to the second sheet
		}
		if(request.getParameter("sheet").equals("3")){
			response.sendRedirect("print3.jsp");//if the third sheet was selected, redirect to the third sheet
		}
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
		Character Viewer
		</h2>
	<div id = "save">
	<form><!-- radio buttons to choose the wanted save slot -->
	<input type="radio" name="save"  value="1" >save slot 1
	<input type="radio" name="save"  value="2">save slot 2
	<input type="radio" name="save"  value="3" >save slot 3
	<input type="radio" name="save"  value="4">save slot 4
	<input type="radio" name="save"  value="5" >save slot 5
	<br><br><!-- radio buttons to choose the wanted sheet -->
	<input type="radio" name="sheet"  value="1" onclick = "">main sheet
	<input type="radio" name="sheet"  value="2"onclick = "">background sheet
	<input type="radio" name="sheet"  value="3"onclick = "">spell sheet
	<br><input type="submit" id = "fixedbutton"><!-- submit button -->
	</form>
	</div>

</body>
</html>