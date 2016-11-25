<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <jsp:useBean id="helper" class="helper.login" scope="page" /><!-- allows the helper datastore class to be used  -->
	
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title><!-- sets title -->
</head>
<body OnLoad="document.login.username.focus();"><!-- focuses on the username field -->

	<%
		String u = "";//username variable
		String p = "";//password variable

		try {//attempts to get the username and password and check if the account exists
			if(request.getParameter("username") != null && request.getParameter("password") != null
			//check the username and password has been submitted
					&& request.getParameter("username") != "" && request.getParameter("password") != ""){
				//check the username and password isnt blank
			u = request.getParameter("username");//set temporary username and password variables
			p = request.getParameter("password");
			if (helper.checkLogin(u, p)) {//call helper function to check if that username and password exist in the datastore
				session.setAttribute("username", u);//set the username as an attribute so the rest of the program knows the user
				response.sendRedirect("race.jsp");//as the username and password are correct send the user to the first page of character creation
			} else {//need username/password
				out.println("your username or password is incorrect");//incorrect username or password message
			}
			}
			
		} catch (Exception e) {//catch error
			out.println("problem in getting u and p"+e);//print error to the system
		}
	%>
	
	<form name="login"><!-- form for jsp processing -->
	<div id = "align"><!--  centered signup details -->
		<h2>Signup Details</h2> <!-- header -->
			<br /><div> Username:<input type="text" name="username" class="input"></div> <!-- input text fields -->
			<br /><div style = "position: relative; left: 1.5px"> Password:<input type="password" name="password" class="input"></div> <!-- input password field -->
			<br /> <input type="submit" value="Submit" class="input"><!-- submit button -->
		
		<a class = "align" href="/account.jsp">Create account</a><!-- link to create account page -->
	</div>
	</form>
	
</body>
</html>


