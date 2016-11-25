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
    <%@ page import="com.google.appengine.api.datastore.Query.CompositeFilter"%><!-- imports datastore classes -->
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:useBean id="helper" class="helper.login" scope="page" /><!-- helper bean -->
<html>
<head>
<link rel="stylesheet" type="text/css" href="printDisplay.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
<%
DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
String username = (String)session.getAttribute("username");
int save = (Integer)session.getAttribute("save");
coursework player = (coursework)helper.getCharacter(username, save);//gets the correct character as an object
%>
</head>
<body>

<img id = "sheet" src = "/resources/file-page2.jpg" alt = "character sheet" height = "1122" width = "794">
<!-- displays the second character sheet from the resources folder -->

<!-- tags display the information for this page using css to put them in the right location -->
<h5 id = "name2">
<%
try{
	out.println(player.pName);
}catch(Exception e){
}
%>
</h5>
<h5 id = "age">
<%
try{
	out.println(player.age);
}catch(Exception e){
}
%>
</h5>
<h5 id = "height">
<%
try{
	out.println(player.realH);
}catch(Exception e){
}
%>
</h5>
<h5 id = "weight">
<%
try{
	out.println(player.realW);
}catch(Exception e){
}
%>
</h5>
<h5 id = "eyes">
<%
try{
	out.println(player.eyes);
}catch(Exception e){
}
%>
</h5>
<h5 id = "skin">
<%
try{
	out.println(player.skin);
}catch(Exception e){
}
%>
</h5>
<h5 id = "hair">
<%
try{
	out.println(player.hair);
}catch(Exception e){
}
%>
</h5>
<h4 id = "backstory">
<%
try{
	out.println(player.backstory);
}catch(Exception e){
}
%>
</h4>
<a href="javascript:window.print()" id = "btn">click this link, right click and print, or use ctrl + p</a><!-- this button prints the page -->
</body>
</html>