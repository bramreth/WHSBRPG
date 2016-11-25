<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<script src="valid.js"></script>
<script>
//the different cleric disciplines have different effects, so each has a function outputting info
function lig(){//light domain
	document.getElementById("spells").innerHTML = "";//reset and add info
	document.getElementById("spells").innerHTML = " <b>you learn the spells: </b>burning hands, faerie fire";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "<b>you gain the feature: </b>Warding flame: you use light to impose " + 
	"disadvantage as a reaction";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("langDiv").innerHTML = "";
	document.getElementById("skill").innerHTML = "";
	document.getElementById("skill").innerHTML = "<p>you gain the light cantrip</p>";
	document.getElementById("skillDiv").innerHTML = "";
}
function lif(){//life domain
	document.getElementById("spells").innerHTML = "";//reset and add info
	document.getElementById("spells").innerHTML = " <b>you learn the spells: </b>bless, cure wounds";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "<b>you gain the feature: </b>Disciple of life: your healing spells are " + 
	"more effective";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("langDiv").innerHTML = "";
	document.getElementById("skill").innerHTML = "";
	document.getElementById("skill").innerHTML = "<p>you gain proficiency in heavy armour</p>";
	document.getElementById("skillDiv").innerHTML = "";
}
function tem(){//tempest
	document.getElementById("spells").innerHTML = "";//reset and add info
	document.getElementById("spells").innerHTML = " <b>you learn the spells: </b>fog cloud, thunderwave";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "<b>you gain the feature: </b>Wrath of the storm: use your reaction to an" + 
	"attack to cause thunder damage";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("langDiv").innerHTML = "";
	document.getElementById("skill").innerHTML = "";
	document.getElementById("skill").innerHTML = "<p>you gain proficiency in heavy armour and martial weapons</p>";
	document.getElementById("skillDiv").innerHTML = "";
}
function tri(){//trickster
	document.getElementById("spells").innerHTML = "";//reset and add info
	document.getElementById("spells").innerHTML = " <b>you learn the spells: </b>charm person, disguise self";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "<b>you gain the feature: </b>Blessing of the trickster: give advantage" + 
	" to stealth checks";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("langDiv").innerHTML = "";
	document.getElementById("skill").innerHTML = "";
	document.getElementById("skillDiv").innerHTML = "";
}
function war(){//war
	document.getElementById("spells").innerHTML = "";//reset and add info
	document.getElementById("spells").innerHTML = " <b>you learn the spells: </b>divine favor, shield of faith";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "<b>you gain the feature: </b>War priest, use your bonus action after" + 
	"an attack to attack again";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("langDiv").innerHTML = "";
	document.getElementById("skill").innerHTML = "";
	document.getElementById("skill").innerHTML = "<p>you gain proficiency in heavy armour and martial weapons</p>";
	document.getElementById("skillDiv").innerHTML = "";
}
function kno(){//knowledge domain
	document.getElementById("spells").innerHTML = "";//reset and add info
	document.getElementById("spells").innerHTML = " <b>you learn the spells: </b>Command, Identify";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "<b>you gain the feature: </b>Blessings of knowledge: you learn two new languages " + 
	"and become proficient in two new skills, their proficiency bonus is doubled.";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "<p>you learn two languages</p>";
	document.getElementById("langDiv").innerHTML = "";
	document.getElementById("skill").innerHTML = "";
	document.getElementById("skill").innerHTML = "<p>you become proficient in two skills</p>";
	document.getElementById("skillDiv").innerHTML = "";
	
var objDiv = document.getElementById("langDiv");//add radio buttons for extra languages
    
    var radioItem1 = document.createElement("input");
    radioItem1.type = "checkbox";
    radioItem1.name = "langH";
    radioItem1.value = "Dwarvish";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "checkbox";
    radioItem2.name = "langH";
    radioItem2.value = "Elvish";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "checkbox";
    radioItem3.name = "langH";
    radioItem3.value = "Giant";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "checkbox";
    radioItem4.name = "langH";
    radioItem4.value = "Gnomish";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "checkbox";
    radioItem5.name = "langH";
    radioItem5.value = "Goblin";
    

    var radioItem6 = document.createElement("input");
    radioItem6.type = "checkbox";
    radioItem6.name = "langH";
    radioItem6.value = "Halfling";
    

    var radioItem7 = document.createElement("input");
    radioItem7.type = "checkbox";
    radioItem7.name = "langH";
    radioItem7.value = "Orc";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "checkbox";
    radioItem8.name = "langH";
    radioItem8.value = "Abyssal";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "checkbox";
    radioItem9.name = "langH";
    radioItem9.value = "Celestial";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "checkbox";
    radioItem10.name = "langH";
    radioItem10.value = "Draconic";
    
    var radioItem11 = document.createElement("input");
    radioItem11.type = "checkbox";
    radioItem11.name = "langH";
    radioItem11.value = "Deep Speech";
    
    var radioItem12 = document.createElement("input");
    radioItem12.type = "checkbox";
    radioItem12.name = "langH";
    radioItem12.value = "Infernal";
    
    var radioItem13 = document.createElement("input");
    radioItem13.type = "checkbox";
    radioItem13.name = "langH";
    radioItem13.value = "Primordial";
    
    var radioItem14 = document.createElement("input");
    radioItem14.type = "checkbox";
    radioItem14.name = "langH";
    radioItem14.value = "Sylvan";
    
    var radioItem15 = document.createElement("input");
    radioItem15.type = "checkbox";
    radioItem15.name = "langH";
    radioItem15.value = "Undercommon";
    

    var objTextNode1 = document.createTextNode("Dwarvish");//text
    var objTextNode2 = document.createTextNode("Elvish");
    var objTextNode3 = document.createTextNode("Giant");
    var objTextNode4 = document.createTextNode("Gnomish");
    var objTextNode5 = document.createTextNode("Goblin");
    var objTextNode6 = document.createTextNode("Halfling");
    var objTextNode7 = document.createTextNode("Orc");
    var objTextNode8 = document.createTextNode("Abyssal");
    var objTextNode9 = document.createTextNode("Celestial");
    var objTextNode10 = document.createTextNode("Draconic");
    var objTextNode11 = document.createTextNode("Deep Speech");
    var objTextNode12 = document.createTextNode("Infernal");
    var objTextNode13 = document.createTextNode("Primordial");
    var objTextNode14 = document.createTextNode("Sylvan");
    var objTextNode15 = document.createTextNode("Undercommon");


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
        
        var objLabel11 = document.createElement("label");
        objLabel11.htmlFor = radioItem11.id;
        objLabel11.appendChild(radioItem11);
        objLabel11.appendChild(objTextNode11);

        var objLabel12 = document.createElement("label");
        objLabel12.htmlFor = radioItem12.id;
        objLabel12.appendChild(radioItem12);
        objLabel12.appendChild(objTextNode12);
        
        var objLabel13 = document.createElement("label");
        objLabel13.htmlFor = radioItem13.id;
        objLabel13.appendChild(radioItem13);
        objLabel13.appendChild(objTextNode13);
        
        var objLabel14 = document.createElement("label");
        objLabel14.htmlFor = radioItem14.id;
        objLabel14.appendChild(radioItem14);
        objLabel14.appendChild(objTextNode14);
        
        var objLabel15 = document.createElement("label");
        objLabel15.htmlFor = radioItem15.id;
        objLabel15.appendChild(radioItem15);
        objLabel15.appendChild(objTextNode15);
     

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
    objDiv.appendChild(objLabel11); 
    objDiv.appendChild(objLabel12);
    objDiv.appendChild(objLabel13);
    objDiv.appendChild(objLabel14);
    objDiv.appendChild(objLabel15); 

	var objDiv = document.getElementById("skillDiv");//profficiency radio buttons
	var radioItem1 = document.createElement("input");
	radioItem1.type = "checkbox";
	radioItem1.name = "profs";
	radioItem1.value = "1";

	var radioItem2 = document.createElement("input");
	radioItem2.type = "checkbox";
	radioItem2.name = "profs";
	radioItem2.value = "2";

	var radioItem3 = document.createElement("input");
	radioItem3.type = "checkbox";
	radioItem3.name = "profs";
	radioItem3.value = "3";

	var radioItem4 = document.createElement("input");
	radioItem4.type = "checkbox";
	radioItem4.name = "profs";
	radioItem4.value = "4";

	
	var objTextNode1 = document.createTextNode("arcana");//text
	var objTextNode2 = document.createTextNode("history");
	var objTextNode3 = document.createTextNode("nature");
	var objTextNode4 = document.createTextNode("religion");

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

	

	objDiv.appendChild(objLabel);//append
	objDiv.appendChild(objLabel2); 
	objDiv.appendChild(objLabel3);
	objDiv.appendChild(objLabel4);
}
function nat(){//nature
	document.getElementById("spells").innerHTML = "";//reset and add info
	document.getElementById("spells").innerHTML = " <b>you learn the spells: </b>animal friendship, speak with animals";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "<b>you gain the feature: </b>Acolyte of nature: you learn a druid cantrip " + 
	"and gain proficiency in one of the following skills";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("langDiv").innerHTML = "";
	document.getElementById("skill").innerHTML = "";
	document.getElementById("skill").innerHTML = "<p>you become proficient in one skill and heavy armour</p>";
	document.getElementById("skillDiv").innerHTML = "";
	var objDiv = document.getElementById("skillDiv");//create proficiency radio buttons
	var radioItem1 = document.createElement("input");
	radioItem1.type = "radio";
	radioItem1.name = "prof";
	radioItem1.value = "1";

	var radioItem2 = document.createElement("input");
	radioItem2.type = "radio";
	radioItem2.name = "prof";
	radioItem2.value = "2";

	var radioItem3 = document.createElement("input");
	radioItem3.type = "radio";
	radioItem3.name = "prof";
	radioItem3.value = "3";
	
	var objTextNode1 = document.createTextNode("animal handling");//text
	var objTextNode2 = document.createTextNode("nature");
	var objTextNode3 = document.createTextNode("survival");

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
	
	objDiv.appendChild(objLabel);//append
	objDiv.appendChild(objLabel2); 
	objDiv.appendChild(objLabel3);
	
}
</script>
<script src="valid.js"></script>//import checkbox validation
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>character creator</title>
</head>
<body>
<div id="navcontainer">
		<ul class="navigation">
			<li id="active"><a href="race.jsp">Character Creator</a></li>
			<li><a href="CharacterViewer.jsp" id="current">Character Viewer</a></li>
		</ul>
	</div>
	<% 
	session.getAttribute("player6");
	coursework player = (coursework)session.getAttribute("player6");//get latest object
	
	int s1 = 0;//initialise choise
	int s2 = 0;
	boolean flag1 = false;
	if (request.getParameter("skill") != null) {
		try{
			String[] a = request.getParameterValues("skill");//get chosen skills
			s1 = Integer.parseInt(a[0]);
			s2 = Integer.parseInt(a[1]);
			flag1 = true;
		}catch(Exception e){
		}
	}
	String i1 = "";
	boolean item1 = false;
	boolean flag2 = false;
	if (request.getParameter("item1") != null) {
		i1 = request.getParameter("item1");//get chosen item
		if(i1.equals("1")){
			item1 = true;//setter uses a boolean as there are two choices. sets to the appropriate boolean value
		}else{
			item1 = false;
		}
		flag2 = true;
	}
	String i2 = "";
	int item2 = 0;
	boolean flag3 = false;
	if (request.getParameter("item2") != null) {
		i2 = request.getParameter("item2");
		item2 = Integer.parseInt(i1);//get chosen item
		flag3 =true;
	}
	String item3 = "";
	boolean flag4 = false;
	if (request.getParameter("item3") != null) {
		item3 = request.getParameter("item3");//get chosen item
		flag4 =true;
	}
	String i4 = "";
	boolean item4 = false;
	boolean flag5 = false;
	if (request.getParameter("item4") != null) {
		i4 = request.getParameter("item4");
		if(i4.equals("1")){
			item4 = true;//get chosen item as boolean value
		}else{
			item4 = false;
		}
		flag5 = true;
	}
	String d = "";
	int domain = 0;
	boolean flag6 = false;
	boolean flag7 = false;
	int s3 = 0;
	int s4 = 0;
	String l1 = "";
	String l2 = "";
	String p1 = "";
	if (request.getParameter("domain") != null) {
		d = request.getParameter("domain");
		domain = Integer.parseInt(d);//get domain numerically
		if(domain == 1){//knowledge
			if (request.getParameter("profs") != null) {
				String[] c = request.getParameterValues("profs");
				s3 = Integer.parseInt(c[0]);//get knowledge proficiency attributes
				s4 = Integer.parseInt(c[1]);
				if (request.getParameter("langH") != null) {
					String[] l = request.getParameterValues("langH");
					l1 = l[0];//get knowledge languages
					l2 = l[1];
					player.blessKnowledge(l1, l2, s3, s4);//run bless knowledge setter method for knowledge domain
				}
			}
		}
		if(domain == 4){//nature domain
			if (request.getParameter("prof") != null) {
				s3 = Integer.parseInt(request.getParameter("prof"));//get chosen skill
				player.acolyteOfNature(s3);//run acolyte of nature method
			}
		}
		flag6 = true;//if a domain is chosen, flag is true
		}
	if(flag1 == true && flag2 == true && flag3 == true && flag4 == true && flag5 == true && flag6 == true){//if all choices have been made
		try{
			player.cleric(s1, s2, item1, item2, item3, item4, domain);//run cleric setter with parameters
			player.processingFinal();//process character sheet
			session.setAttribute("player7", player);//set final object
			response.sendRedirect("sheet.jsp");//redirect to finalisation page
		}catch(Exception e){
			System.out.println(e);
		}
	}
	
	%>
