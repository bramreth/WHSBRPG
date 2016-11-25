<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="backgroundJ.js"></script><!-- import all relevant information loaders -->
<script src="valid.js"></script><!-- import checkbox validator -->
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
<% 
	session.getAttribute("player2");//get up to date version
	coursework player = (coursework)session.getAttribute("player2");//create a local version of the object for setting more values
	int selectedItem = 0;//initialised choice variables
	String choice = "";
	String choice2 = "";
	if (request.getParameter("background") != null) {
		selectedItem = Integer.parseInt(request.getParameter("background"));//get chosen background
	}	

	switch(selectedItem){//switch with chosen background
	case 0://acolyte
		if (request.getParameter("langH") != null) {//acolytes choose two languages
			try{//catch errors, e.g. too many or few selections
				String[] a = request.getParameterValues("langH");//get languages as an array
				choice = a[0];//set choices as each value in the array
				choice2 = a[1];
				player.Acolyte(choice, choice2);//set the acolyte values with the language parameters
				session.setAttribute("player3", player);//set current object as a session variable
				response.sendRedirect("acolyte.jsp");//redirect the user to the acolyte page for more background specific choices
				break;
			}catch(Exception e){
		}
		}
	case 1://charlatan
		if (request.getParameter("scam") != null) {//choose scam tools
			choice = request.getParameter("scam");
			player.Charlatan(choice);//set charlatan
			session.setAttribute("player3", player);//set session object
			response.sendRedirect("charlatan.jsp");//redirect
		}
		break;
	case 2://criminal
		if (request.getParameter("game") != null) {//choose proficiency in a game set
			choice = request.getParameter("game");
			player.Criminal(choice, false);//criminal setter, false as it isn't the variant background
			session.setAttribute("player3", player);//set session object
			response.sendRedirect("criminal.jsp");//redirect
		}
		break;
	case 3://entertainer
		if (request.getParameter("inst") != null) {
			choice = request.getParameter("inst");//get chosen instrument
			player.Entertainer(choice, false);//setter, not variant so false parameter
			session.setAttribute("player3", player);//set session object
			response.sendRedirect("entertainer.jsp");//redirect
		}
		break;
	case 4://folk hero
		if (request.getParameter("artisan") != null) {
			choice = request.getParameter("artisan");//get artisan tools
			player.FolkHero(choice);//set folk hero with parameters
			session.setAttribute("player3", player);
			response.sendRedirect("folkHero.jsp");//redirect
		}
		break;
	case 5://guild artisan
		if (request.getParameter("artisan") != null) {
			choice = request.getParameter("artisan");//get artisan tools
			if (request.getParameter("langH") != null) {
				choice2 = request.getParameter("langH");//get chosen language
				player.GuildArtisan(choice, choice2, false);//setter with parameters, not variant so false
				session.setAttribute("player3", player);
				response.sendRedirect("guildArtisan.jsp");//redirect
			}
		}
		break;
	case 6://hermit
		if (request.getParameter("langH") != null) {
			choice = request.getParameter("langH");//get chosen language
			player.Hermit(choice);//set as hermit with language as parameter
			session.setAttribute("player3", player);
			response.sendRedirect("hermit.jsp");//redirect
		}
		break;
	case 7://noble
		if (request.getParameter("game") != null) {
			choice = request.getParameter("game");//get game set
			if (request.getParameter("langH") != null) {
				choice2 = request.getParameter("langH");//get chosen language
				player.Noble(choice, choice2, false);//setter with parameters and false as it isnt the variant
				session.setAttribute("player3", player);
				response.sendRedirect("noble.jsp");//redirect
			}
		}
		break;
	case 8://outlander
		if (request.getParameter("inst") != null) {
			choice = request.getParameter("inst");//get chosen instrument
			if (request.getParameter("langH") != null) {
				choice2 = request.getParameter("langH");//get chosen language
				player.Outlander(choice, choice2);//setter with parameters
				session.setAttribute("player3", player);
				response.sendRedirect("outlander.jsp");//redirect
			}
		}
		break;
	case 9://sage
		if (request.getParameter("langH") != null) {
			try{
				String[] a = request.getParameterValues("langH");//get two chosen languages
				choice = a[0];
				choice2 = a[1];
				player.Sage(choice, choice2);//setter with two parameters
				session.setAttribute("player3", player);
				response.sendRedirect("sage.jsp");//redirect
			}catch(Exception e){
			}
		}
		break;
	case 10://sailor
		player.Sailor(false);//setter for sailor, not variant
		session.setAttribute("player3", player);
		response.sendRedirect("sailor.jsp");//redirect
		break;
	case 11://soldier
		if (request.getParameter("game") != null) {
			choice = request.getParameter("game");//get chosen game set
			player.Soldier(choice);//setter with parameter
			session.setAttribute("player3", player);
			response.sendRedirect("soldier.jsp");//redirect
		}
		break;
	case 12://urchin
		player.Urchin();//setter
		session.setAttribute("player3", player);
		response.sendRedirect("urchin.jsp");//redirect
		break;
	//variants
	case 21://criminal variant, spy
		if (request.getParameter("game") != null) {
			choice = request.getParameter("game");//get chosen game set
			player.Criminal(choice, true);//setter with game parameter and variant true
			session.setAttribute("player3", player);
			response.sendRedirect("criminal.jsp");//redirect
		}
		break;
	case 22://entertainer variant, gladiator
		if (request.getParameter("inst") != null) {
			choice = request.getParameter("inst");//get chosen instrument
			player.Entertainer(choice, true);//setter with parameter and variant true
			session.setAttribute("player3", player);
			response.sendRedirect("entertainer.jsp");//redirect
		}
		break;
	case 23://guild artisan variant, guild merchant
		if (request.getParameter("artisan") != null) {
			choice = request.getParameter("artisan");//get artisan tools
			if (request.getParameter("langH") != null) {
				choice2 = request.getParameter("langH");//get chosen language
				player.GuildArtisan(choice, choice2, true);//setter with parameters and variant set to true
				session.setAttribute("player3", player);
				response.sendRedirect("guildArtisan.jsp");//redirect
			}
		}
		break;
	case 24://noble variant, knight
		if (request.getParameter("game") != null) {
			choice = request.getParameter("game");//chosen game set
			if (request.getParameter("langH") != null) {
				choice2 = request.getParameter("langH");//chosen language
				player.Noble(choice, choice2, true);//setter with variant set to true
				session.setAttribute("player3", player);
				response.sendRedirect("noble.jsp");//redirect
			}
		}
		break;
	case 25://sailor variant pirate
		player.Sailor(true);//setter, variant true
		session.setAttribute("player3", player);
		response.sendRedirect("sailor.jsp");//redirect
		break;
	}

