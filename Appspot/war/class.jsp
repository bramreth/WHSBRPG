<%@page import="cc.coursework, cc.processing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CourseworkApp.css">
<script>
function barb(){//display barbarian class info
	document.getElementById("classDiv").innerHTML = "";//clear class div
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Barbarian";//fill with info
	document.getElementById("description").innerHTML = "";//clear
	document.getElementById("description").innerHTML = "<b>Description:</b> A fierce warrior of primitive background who can enter "+
	"a battle rage";//description of barbarian
	document.getElementById("hitDie").innerHTML = "";//clear
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d12";//add info
	document.getElementById("ability").innerHTML = "";//etc
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Strength";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Strength &amp; Constitution";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> Light and medium armour, shields,"+
	"simple and martial weapons";
}
function bard(){//display bard class info
	document.getElementById("classDiv").innerHTML = "";
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Bard";
	document.getElementById("description").innerHTML = "";
	document.getElementById("description").innerHTML = "<b>Description:</b> An inspiring magician whose power echoes the music "+
	"of creation";
	document.getElementById("hitDie").innerHTML = "";
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d8";
	document.getElementById("ability").innerHTML = "";
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Charisma";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Dexterity & Charisma";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> Light armour, simple weapons,"+
	"hand crossbows, longswords, rapiers, shortswords";
}
function cler(){//display cleric class info
	document.getElementById("classDiv").innerHTML = "";
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Cleric";
	document.getElementById("description").innerHTML = "";
	document.getElementById("description").innerHTML = "<b>Description:</b> A priestly champion who wields divine magic in"+
	"service of a higher power";
	document.getElementById("hitDie").innerHTML = "";
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d8";
	document.getElementById("ability").innerHTML = "";
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Wisdom";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Wisdom & Charisma";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> Light and mdium armour,"+
	"shields, simple weapons";
}
function druid(){//display druid class info
	document.getElementById("classDiv").innerHTML = "";
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Druid";
	document.getElementById("description").innerHTML = "";
	document.getElementById("description").innerHTML = "<b>Description:</b> A priest of the Old Faith, wielding the power of " + 
	"nature - moonlight and plant growth, fire and lightning - and adopting animal forms";
	document.getElementById("hitDie").innerHTML = "";
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d8";
	document.getElementById("ability").innerHTML = "";
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Wisdom";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Intelligence & Wisdom";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> Light and medium armour(nonmetal)"+
	", shields(nonmetal), clubs, daggers, darts, javelins, maces, quaterstaffs, scimitars, sickles, slings, spears";
}
function fight(){//display fighter class info
	document.getElementById("classDiv").innerHTML = "";
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Fighter";
	document.getElementById("description").innerHTML = "";
	document.getElementById("description").innerHTML = "<b>Description:</b> A master of martial combat, skilled with a " + 
	"variety of weapons and armour";
	document.getElementById("hitDie").innerHTML = "";
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d10";
	document.getElementById("ability").innerHTML = "";
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Strength or Dexterity";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Strength & Constitution";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> All armour, shields, simple and"+
	" martial weapons";
}
function monk(){//display monk class info
	document.getElementById("classDiv").innerHTML = "";
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Monk";
	document.getElementById("description").innerHTML = "";
	document.getElementById("description").innerHTML = "<b>Description:</b> An master of martial arts, harnessing the power of the " + 
	"body in pursuit of physical and spiritual perfection";
	document.getElementById("hitDie").innerHTML = "";
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d8";
	document.getElementById("ability").innerHTML = "";
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Dexterity & Wisdom";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Strength & Dexterity";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> Simple weapons, shortswords";
}
function pala(){//display paladin class info
	document.getElementById("classDiv").innerHTML = "";
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Paladin";
	document.getElementById("description").innerHTML = "";
	document.getElementById("description").innerHTML = "<b>Description:</b> A holy warrior bound to a sacred oath";
	document.getElementById("hitDie").innerHTML = "";
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d10";
	document.getElementById("ability").innerHTML = "";
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Strength & Charisma";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Wisdom & Charisma";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> All armour, shields, simple and"+
	" martial weapons";
}
function rang(){//display ranger class info
	document.getElementById("classDiv").innerHTML = "";
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Ranger";
	document.getElementById("description").innerHTML = "";
	document.getElementById("description").innerHTML = "<b>Description:</b> A Warrior who uses marial prowess and nature magic" +
	" to combat threats on the edges of civilization";
	document.getElementById("hitDie").innerHTML = "";
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d10";
	document.getElementById("ability").innerHTML = "";
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Dexterity & Wisdom";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Strength & Dexterity";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> Light and medium armour,"+
	" shields, simple and martial weapons";
}
function rogu(){//display rogue class info
	document.getElementById("classDiv").innerHTML = "";
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Rogue";
	document.getElementById("description").innerHTML = "";
	document.getElementById("description").innerHTML = "<b>Description:</b> A scoundrel who uses stealth and trickery to " +
	"overcome obstacles and enemies";
	document.getElementById("hitDie").innerHTML = "";
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d8";
	document.getElementById("ability").innerHTML = "";
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Dexterity";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Dexterity & Intelligence";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> Light armour, simple weapons"+
	", hand crossbows, longswords, rapiers, shortswords";
}

