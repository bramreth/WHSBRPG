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
    <%@ page import="com.google.appengine.api.datastore.Query.CompositeFilter"%><!-- import datastore classes -->
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="helper" class="helper.login" scope="page" />
<html>
<head>
<link rel="stylesheet" type="text/css" href="printDisplay.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
<%
DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
String username = (String)session.getAttribute("username");
int save = (Integer)session.getAttribute("save");
coursework player = (coursework)helper.getCharacter(username, save);//get correct save as an object
if(player.spellDC == 111){//default spellDC if the class is not a spellcaster
	response.sendRedirect("CharacterViewer.jsp");//if the player is not a spellcaster redirect away from the page
}
%>
</head>
<body>

<img id = "sheet" src = "/resources/file-page3.jpg" alt = "character sheet" height = "1122" width = "794"> 
<!-- get character spellcasting sheet image from the resources folder -->

<!-- output tags to the correct place on the page with css -->
<h5 id = "Sclass">
<%
try{
	out.println(player.Class);
}catch(Exception e){
}
%>
</h5>
<h5 id = "Sabil">
<%
try{
	out.println(player.spellAbil);
}catch(Exception e){
}
%>
</h5>
<h5 id = "SDC">
<%
try{
	out.println(player.spellDC);
}catch(Exception e){
}
%>
</h5>
<h5 id = "Sbonus">
<%
try{
	if(player.spellMod>0){
		out.println("+" +player.spellMod);
	}else{
		out.println(player.spellMod);
	}
}catch(Exception e){
}
%>
</h5>
<a href="javascript:window.print()" id = "btn">click this link, right click and print, or use ctrl + p</a><!-- this button prints the page -->
</body>
</html>