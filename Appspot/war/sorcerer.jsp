<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<script>
function clear(){//clears info divs
	document.getElementById("info").innerHTML = "";
	document.getElementById("originDiv").innerHTML = "";
}
function draconic(){//creates draconic ancestry radio buttons
	document.getElementById("info").innerHTML = "";//reset divs and add info
	document.getElementById("info").innerHTML = "Draconic ancestor: <br> choose one type of dragon as your ancestor";
	document.getElementById("originDiv").innerHTML = "";
	var objDiv = document.getElementById("originDiv");
	var radioItem1 = document.createElement("input");//creates radio buttons for each type of dragon
    radioItem1.type = "radio";
    radioItem1.name = "dragon";
    radioItem1.value = "1";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "dragon";
    radioItem2.value = "2";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "dragon";
    radioItem3.value = "3";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "dragon";
    radioItem4.value = "4";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "dragon";
    radioItem5.value = "5";
    
    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "dragon";
    radioItem6.value = "6";
    
    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "dragon";
    radioItem7.value = "7";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "dragon";
    radioItem8.value = "8";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "dragon";
    radioItem9.value = "9";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "dragon";
    radioItem10.value = "10";
    
    var objTextNode1 = document.createTextNode("Black");//adds the text saying the type of dragon
    var objTextNode2 = document.createTextNode("Blue");
    var objTextNode3 = document.createTextNode("Brass");
    var objTextNode4 = document.createTextNode("Bronze");
    var objTextNode5 = document.createTextNode("Copper");
    var objTextNode6 = document.createTextNode("Gold");
    var objTextNode7 = document.createTextNode("Green");
    var objTextNode8 = document.createTextNode("Red");
    var objTextNode9 = document.createTextNode("Silver");
    var objTextNode10 = document.createTextNode("White");

	var objLabel = document.createElement("label");
    objLabel.htmlFor = radioItem1.id;
    objLabel.appendChild(radioItem1);
    objLabel.appendChild(objTextNode1);

    var objLabel2 = document.createElement("label");
    objLabel2.htmlFor = radioItem2.id;
    objLabel2.appendChild(radioItem2);
    objLabel2.appendChild(objTextNode2);
    
    var objLabel3 = document.createElement("label");
    objLabel3.htmlFor = radioItem3.id;
    objLabel3.appendChild(radioItem3);
    objLabel3.appendChild(objTextNode3);
    
    var objLabel4 = document.createElement("label");
    objLabel4.htmlFor = radioItem4.id;
    objLabel4.appendChild(radioItem4);
    objLabel4.appendChild(objTextNode4);
    
    var objLabel5 = document.createElement("label");
    objLabel5.htmlFor = radioItem5.id;
    objLabel5.appendChild(radioItem5);
    objLabel5.appendChild(objTextNode5);
    
    var objLabel6 = document.createElement("label");
    objLabel6.htmlFor = radioItem6.id;
    objLabel6.appendChild(radioItem6);
    objLabel6.appendChild(objTextNode6);
    
    var objLabel7 = document.createElement("label");
    objLabel7.htmlFor = radioItem7.id;
    objLabel7.appendChild(radioItem7);
    objLabel7.appendChild(objTextNode7);
    
    var objLabel8 = document.createElement("label");
    objLabel8.htmlFor = radioItem8.id;
    objLabel8.appendChild(radioItem8);
    objLabel8.appendChild(objTextNode8);
    
    var objLabel9 = document.createElement("label");
    objLabel9.htmlFor = radioItem9.id;
    objLabel9.appendChild(radioItem9);
    objLabel9.appendChild(objTextNode9);
    
    var objLabel10 = document.createElement("label");
    objLabel10.htmlFor = radioItem10.id;
    objLabel10.appendChild(radioItem10);
    objLabel10.appendChild(objTextNode10);

    objDiv.appendChild(objLabel);//append 
    objDiv.appendChild(objLabel2); 
    objDiv.appendChild(objLabel3);
    objDiv.appendChild(objLabel4);
    objDiv.appendChild(objLabel5); 
    objDiv.appendChild(objLabel6);
    objDiv.appendChild(objLabel7);
    objDiv.appendChild(objLabel8); 
    objDiv.appendChild(objLabel9);
    objDiv.appendChild(objLabel10);
}
</script>
<script src="valid.js"></script><!-- import checkbox validation function -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
<% 
session.getAttribute("player6");
coursework player = (coursework)session.getAttribute("player6");//get latest character object
int s1 = 0;//initialise choice variables
int s2 = 0;
String i1 = "";
String i2 = "";
String i3 = "";
int origin = 0;
boolean flag1 = false;
boolean flag2 = false;
boolean flag3 = false;
boolean flag4 = false;
	if (request.getParameter("skill") != null) {
		try{
			String[] a = request.getParameterValues("skill");
			s1 = Integer.parseInt(a[0]);//get chosen skills
			s2 = Integer.parseInt(a[1]);
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
	if (request.getParameter("origin") != null) {//gets origin
		if(request.getParameter("origin").equals("0")){
			origin = Integer.parseInt(request.getParameter("origin"));//if origin is 0, its wild magic
			flag4 =true;
		}else{
			origin = Integer.parseInt(request.getParameter("dragon"));//if origin is greater than zero it is a type of draconic depending on the number
			flag4 =true;
		}
	}
	
	if(flag1 == true && flag2 == true && flag3 == true
			&& flag4 == true){//if all choices have been made
		player.sorcerer(s1, s2, i1, i2, i3, origin);//set as sorceror with choices as parameters
		player.processingFinal();//process
		session.setAttribute("player7", player);
		response.sendRedirect("sheet.jsp");//redirect to final page
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
		Sorcerer</h2>
	<form>
	<h3>Skills:</h3>
	<div id = "align">
	<b>choose two skills:</b><br><br><!-- proficiency checkbox, limitted to two options with function -->
	<input type="checkbox" name="skill"  value="1"onclick = "checkboxlimit(skill,2);">arcana
	<input type="checkbox" name="skill"  value="2" onclick = "checkboxlimit(skill,2);">deception
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,2);">insight
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,2);">intimidation
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,2);">persuasion
	<input type="checkbox" name="skill"  value="6"onclick = "checkboxlimit(skill,2);">religion<br>
	<br>
	<h3>Equipment:</h3>
	<p>choose a light crossbow and 20 bolts or a simple weapon:</p><!-- item 1 radio buttons -->
	<input type="radio" name="item1"  value=", A light crossbow and 20 bolts">A light crossbow and 20 bolts 
	<input type="radio" name="item1"  value=", Club">Club
	<input type="radio" name="item1"  value=", Dagger">Dagger
	<input type="radio" name="item1"  value=", Greatclub">Greatclub
	<input type="radio" name="item1"  value=", Javelin">Javelin
	<input type="radio" name="item1"  value=", Light hammer">Light hammer
	<input type="radio" name="item1"  value=", Mace">Mace
	<input type="radio" name="item1"  value=", Quaterstaff">Quaterstaff
	<input type="radio" name="item1"  value=", Sickle">Sickle<br>
	<input type="radio" name="item1"  value=", Spear">Spear
	<input type="radio" name="item1"  value=", Crossbow, light">Crossbow, light
	<input type="radio" name="item1"  value=", Dart">Dart
	<input type="radio" name="item1"  value=", Shortbow">Shortbow
	<input type="radio" name="item1"  value=", Sling">Sling
	<p>choose a component pouch or an arcane focus:</p><!-- item 2 radio buttons -->
	<input type="radio" name="item2"  value=", component pouch">component pouch <b> or </b>
	<input type="radio" name="item2"  value=", arcane focus">arcane focus
	<p>pack:</p><!-- item 3 radio buttons -->
	<input type="radio" name="item3"  value=", dungeoneer's pack">dungeoneer's pack <b> or </b>
	<input type="radio" name="item3"  value=", explorer's pack">explorer's pack 
	<p>choose a sorcerous origin:</p><!-- origin radio buttons -->
	<input type="radio" name="origin"  value="1" onclick = "draconic();">Draconic bloodline <b> or </b>
	<input type="radio" name="origin"  value="0" onclick = "clear();">Wild magic
	<br><br>
	<div id = "info"></div><!-- divs for outputting origin info and options -->
	<div id = "originDiv"></div>
	<br>
	<input type="submit" id = "fixedbutton"><!-- submit button -->
	</div>
	</form>
</body>
</html>