function sorc(){//display sorceror class info
	document.getElementById("classDiv").innerHTML = "";
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Sorcerer";
	document.getElementById("description").innerHTML = "";
	document.getElementById("description").innerHTML = "<b>Description:</b> A spellcaster who draws on inherent magic from a gift " +
	"or bloodline";
	document.getElementById("hitDie").innerHTML = "";
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d6";
	document.getElementById("ability").innerHTML = "";
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Charisma";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Charisma & Constitution";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> Daggers, darts, slings, "+
	"quaterstaffs, light crossbows";
}
function warl(){//display warlock class info
	document.getElementById("classDiv").innerHTML = "";
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Warlock";
	document.getElementById("description").innerHTML = "";
	document.getElementById("description").innerHTML = "<b>Description:</b> A wielder of magic that is derived from a bargain with" +
	" an extraplanar entity";
	document.getElementById("hitDie").innerHTML = "";
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d8";
	document.getElementById("ability").innerHTML = "";
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Charisma";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Wisdom & Charisma";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> Light armour, simple weapons";
}
function wiza(){//display wizard info
	document.getElementById("classDiv").innerHTML = "";
	document.getElementById("classDiv").innerHTML = "<b>class:</b> Wizard";
	document.getElementById("description").innerHTML = "";
	document.getElementById("description").innerHTML = "<b>Description:</b> A scholarly magic-user capable of manipulating the " +
	"structures of reality";
	document.getElementById("hitDie").innerHTML = "";
	document.getElementById("hitDie").innerHTML = "<b>Hit Die:</b> d6";
	document.getElementById("ability").innerHTML = "";
	document.getElementById("ability").innerHTML = "<b>Primary Ability:</b> Intelligence";
	document.getElementById("saveThrow").innerHTML = "";
	document.getElementById("saveThrow").innerHTML = "<b>Saving Throw Proficiencies:</b> Intelligence & Wisdom";
	document.getElementById("proficiencies").innerHTML = "";
	document.getElementById("proficiencies").innerHTML = "<b>Armour and Weapon Proficiencies:</b> daggers, darts, slings, "+
	"light crossbows";
}
</script>
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
	
<h1>Bram's character creator</h1>
	<h2>
		Choose a class
		</h2>
		<form><!-- choose class -->
		<center>
		<input type="radio"  name = "class" value="1" onclick = "barb();">Barbarian<!-- functions populate the later divs with relevant info -->
		<input type="radio"  name = "class" value="2" onclick = "bard();">Bard
		<input type="radio"  name = "class" value="3" onclick = "cler();">Cleric
		<input type="radio"  name = "class" value="4" onclick = "druid();">Druid
		<input type="radio"  name = "class" value="5" onclick = "fight();">Fighter
		<input type="radio"  name = "class" value="6" onclick = "monk();">Monk
		<input type="radio"  name = "class" value="7" onclick = "pala();">Paladin
		<input type="radio"  name = "class" value="8" onclick = "rang();">Ranger
		<input type="radio"  name = "class" value="9" onclick = "rogu();">Rogue
		<input type="radio"  name = "class" value="10" onclick = "sorc();">Sorceror
		<input type="radio"  name = "class" value="11" onclick = "warl();">Warlock
		<input type="radio"  name = "class" value="12" onclick = "wiza();">Wizard
		<h2>class information:</h2>
		<div id ="classDiv"></div><!-- divs for class info -->
		<div id ="description"></div>
		<div id ="hitDie"></div>
		<div id ="ability"></div>
		<div id ="saveThrow"></div>
		<div id ="proficiencies"></div>
		<input type="submit" id = "fixedbutton"><!-- submit button -->
		</center>
		</form>
		
<%
int selectedItem = 0;
if (request.getParameter("class") != null) {
	selectedItem = Integer.parseInt(request.getParameter("class"));//get chosen class
}		
switch(selectedItem){//switch depending on chosen class
case 1:
	response.sendRedirect("barbarianjsp.jsp");//barbarian, redirect to appropriate class page for further class specific choices
	break;
case 2:
	response.sendRedirect("bard.jsp");//bard
	break;
case 3:
	response.sendRedirect("cleric.jsp");//cleric
	break;
case 4:
	response.sendRedirect("druid.jsp");//druid
	break;
case 5:
	response.sendRedirect("fighter.jsp");//fighter
	break;
case 6:
	response.sendRedirect("monk.jsp");//monk
	break;
case 7:
	response.sendRedirect("paladin.jsp");//paladin
	break;
case 8:
	response.sendRedirect("ranger.jsp");//ranger
	break;
case 9:
	response.sendRedirect("rogue.jsp");//rogue
	break;
case 10:
	response.sendRedirect("sorcerer.jsp");//sorceror
	break;
case 11:
	response.sendRedirect("warlock.jsp");//warlock
	break;
case 12:
	response.sendRedirect("wizard.jsp");//wizard
	break;
}
%>

</body>
</html>