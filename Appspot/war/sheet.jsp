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
    pageEncoding="ISO-8859-1"%><!-- import app engine classes -->
<!DOCTYPE html>
<jsp:useBean id="helper" class="helper.login" scope="page" /><!-- bean for saving character to datastore -->
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<style>
h3{
	margin-top:-1%;/*simple alignment*/
}
</style>
<script src="valid.js"></script><!-- import checkbox validation -->
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
	session.getAttribute("player7");
	coursework player = (coursework)session.getAttribute("player7");//get final character object
	
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();//get datastore service
	String username = (String)session.getAttribute("username");//get username
	%>
<h1>Bram's character creator</h1>
	<h2>
		Character
		</h2>
<body>
<div id="page1"><!-- left column -->
<h3>Page 1</h3><!-- displays main page information for character sheet -->
<% 
out.println("character name: " + player.pName + "<br>");
out.println("| class: " + player.Class + " background: " + player.background + " real name: " + player.name+ "<br>");
out.println("| race: " + player.race + " Alignment: " + player.alignment + " xp: " + player.xp+ "<br>");
out.println();
out.println("Strength: " + player.Str + " mod: " + player.StrMod + "   save: "+ player.strSaveV);
out.println("   |AC: "+player.ac + "|" +  " |initiative: "+player.initiative + "|" +  " |speed: "+player.speed + "|"+ "<br>");
out.println("Dexterity: " + player.Dex + " mod: " + player.DexMod + "   save: "+ player.dexSaveV+ "<br>");
out.println("Constitution: " + player.Con + " mod: " + player.ConMod + "   save: "+ player.conSaveV);
out.println("   |HP: "+player.hitPoints + "|" +  " |hit Dice: "+player.hitDice + "|" + "<br>");
out.println("Intelligence: " + player.Int + " mod: " + player.IntMod + "   save: "+ player.intSaveV+ "<br>");
out.println("Wisdom: " + player.Wis + " mod: " + player.WisMod + "   save: "+ player.wisSaveV+ "<br>");
out.println("Charisma: " + player.Cha + " mod: " + player.ChaMod + "   save: "+ player.chaSaveV+ "<br><br>");

out.println("personality traits: " + player.personality + " <br>");
out.println("ideals: " + player.ideal + " <br>");
out.println("bonds: " + player.bond + " <br>");
out.println("flaws: " + player.flaw + " <br><br>");

out.println( player.acrobatics + " acrobatics: " + player.acrobaticsV + "<br>");
out.println( player.animalHandling + " animalHandling: " + player.animalHandlingV + "<br>");
out.println( player.arcana + " arcana: " + player.arcanaV + "<br>");
out.println( player.athletics + " athletics: " + player.athleticsV + "<br>");
out.println( player.deception + " deception: " + player.deceptionV + "<br>");
out.println( player.history + " history: " + player.historyV + "<br>");
out.println( player.insight + " insight: " + player.insightV + "<br>");
out.println( player.intimidation + " intimidation: " + player.intimidationV + "<br>");
out.println( player.investigation + " investigation: " + player.investigationV + "<br>");
out.println( player.medicine + " medicine: " + player.medicineV + "<br>");
out.println( player.nature + " nature: " + player.natureV + "<br>");
out.println( player.perception + " perception: " + player.perceptionV + "<br>");
out.println( player.performance + " performance: " + player.performanceV + "<br>");
out.println( player.persuasion + " persuasion: " + player.persuasionV + "<br>");
out.println( player.religion + " religion: " + player.religionV + "<br>");
out.println( player.sleightOfHand + " sleightOfHand: " + player.sleightOfHandV + "<br>");
out.println( player.stealth + " stealth: " + player.stealthV + "<br>");
out.println( player.survival + " survival: " + player.survivalV + "<br>");
out.println("passive perception: " + player.passivePerception  + "<br><br>");

out.println("other proficiencies and languages: <br>" + player.languages + "<br>" + player.otherProficiencies + "<br>");
out.println("|gold: " + player.money + " | equipment: " + player.equipment  + " | <br>");
out.println("features and traits: " + player.features);
%>
</div>
<div id="page2"><!-- right column -->
<h3>page 2</h3><!-- displays second page information -->
<%
out.println("character name: " + player.name + "<br>");
out.println("|age: " + player.age + " height: "+ player.realH +  " weight:" + player.realW + " | <br>");
out.println("|eyes: " + player.eyes + " skin: "+ player.skin + " hair:" + player.hair + " | <br>");
out.println("backstory: " + player.backstory);
%>
<%
if (request.getParameter("confirm") != null){//if user saves
	int slot = Integer.parseInt(request.getParameter("confirm"));//get save slot the user wants to save the character to
	helper.createCharacter(username, player, slot);//use helper to save the final object to the datastore in that save slot
	response.sendRedirect("CharacterViewer.jsp");//redirect to character viewer page
}
%>
</div>
<div id = "center" align="center">
<form>
<h3>Save character</h3>
<input type="radio" name="confirm"  value="1" checked> save slot 1<!-- radio button for choosing which save slot to use -->
<input type="radio" name="confirm"  value="2"> save slot 2
<input type="radio" name="confirm"  value="3"> save slot 3
<input type="radio" name="confirm"  value="4"> save slot 4
<input type="radio" name="confirm"  value="5"> save slot 5
<input type="submit" id = "fixedbutton"><!-- submit choice -->
</form>
</div>

</body>
</html>