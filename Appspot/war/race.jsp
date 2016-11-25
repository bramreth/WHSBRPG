<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script type="text/javascript"></script>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<script src="radio.js"></script>
<!-- import the dynamic radio buttons and choice information -->
<script src="valid.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
	<%
		coursework player = new coursework();//instances the coursework class so that an object for the character can be made to set the values of
		//initialised and declared variables for holding choices
		int selectedTool = 0;
		int selectedAncestry = 0;
		int selectedLanguage = 0;
		int selectedprof = 0;
		int abil1 =0;
		int abil2 =0;
		int prof1 = 0;
		int prof2 = 0;
		String tool = null;
		String lang = null;
		String ancestor = null;
		int prof = 1;
			int selectedItem = 0;
			if (request.getParameter("race") != null) {//on form submission get the value of the race, so the correct setter method can be run
				selectedItem = Integer.parseInt(request.getParameter("race"));//convert the string value to a useable integer
			}		
				
		switch(selectedItem){//switch the selected race integer
			case 0://if 0 the race is a high elf
					if (request.getParameter("language") != null) {//if a high elf then language radio buttons have been created
						selectedLanguage = Integer.parseInt(request.getParameter("language"));//get chosen language from new radio buttons
						switch (selectedLanguage) {//switch chosen language integer
							case 0://the 0 option was Dwarvish so the parameter for the High elf setter method is set to dwarf
								lang ="Dwarvish";
								break;
							case 1://etc
								lang = "Giant";
								break;
							case 2:
								lang = "Gnomish";
								break;
							case 3:
								lang = "Goblin";
								break;
							case 4:
								lang = "Halfling";
								break;
							case 5:
								lang = "Orc";
								break;
							case 6:
								lang = "Abyssal";
								break;
							case 7:
								lang = "Celestial";
								break;
							case 8:
								lang = "Draconic";
								break;
							case 9:
								lang = "Deep Speech";
								break;
							case 10:
								lang = "Infernal";
								break;
							case 11:
								lang = "Primordial";
								break;
							case 12:
								lang = "Sylvan";
								break;
							case 13:
								lang = "Undercommon";
								break;					
							}
						player.reset();//reset character choices incase the user returns to this page and rechooses race
						player.HighElf(lang);//setter method for high elf race with language parameters
						session.setAttribute("player1", player);//set the object of user choices as a session varaible for use on later pages
						response.sendRedirect("nameAppearance.jsp");//redirect to the next page for further choices
						}		
				
				break;
			case 1://wood elf, no parameters
				player.reset();//reset choices
				player.WoodElf();//wood elf setter method
				session.setAttribute("player1", player);//set object as session variable
				response.sendRedirect("nameAppearance.jsp");//redirect
				break;
			case 2://dark elf, no parameters
				player.reset();//standard setter, session and redirect
				player.DarkElf();
				session.setAttribute("player1", player);
				response.sendRedirect("nameAppearance.jsp");
				break;
			case 3://hill dwarf
					if (request.getParameter("tool") != null) {
						selectedTool = Integer.parseInt(request.getParameter("tool"));//get integer from created tool radio buttons
						switch (selectedTool) {//switch on choice
							case 0:
								tool ="smith's tools";//set parameters depending on choice
								break;
							case 1:
								tool = "brewer's supplies";
								break;
							case 2:
								tool = "mason's tools";
								break;
		
						}
						player.reset();//reset
						player.HillDwarf(tool);//setter method with chosen tool as parameter
						session.setAttribute("player1", player);//set object as session variable
						response.sendRedirect("nameAppearance.jsp");//redirect to next page
					}
				break;
			case 4://mountain dwarf, same as hill dwarf with a different setter
					if (request.getParameter("tool") != null) {
						selectedTool = Integer.parseInt(request.getParameter("tool"));
						switch (selectedTool) {
							case 0:
								tool ="smith's tools";
								break;
							case 1:
								tool = "brewer's supplies";
								break;
							case 2:
								tool = "mason's tools";
								break;
								
						}
						player.reset();
						player.MountainDwarf(tool);//mountain dwarf setter
						session.setAttribute("player1", player);
						response.sendRedirect("nameAppearance.jsp");
					}
				break;
			case 5://lightfoot halfling, no parameters
				player.reset();
				player.LightfootHalfling();
				session.setAttribute("player1", player);
				response.sendRedirect("nameAppearance.jsp");
				break;
			case 6://Stout halfling, no parameters
				player.reset();
				player.StoutHalfling();
				session.setAttribute("player1", player);
				response.sendRedirect("nameAppearance.jsp");
				break;
			case 7: //human
				if (request.getParameter("langH") != null) {
					selectedLanguage = Integer.parseInt(request.getParameter("langH"));//get chosen language from generated radio buttons
					switch (selectedLanguage) {
						case 0://depending on chosen radio button set set the language parameter
							lang ="Dwarvish";
							break;
						case 1:
							lang = "Elven";
							break;
						case 2:
							lang = "Giant";
							break;
						case 3:
							lang = "Gnomish";
							break;
						case 4:
							lang = "Goblin";
							break;
						case 5:
							lang = "Halfling";
							break;
						case 6:
							lang = "Orc";
							break;
						case 7:
							lang = "Abyssal";
							break;
						case 8:
							lang = "Celestial";
							break;
						case 9:
							lang = "Draconic";
							break;
						case 10:
							lang = "Deep Speech";
							break;
						case 11:
							lang = "Infernal";
							break;
						case 12:
							lang = "Primordial";
							break;
						case 13:
							lang = "Sylvan";
							break;
						case 14:
							lang = "Undercommon";
							break;					
						}
					player.reset();
					player.Human(lang);//set with language parameter
					session.setAttribute("player1", player);
					response.sendRedirect("nameAppearance.jsp");
					}
				break;
			case 8://dragonborn
				if (request.getParameter("dragon") != null) {
					selectedAncestry = Integer.parseInt(request.getParameter("dragon"));//get selected radio button choice for switch
					switch (selectedAncestry) {
						case 0://if the black button is selected set the parameter to black
							ancestor ="black";
							break;
						case 1://etc
							ancestor = "blue";
							break;
						case 2:
							ancestor = "brass";
							break;
						case 3:
							ancestor ="bronze";
							break;
						case 4:
							ancestor = "copper";
							break;
						case 5:
							ancestor = "gold";
							break;
						case 6:
							ancestor ="green";
							break;
						case 7:
							ancestor = "red";
							break;
						case 8:
							ancestor = "silver";
							break;
						case 9:
							ancestor ="white";
							break;
					}
					player.reset();
					player.Dragonborn(ancestor);//set to dragonborn with parameter
					session.setAttribute("player1", player);
					response.sendRedirect("nameAppearance.jsp");
				}
				break;
			case 9://forest gnome,no parameters
				player.reset();
				player.ForestGnome();
				session.setAttribute("player1", player);
				response.sendRedirect("nameAppearance.jsp");
				break;
			case 10://rock gnome, no parameters
				player.reset();
				player.RockGnome();
				session.setAttribute("player1", player);
				response.sendRedirect("nameAppearance.jsp");
				break;
	case 11://halfelf, many parameters
		if (request.getParameter("language") != null) {
			selectedLanguage = Integer.parseInt(request.getParameter("language"));//get chosen language
			switch (selectedLanguage) {
		case 0:
			lang ="Dwarvish";//set language parameter
			break;
		case 1:
			lang = "Giant";
			break;
		case 2:
			lang = "Gnomish";
			break;
		case 3:
			lang = "Goblin";
			break;
		case 4:
			lang = "Halfling";
			break;
		case 5:
			lang = "Orc";
			break;
		case 6:
			lang = "Abyssal";
			break;
		case 7:
			lang = "Celestial";
			break;
		case 8:
			lang = "Draconic";
			break;
		case 9:
			lang = "Deep Speech";
			break;
		case 10:
			lang = "Infernal";
			break;
		case 11:
			lang = "Primordial";
			break;
		case 12:
			lang = "Sylvan";
			break;
		case 13:
			lang = "Undercommon";
			break;					
		}
		try{
			if (request.getParameter("abils") != null) {
				String[] a = request.getParameterValues("abils");//get all choices from ability score checkboxes
				abil1 = Integer.parseInt(a[0]);//set first ability score number as first value in array
				abil2 = Integer.parseInt(a[1]);//set second ability score as second value in array
				if (request.getParameter("profs") != null) {//get all proficiency choices
					String[] b = request.getParameterValues("profs");
					prof1 = Integer.parseInt(b[0]);//set profession 1 to first selected checkbox
					prof2 = Integer.parseInt(b[1]);//set profession 2 to second checkbox
					player.reset();
					player.HalfElf(abil1, abil2, prof1, prof2, lang);//set to half elf with all parameters
					session.setAttribute("player1", player);
					response.sendRedirect("nameAppearance.jsp");
					}
				}
		}catch(Exception e){
		}
		}
		break;			
	case 12://half orc, no parameters
		player.reset();
		player.HalfOrc();
		session.setAttribute("player1", player);
		response.sendRedirect("nameAppearance.jsp");
		break;
	case 13://tielfing, no parameters
		player.reset();
		player.Tiefling();
		session.setAttribute("player1", player);
			response.sendRedirect("nameAppearance.jsp");
		break; 
	case 14://human variant
		if (request.getParameter("langH") != null) {
			selectedLanguage = Integer.parseInt(request.getParameter("langH"));//get chosen language
			switch (selectedLanguage) {
		case 0://set parameter to chosen language
			lang ="Dwarvish";
			break;
		case 1:
		lang = "Elven";
			break;
		case 2:
			lang = "Giant";
			break;
		case 3:
			lang = "Gnomish";
			break;
		case 4:
			lang = "Goblin";
			break;
		case 5:
			lang = "Halfling";
			break;
		case 6:
			lang = "Orc";
			break;
		case 7:
			lang = "Abyssal";
			break;
		case 8:
			lang = "Celestial";
			break;
		case 9:
			lang = "Draconic";
			break;
		case 10:
			lang = "Deep Speech";
			break;
		case 11:
			lang = "Infernal";
			break;
		case 12:
			lang = "Primordial";
			break;
		case 13:
			lang = "Sylvan";
			break;
		case 14:
			lang = "Undercommon";
			break;					
		}
		try{
		if (request.getParameter("abil") != null) {
			String[] a = request.getParameterValues("abil");//get chosen ability scores
			abil1 = Integer.parseInt(a[0]);//set abil 1 to first checkbox
			abil2 = Integer.parseInt(a[1]);//set abil 2 to second checkbox
			if (request.getParameter("prof") != null) {
				selectedprof = Integer.parseInt(request.getParameter("prof"));//get proficiency int, which goes to a switch in the setter
				player.reset();
				player.HumanVar(lang, abil1, abil2, selectedprof, lang);//human var setter with parameters
				session.setAttribute("player1", player);
				response.sendRedirect("nameAppearance.jsp");
			}
		}
		}catch(Exception e){
		}
		}
		break;
	}
	%>
	<div id="navcontainer">
		<!-- navigation bar -->
		<ul class="navigation">
		<li id="active"><a href="race.jsp">Character Creator</a></li>
		<!-- contains links to the main pages -->
		<li><a href="CharacterViewer.jsp" id="current">Character Viewer</a></li>
		</ul>
	</div>

	<h1>Bram's character creator</h1>
	<h2>Race</h2>
	<form>
		<div align="center">
		<!-- align centrally -->
		<input type="radio" name="race" id="hElf" value="0" onclick="highElf();">High elf<!-- radio buttons for the choice of each race -->
		<input type="radio" name="race" id="wElf" value="1" onclick="woodElf();">Wood elf
		<!-- the have integer values for the switch case block -->
		<input type="radio" name="race" id="dElf" value="2" onclick="darkElf();">Dark elf <br>
		<!-- runs functions from the radio js page -->
		<input type="radio" name="race" id="hDwarf" value="3" onclick="dwarfTool();hill();">Hill dwarf<!-- each function populates lower divs with information and more choices -->
		<input type="radio" name="race" id="mDwarf" value="4" onclick="dwarfTool();mount();">Mountain dwarf <br>
		<input type="radio" name="race" id="lHalf" value="5" onclick="lightfoot();">Lightfoot halfling 
		<input type="radio" name="race" id="sHalf" value="6" onclick="stout();">Stout halfling <br> 
		<input type="radio" name="race" id="human" value="7" onclick="hum();">Human
		<input type="radio" name="race" id="humanVar" value="14" onclick="humVar();checkboxlimit(abil,2);">Human (variant)<br><!-- calls checkboxlimit from the valid js page, this limits the number of checkboxes that can be checked -->
		<input type="radio" name="race" id="drag" value="8" onclick="ancestry();">Dragonborn<br> 
		<input type="radio" name="race" id="fGnome" value="9" onclick="fGno();">Forest gnome 
		<input type="radio" name="race" id="rGnome" value="10" onclick="rGno();">Rock gnome <br> 
		<input type="radio" name="race" id="halfE" value="11" onclick="halfelf();checkboxlimit(abils,2);checkboxlimit(profs,2);">Half-elf<br>
		<input type="radio" name="race" id="halfO" value="12" onclick="orc();">Half-orc<br> 
		<input type="radio" name="race" id="tief" value="13" onclick="tiefling();">Tiefling<br>
		</div>
		<h3 id="head" align="center"></h3>
		<div id="radioDiv" align="center"></div>
		<!-- div for holding radio buttons for further choices -->
		<h3 id="head2" align="center"></h3>
		<div id="checkDiv" align="center"></div>
		<!-- div for checkboxes -->
		<h3 id="head3" align="center"></h3>
		<div id="profDiv" align="center"></div>
		<!-- div for holding information on what proficiencies that race gets -->
		<h3>information:</h3>
		<div id="infoBox" align="center">
		<!-- div for generic race information -->
		</div>
		<div align="center">
			<input type="submit">
		</div>
	</form>
</body>
</html>