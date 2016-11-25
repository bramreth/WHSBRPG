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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%><!-- import all appspot  -->
<jsp:useBean id="helper" class="helper.login" scope="page" /><!-- create a Bean for the helper class for datastore useage -->
<!--localhost:8888/_ah/admin/datastore url for local datastore when testing-->
<!DOCTYPE html>
<html>
<script type="text/javascript"></script>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css"><!-- load css page -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body OnLoad="document.login.username.focus();"><!-- focus selection on username panel -->

	<%
		String u = "";//initialise all variables for holding user username and password choices
		String p1 = "";
		String p2 = "";

		try {//catch errors
			if(request.getParameter("username") != null && request.getParameter("password1") 
					!= null && request.getParameter("password2") != null){
			if(request.getParameter("username") != "" && request.getParameter("password1")!= "" 
					&& request.getParameter("password2") != ""){//check that values have been entered
			u =  request.getParameter("username");//set initialised vairables to values put in the fields
			p1 = request.getParameter("password1");
			p2 = request.getParameter("password2");
			if(helper.nameFree(u)){//use the helper bean to check if the name is already on the datastore
			if (p1.equals(p2)) {//check if the two enterred passwords are identical
				DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();//standard datastore functions
				Key loginKey = KeyFactory.createKey("login", "id");
				Entity user = new Entity("login");//create a new entity for saving username and password
				Entity character = new Entity("character");//create a new entity for saving characters to this account
				user.setProperty("username", u);//add the username entered to the entity under the username column
				user.setProperty("password", p1);//add the password to the entity under the password collumn
				datastore.put(user);//add the entity to the datastore
				character.setProperty("owner", u);//add the username to the owner collumn of the character entity
				datastore.put(character);//add the entity to the datastore
				response.sendRedirect("index.jsp");//redirect the user to the login page
			} else {//need username/password
				out.println("your passwords are not identical");
			}
			}else{//password is taken
				out.println("The username: " + u + " is taken");
			}
			}
			}
		} catch (Exception e) {
			System.out.println("error " + e);//output unexpected error to console
		}
	%>
	
	
	
		<h2 style =text-align:center;>create account</h2>
		<form method="post" name="login">
		<div id = "align">
		<br /> <div style = "position: relative; right: 1.5px">Username:<input type="text" name="username"></div>
		<br /><div>Password:<input type="password" name="password1"></div><!-- style attributes adjust the location of the textboxes aligning them -->
		<br /> <div style = "position: relative; right: 33px">Re-enter Password:<input type="password" name="password2" ></div>
		<br /> <input type="submit" value="Submit">
		</div>
		</form>
		<!-- standard form for entering a username and two entries of a password -->
	
</body>
</html>


