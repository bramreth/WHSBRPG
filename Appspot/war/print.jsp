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
DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();//datastore
String username = (String)session.getAttribute("username");//get username for helper
int save = (Integer)session.getAttribute("save");//get save slot for helper
coursework player = (coursework)helper.getCharacter(username, save);////get the player object from the datastore with the helper
		//using the username and save slot as parameters
%>
</head>
<body>

<img id = "sheet" src = "/resources/file-page1.jpg" alt = "character sheet" height = "1122" width = "794">
<!-- get character sheet image from the resources folder --> 

<!-- all the information is printed out in different tags. This is moved to the correct position on the character sheet with css -->
<!-- this creates a useable character sheet the user can print to play with -->
<h5 id = "name">
<%
try{
	out.println(player.pName);
}catch(Exception e){
}
%>
</h5>
<h5 id = "class">
<% 
try{
	out.println(player.Class);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "background">
<% 
try{
	out.println(player.background);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "pName">
<% 
try{
	out.println(player.name);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "race">
<% 
try{
	out.println(player.race);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "alignment">
<% 
try{
	out.println(player.alignment);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "xp">
<% 
try{
	out.println(player.xp);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "profBonus">
+2
</h5>
<h5 id = "str">
<% 
try{
	out.println(player.Str);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "dex">
<% 
try{
	out.println(player.Dex);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "con">
<% 
try{
	out.println(player.Con);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "int">
<% 
try{
	out.println(player.Int);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "wis">
<% 
try{
	out.println(player.Wis);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "cha">
<% 
try{
	out.println(player.Cha);
}catch(Exception e){
}
 %>
</h5>

<!-- if a value is greater than 0 and is a modifier it requires a + sign, the if statements put the +'s in -->

<h5 id = "strm">
<% 
try{
	if(player.StrMod > 0){
		out.println("+");
	}
	out.println(player.StrMod);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "dexm">
<% 
try{
	if(player.DexMod > 0){
		out.println("+");
	}
	out.println(player.DexMod);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "conm">
<% 
try{
	if(player.ConMod > 0){
		out.println("+");
	}
	out.println(player.ConMod);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "intm">
<% 
try{
	if(player.IntMod > 0){
		out.println("+");
	}
	out.println(player.IntMod);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "wism">
<% 
try{
	if(player.WisMod > 0){
		out.println("+");
	}
	out.println(player.WisMod);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "cham">
<% 
try{
	if(player.ChaMod > 0){
		out.println("+");
	}
	out.println(player.ChaMod);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "ac">
<% 
try{
	out.println(player.ac);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "initiative">
<% 
try{
	if(player.initiative > 0){
		out.println("+");
	}
	out.println(player.initiative);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "speed">
<% 
try{
	out.println(player.speed);
}catch(Exception e){
}
 %>
</h5>
<h4 id = "personality">
<% 
try{
	out.println(player.personality);
}catch(Exception e){
}
 %>
</h4>
<h4 id = "ideal">
<% 
try{
	out.println(player.ideal);
}catch(Exception e){
}
 %>
</h4>
<h4 id = "bond">
<% 
try{
	out.println(player.bond);
}catch(Exception e){
}
 %>
</h4>
<h4 id = "flaw">
<% 
try{
	out.println(player.flaw);
}catch(Exception e){
}
 %>
</h4>
<h4 id = "features">
<% 
try{
	out.println(player.vision + "<br>" + player.features);
}catch(Exception e){
}
 %>
</h4>

<!-- proficiencies require a circle is shaded in. large full stops are used to shad in the circles -->

<h6 id = "strS">
<% 
try{
	if(player.strSave){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "dexS">
<% 
try{
	if(player.dexSave){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "conS">
<% 
try{
	if(player.conSave){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "wisS">
<% 
try{
	if(player.wisSave){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "intS">
<% 
try{
	if(player.intSave){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "chaS">
<% 
try{
	if(player.chaSave){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h5 id = "strMV">
<% 
try{
	if(player.strSaveV > 0){
		out.println("+" + player.strSaveV);
	}else{
		out.println(player.strSaveV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "dexMV">
<% 
try{
	if(player.dexSaveV > 0){
		out.println("+" + player.dexSaveV );
	}else{
	out.println(player.dexSaveV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "conMV">
<% 
try{
	if(player.conSaveV > 0){
		out.println("+" + player.conSaveV);
	}else{
		out.println(player.conSaveV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "wisMV">
<% 
try{
	if(player.wisSaveV > 0){
		out.println("+" + player.wisSaveV);
	}else{
		out.println(player.wisSaveV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "intMV">
<% 
try{
	if(player.intSaveV > 0){
		out.println("+" + player.intSaveV);
	}else{
		out.println(player.intSaveV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "chaMV">
<% 
try{
	if(player.chaSaveV > 0){
		out.println("+" + player.chaSaveV);
	}else{
		out.println(player.chaSaveV);
	}
}catch(Exception e){
}
 %>
</h5>
<h6 id = "s1">
<% 
try{
	if(player.acrobatics){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s2">
<% 
try{
	if(player.animalHandling){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s3">
<% 
try{
	if(player.arcana){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s4">
<% 
try{
	if(player.athletics){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s5">
<% 
try{
	if(player.deception){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s6">
<% 
try{
	if(player.history){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s7">
<% 
try{
	if(player.insight){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s8">
<% 
try{
	if(player.intimidation){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s9">
<% 
try{
	if(player.investigation){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s10">
<% 
try{
	if(player.medicine){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s11">
<% 
try{
	if(player.nature){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s12">
<% 
try{
	if(player.perception){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s13">
<% 
try{
	if(player.performance){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s14">
<% 
try{
	if(player.persuasion){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s15">
<% 
try{
	if(player.religion){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s16">
<% 
try{
	if(player.sleightOfHand){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s17">
<% 
try{
	if(player.stealth){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h6 id = "s18">
<% 
try{
	if(player.survival){
		out.println(".");
	}
}catch(Exception e){
}
 %>
</h6>
<h5 id = "v1">
<% 
try{
	if(player.acrobaticsV > 0){
		out.println("+" + player.acrobaticsV);
	}else{
		out.println(player.acrobaticsV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v2">
<% 
try{
	if(player.animalHandlingV > 0){
		out.println("+" + player.animalHandlingV);
	}else{
		out.println(player.animalHandlingV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v3">
<% 
try{
	if(player.arcanaV > 0){
		out.println("+" + player.arcanaV);
	}else{
		out.println(player.arcanaV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v4">
<% 
try{
	if(player.athleticsV > 0){
		out.println("+" + player.athleticsV);
	}else{
		out.println(player.athleticsV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v5">
<% 
try{
	if(player.deceptionV > 0){
		out.println("+" + player.deceptionV);
	}else{
		out.println(player.deceptionV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v6">
<% 
try{
	if(player.historyV > 0){
		out.println("+" + player.historyV);
	}else{
		out.println(player.historyV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v7">
<% 
try{
	if(player.insightV > 0){
		out.println("+" + player.insightV);
	}else{
		out.println(player.insightV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v8">
<% 
try{
	if(player.intimidationV > 0){
		out.println("+" + player.intimidationV);
	}else{
		out.println(player.intimidationV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v9">
<% 
try{
	if(player.investigationV > 0){
		out.println("+" + player.investigationV);
	}else{
		out.println(player.investigationV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v10">
<% 
try{
	if(player.medicineV > 0){
		out.println("+" + player.medicineV);
	}else{
		out.println(player.medicineV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v11">
<% 
try{
	if(player.natureV > 0){
		out.println("+" + player.natureV);
	}else{
		out.println(player.natureV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v12">
<% 
try{
	if(player.perceptionV > 0){
		out.println("+" + player.perceptionV);
	}else{
		out.println(player.perceptionV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v13">
<% 
try{
	if(player.performanceV > 0){
		out.println("+" + player.performanceV);
	}else{
		out.println(player.performanceV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v14">
<% 
try{
	if(player.persuasionV > 0){
		out.println("+" + player.persuasionV);
	}else{
		out.println(player.persuasionV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v15">
<% 
try{
	if(player.religionV > 0){
		out.println("+" + player.religionV);
	}else{
		out.println(player.religionV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v16">
<% 
try{
	if(player.sleightOfHandV > 0){
		out.println("+" + player.sleightOfHandV);
	}else{
		out.println(player.sleightOfHandV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v17">
<% 
try{
	if(player.stealthV > 0){
		out.println("+" + player.stealthV);
	}else{
		out.println(player.stealthV);
	}
}catch(Exception e){
}
 %>
</h5>
<h5 id = "v18">
<% 
try{
	if(player.survivalV > 0){
		out.println("+" + player.survivalV);
	}else{
		out.println(player.survivalV);
	}
}catch(Exception e){
}
 %>
</h5>

<h5 id = "passiveP">
<% 
try{
	out.println(player.passivePerception);
}catch(Exception e){
}
 %>
</h5>
<h4 id = "other">
<% 
try{
	out.println(player.otherProficiencies + "<br>" + player.languages);
}catch(Exception e){
}
 %>
</h4>
<h4 id = "equipment">
<% 
try{
	out.println(player.equipment);
}catch(Exception e){
}
 %>
</h4>
<h5 id = "hp">
<% 
try{
	out.println(player.hitPoints);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "hd">
<% 
try{
	out.println(player.hitDice);
}catch(Exception e){
}
 %>
</h5>
<h5 id = "money">
<% 
try{
	out.println(player.money);
}catch(Exception e){
}
 %>
</h5>
<a href="javascript:window.print()" id = "btn">click this link, right click and print, or use ctrl + p</a><!-- this button prints the page -->
</body>
</html>