<h1>Bram's character creator</h1>
	<h2>
		Cleric
		</h2>
	<form>
	<div id = "align">
	<h3>Skills:</h3>
	<b>choose two skills:</b><br><!-- proficiency checkbox with a limit of two choices -->
	<input type="checkbox" name="skill"  value="1"onclick = "checkboxlimit(skill,2);">history
	<input type="checkbox" name="skill"  value="2" onclick = "checkboxlimit(skill,2);">insight
	<input type="checkbox" name="skill"  value="3"onclick = "checkboxlimit(skill,2);">medicine
	<input type="checkbox" name="skill"  value="4"onclick = "checkboxlimit(skill,2);">persuasion
	<input type="checkbox" name="skill"  value="5"onclick = "checkboxlimit(skill,2);">religion
	<br><br>
	<h3>Equipment:</h3>
	<p>
	proficiencies: (<%= player.otherProficiencies %>)<!-- display player proficiencies so far -->
	</p>
	<b>choose:</b><br><!-- item 1 radio buttons -->
	<input type="radio" name="item1"  value="1">Mace <b> or </b>
	<input type="radio" name="item1"  value="0">Warhammer (if proficient)
	<br><br>
	<b>and:</b><br><!-- item 2 radio buttons -->
	<input type="radio" name="item2"  value="1">Scale mail
	<input type="radio" name="item2"  value="2">Leather armour
	<input type="radio" name="item2"  value="3">Chain mail (if proficient)
	<br>
	<br><b>choose a light crossbow and 20 bolts or a simple melee weapon:</b><br><!-- item 3 radio buttons -->
	<input type="radio" name="item3"  value="">A light crossbow and 20 bolts 
	<input type="radio" name="item3"  value="Club">Club
	<input type="radio" name="item3"  value="Dagger">Dagger
	<input type="radio" name="item3"  value="Greatclub">Greatclub
	<input type="radio" name="item3"  value="Javelin">Javelin
	<input type="radio" name="item3"  value="Light hammer">Light hammer
	<input type="radio" name="item3"  value="Mace">Mace
	<input type="radio" name="item3"  value="Quaterstaff">Quaterstaff
	<input type="radio" name="item3"  value="Sickle">Sickle
	<input type="radio" name="item3"  value="Spear">Spear<br>
	<input type="radio" name="item3"  value="Crossbow, light">Crossbow, light
	<input type="radio" name="item3"  value="Dart">Dart
	<input type="radio" name="item3"  value="Shortbow">Shortbow
	<input type="radio" name="item3"  value="Sling">Sling
	<br>
	<br><b>choose a pack:</b><br> <!-- item 4 radio buttons -->
	<input type="radio" name="item4"  value="1">A priest's pack <b> or </b>
	<input type="radio" name="item4"  value="0">An explorers pack
	<br><br>
	<b>choose a divine domain:</b><br> <!-- domain radio buttons -->
	<input type="radio" name="domain"  value="1" onclick = "kno();checkboxlimit(langH,2);checkboxlimit(profs,2);">Knowledge 
	<input type="radio" name="domain"  value="2" onclick = "lif()";>Life
	<input type="radio" name="domain"  value="3"onclick = "lig();">Light
	<input type="radio" name="domain"  value="4" onclick = "nat();">Nature 
	<input type="radio" name="domain"  value="5" onclick = "tem()">Tempest 
	<input type="radio" name="domain"  value="6" onclick = "tri()">Trickery 
	<input type="radio" name="domain"  value="7" onclick = "war()">War 
	<p><b>domain info:</b></p><!-- information divs -->
	<p id = "spells"></p>
	<p id = "feature"></p>
	<div id = "lang"></div>
	<div id = "langDiv"></div>
	<div id = "skill"></div>
	<div id = "skillDiv"></div>
	
	<input type="submit" id = "fixedbutton"><!-- submit button -->
	</div>
	</form>
</body>
</html>