%>
<div id="navcontainer"><!-- top of page nav bar -->
		<ul class="navigation">
			<li id="active"><a href="race.jsp">Character Creator</a></li>
			<li><a href="CharacterViewer.jsp" id="current">Character Viewer</a></li>
		</ul>
	</div>
<h1>Bram's character creator</h1>
	<h2>
		Background
		</h2>
		<form><!-- form for background choice -->
			<div align = "center"><!-- centralised to keep to the layout -->
			<input type="radio" name="background" id="Acolyte" value="0" onclick = "acol();checkboxlimit(langH, 2)" >Acolyte <br>
			<!-- background radio buttons, with imported methods from backgroundJ for generating radio and checkbox buttons -->
			<!-- imported valid js page with validation for limiting checkboxes to two choices -->
			<input type="radio" name="background" id="Charlatan" value="1" onclick = "char();">Charlatan <br>
			<input type="radio" name="background" id="Criminal" value="2" onclick = "crim();">Criminal 
			<input type="radio" name="background" id="spy" value="21" onclick = "crim();">Spy <br>
			<!-- variants are on the same line as their regular counterparts -->
			<input type="radio" name="background" id="Entertainer" value="3" onclick = "ent();" >Entertainer 
			<input type="radio" name="background" id="Gladiator" value="22" onclick = "ent();">Gladiator <br>
			<input type="radio" name="background" id="FolkHero" value="4" onclick = "folk();" >Folk Hero <br>
			<input type="radio" name="background" id="GuildArisan" value="5" onclick = "guild();">Guild Arisan 
			<input type="radio" name="background" id="GuildMerchant" value="23" onclick = "guild();">Guild Merchant<br>
			<input type="radio" name="background" id="Hermit" value="6" onclick = "herm();">Hermit <br>
			<input type="radio" name="background" id="Noble" value="7" onclick = "nob();">Noble 
			<input type="radio" name="background" id="Knight" value="24" onclick = "nob();knight()">Knight<br>
			<input type="radio" name="background" id="Outlander" value="8" onclick = "outlander();">Outlander <br>
			<input type="radio" name="background" id="Sage" value="9" onclick = "sage();">Sage <br>
			<input type="radio" name="background" id="Sailor" value="10" onclick = "sailor();">Sailor 
			<input type="radio" name="background" id="Pirate" value="25" onclick = "sailor();pirate()">Pirate <br>
			<input type="radio" name="background" id="Soldier" value="11" onclick = "sold();">Soldier <br>
			<input type="radio" name="background" id="Urchin" value="12" onclick = "urch();">Urchin <br><br>
			</div>
			<h3 align="center"> proficiencies: </h3><!-- divs for backgroundJ to add info and options to -->
			<div id = "profBox" align="center"></div>
			<div id = "objProf" align="center"></div>
			<h3 align="center"> languages: </h3>
			<div  align="center">current languages: <%= player.languages %> </div><br><!-- tell the player what languages they know -->
			<!-- should help avoid players picking the same language twice -->
			<div id = "lang" align="center"></div>
			<div id = "objLang" align="center"></div>
			<h3 align="center"> equipment: </h3>	
			<div id = "equipment" align="center"></div>
			<div id = "objEquip" align="center"></div>
			<h3 align="center"> feature: </h3>
			<div id = "feature" align="center"></div>
			<div align = "center">
			<input type="submit" id = "fixedbutton"><!-- submi button -->
			</div>
			</form>
</body>
</html>