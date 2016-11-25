function highElf(){//high elf info fucntion
	document.getElementById("radioDiv").innerHTML = "";//reset div's that may already hold information or buttons
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head").innerHTML = "choose a language";//inform of choices
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "High elves are the most magically talented of the elves <br>" +
			" they learn an aditional language and begin with a magical cantrip. They have improved dexterity and intelligence.";
	//set info
	var objDiv = document.getElementById("radioDiv");//create a useable variable equal to the radioDiv div.
     
        var radioItem1 = document.createElement("input");//create radio items that are radio buttons with the name language and values
        radioItem1.type = "radio";
        radioItem1.name = "language";
        radioItem1.value = "0";//value for switch case block
 
        var radioItem2 = document.createElement("input");//each radio item is created seperately in this way
        radioItem2.type = "radio";
        radioItem2.name = "language";
        radioItem2.value = "1";
        
        var radioItem3 = document.createElement("input");
        radioItem3.type = "radio";
        radioItem3.name = "language";
        radioItem3.value = "2";
        
        var radioItem4 = document.createElement("input");
        radioItem4.type = "radio";
        radioItem4.name = "language";
        radioItem4.value = "3";
        
        var radioItem5 = document.createElement("input");
        radioItem5.type = "radio";
        radioItem5.name = "language";
        radioItem5.value = "4";
        
        var radioItem6 = document.createElement("input");
        radioItem6.type = "radio";
        radioItem6.name = "language";
        radioItem6.value = "5";
        
        var radioItem7 = document.createElement("input");
        radioItem7.type = "radio";
        radioItem7.name = "language";
        radioItem7.value = "6";
        
        var radioItem8 = document.createElement("input");
        radioItem8.type = "radio";
        radioItem8.name = "language";
        radioItem8.value = "7";
        
        var radioItem9 = document.createElement("input");
        radioItem9.type = "radio";
        radioItem9.name = "language";
        radioItem9.value = "8";
        
        var radioItem10 = document.createElement("input");
        radioItem10.type = "radio";
        radioItem10.name = "language";
        radioItem10.value = "9";
        
        var radioItem11 = document.createElement("input");
        radioItem11.type = "radio";
        radioItem11.name = "language";
        radioItem11.value = "10";
        
        var radioItem12 = document.createElement("input");
        radioItem12.type = "radio";
        radioItem12.name = "language";
        radioItem12.value = "11";
        
        var radioItem13 = document.createElement("input");
        radioItem13.type = "radio";
        radioItem13.name = "language";
        radioItem13.value = "12";
        
        var radioItem14 = document.createElement("input");
        radioItem14.type = "radio";
        radioItem14.name = "language";
        radioItem14.value = "13";
 
        var objTextNode1 = document.createTextNode("Dwarvish");//create a text node to say what language the radio button is to the user
        var objTextNode2 = document.createTextNode("Giant");
        var objTextNode3 = document.createTextNode("Gnomish");
        var objTextNode4 = document.createTextNode("Goblin");
        var objTextNode5 = document.createTextNode("Halfling");
        var objTextNode6 = document.createTextNode("Orc");
        var objTextNode7 = document.createTextNode("Abyssal");
        var objTextNode8 = document.createTextNode("Celestial");
        var objTextNode9 = document.createTextNode("Draconic");
        var objTextNode10 = document.createTextNode("Deep Speech");
        var objTextNode11 = document.createTextNode("Infernal");
        var objTextNode12 = document.createTextNode("Primordial");
        var objTextNode13 = document.createTextNode("Sylvan");
        var objTextNode14 = document.createTextNode("Undercommon");
 
		var objLabel = document.createElement("label");//create labels
        objLabel.htmlFor = radioItem1.id;
        objLabel.appendChild(radioItem1);//append the radio button to the label
        objLabel.appendChild(objTextNode1);//append the text to the radio button
 
        var objLabel2 = document.createElement("label");//append all others in the same way
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
         
 
        objDiv.appendChild(objLabel);//append labels to the origional div
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
        
}

function woodElf(){//wood elf function
	document.getElementById("radioDiv").innerHTML = "";//clear and set info
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "an elf that lives in a forest <br> they have improvesd speed, dexterity and wisdom, they are proficient in perception";
}
function darkElf(){//dark elf
	document.getElementById("radioDiv").innerHTML = "";//clear and set info
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "An elf that dwells underground <br> they have improved dexterity, charisma and night vision, as well as proficiency with many exotic weapons";
}

function dwarfTool(){//clear and set base dwarf info
	document.getElementById("radioDiv").innerHTML = "";
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head").innerHTML = "choose a tool proficiency";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	var objDiv = document.getElementById("radioDiv");//standard radio button creation with 3 options for tools
	var radioItem1 = document.createElement("input");
    radioItem1.type = "radio";
    radioItem1.name = "tool";
    radioItem1.value = "0";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "tool";
    radioItem2.value = "1";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "tool";
    radioItem3.value = "2";
    
    var objTextNode1 = document.createTextNode("smith's tools");
    var objTextNode2 = document.createTextNode("brewer's supplies");
    var objTextNode3 = document.createTextNode("mason's tools");
    
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
    
    objDiv.appendChild(objLabel);
    objDiv.appendChild(objLabel2); 
    objDiv.appendChild(objLabel3);
	
}
function hill(){//hill dwarf info
	document.getElementById("infoBox").innerHTML = "a dwarf from the hills <br> they have improved constitution and wisdom and gain proficiency with a toolset of your choice";
}
function mount(){//mountain dwarf info
	document.getElementById("infoBox").innerHTML = "a dwarf from the mountains<br> they have improved constitution and strength and gain proficiency with a toolset of your choice";
}

function lightfoot(){//lightfoot halfling
	document.getElementById("radioDiv").innerHTML = "";//clear and set info
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "a quick hobbit <br> with improved dexterity, charisma and an ability to hide";
}
function stout(){//stout halfling
	document.getElementById("radioDiv").innerHTML = "";//clear and set info
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "a slow hobbit <br>  with improved dexterity, constitution and resistance to poison and disease";
}


function hum(){//human
	document.getElementById("radioDiv").innerHTML = "";//clear and set info
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head").innerHTML = "choose a language";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "the standard human with all stats improved and a choice of language";
	var objDiv = document.getElementById("radioDiv");//create language radio buttons
    
    var radioItem1 = document.createElement("input");
    radioItem1.type = "radio";
    radioItem1.name = "langH";
    radioItem1.value = "0";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "langH";
    radioItem2.value = "1";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "langH";
    radioItem3.value = "2";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "langH";
    radioItem4.value = "3";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "langH";
    radioItem5.value = "4";
    

    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "langH";
    radioItem6.value = "5";
    

    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "langH";
    radioItem7.value = "6";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "langH";
    radioItem8.value = "7";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "langH";
    radioItem9.value = "8";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "langH";
    radioItem10.value = "9";
    
    var radioItem11 = document.createElement("input");
    radioItem11.type = "radio";
    radioItem11.name = "langH";
    radioItem11.value = "10";
    
    var radioItem12 = document.createElement("input");
    radioItem12.type = "radio";
    radioItem12.name = "langH";
    radioItem12.value = "11";
    
    var radioItem13 = document.createElement("input");
    radioItem13.type = "radio";
    radioItem13.name = "langH";
    radioItem13.value = "12";
    
    var radioItem14 = document.createElement("input");
    radioItem14.type = "radio";
    radioItem14.name = "langH";
    radioItem14.value = "13";
    
    var radioItem15 = document.createElement("input");
    radioItem15.type = "radio";
    radioItem15.name = "langH";
    radioItem15.value = "14";
    

    var objTextNode1 = document.createTextNode("Dwarvish");
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
     

    objDiv.appendChild(objLabel);
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
}
function humVar(){//human variant
	hum();//run human function to clear and set all info
	document.getElementById("infoBox").innerHTML = "a variant wher the user gets to choose" +
	" 2 impproved ability scores, a proficiency, a language and a trait";//add all variant human info
	document.getElementById("head2").innerHTML = "choose your 2 improved ability scores";
	var objDiv = document.getElementById("checkDiv");//create inputs in the checkbox div
	var radioItem1 = document.createElement("input");
    radioItem1.type = "checkbox";//checkbox
    radioItem1.name = "abil";//ability scores
    radioItem1.value = "1";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "checkbox";
    radioItem2.name = "abil";
    radioItem2.value = "2";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "checkbox";
    radioItem3.name = "abil";
    radioItem3.value = "3";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "checkbox";
    radioItem4.name = "abil";
    radioItem4.value = "4";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "checkbox";
    radioItem5.name = "abil";
    radioItem5.value = "5";
    
    var radioItem6 = document.createElement("input");
    radioItem6.type = "checkbox";
    radioItem6.name = "abil";
    radioItem6.value = "6";
	
    var objTextNode1 = document.createTextNode("Strength");//set text to the types of ability scores
    var objTextNode2 = document.createTextNode("Dexterity");
    var objTextNode3 = document.createTextNode("Constitution");
    var objTextNode4 = document.createTextNode("Intelligence");
    var objTextNode5 = document.createTextNode("Wisdom");
    var objTextNode6 = document.createTextNode("Charisma");
	
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
	
    objDiv.appendChild(objLabel);//append
    objDiv.appendChild(objLabel2); 
    objDiv.appendChild(objLabel3);
    objDiv.appendChild(objLabel4);
    objDiv.appendChild(objLabel5); 
    objDiv.appendChild(objLabel6);
    
    var objDiv = document.getElementById("profDiv");//use the proficiency div
    document.getElementById("head3").innerHTML = "Choose a proficiency:";
    var radioItem1 = document.createElement("input");//create radio buttons for profficiencies in the prof div
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

    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "prof";
    radioItem4.value = "4";

    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "prof";
    radioItem5.value = "5";

    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "prof";
    radioItem6.value = "6";

    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "prof";
    radioItem7.value = "7";

    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "prof";
    radioItem8.value = "8";

    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "prof";
    radioItem9.value = "9";

    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "prof";
    radioItem10.value = "10";

    var radioItem11 = document.createElement("input");
    radioItem11.type = "radio";
    radioItem11.name = "prof";
    radioItem11.value = "11";

    var radioItem12 = document.createElement("input");
    radioItem12.type = "radio";
    radioItem12.name = "prof";
    radioItem12.value = "12";

    var radioItem13 = document.createElement("input");
    radioItem13.type = "radio";
    radioItem13.name = "prof";
    radioItem13.value = "13";

    var radioItem14 = document.createElement("input");
    radioItem14.type = "radio";
    radioItem14.name = "prof";
    radioItem14.value = "14";

    var radioItem15 = document.createElement("input");
    radioItem15.type = "radio";
    radioItem15.name = "prof";
    radioItem15.value = "15";

    var radioItem16 = document.createElement("input");
    radioItem16.type = "radio";
    radioItem16.name = "prof";
    radioItem16.value = "16";

    var radioItem17 = document.createElement("input");
    radioItem17.type = "radio";
    radioItem17.name = "prof";
    radioItem17.value = "17";

    var radioItem18 = document.createElement("input");
    radioItem18.type = "radio";
    radioItem18.name = "prof";
    radioItem18.value = "18";


    var objTextNode1 = document.createTextNode("athletics");//text for each of the proficiency options
    var objTextNode2 = document.createTextNode("acrobatics");
    var objTextNode3 = document.createTextNode("sleight of hand");
    var objTextNode4 = document.createTextNode("stealth");
    var objTextNode5 = document.createTextNode("arcana");
    var objTextNode6 = document.createTextNode("history");
    var objTextNode7 = document.createTextNode("investigation");
    var objTextNode8 = document.createTextNode("nature");
    var objTextNode9 = document.createTextNode("religion");
    var objTextNode10 = document.createTextNode("animal handling");
    var objTextNode11 = document.createTextNode("insight");
    var objTextNode12 = document.createTextNode("medicine");
    var objTextNode13 = document.createTextNode("perception");
    var objTextNode14 = document.createTextNode("survival");
    var objTextNode15 = document.createTextNode("deception");
    var objTextNode16 = document.createTextNode("intimidation");
    var objTextNode17 = document.createTextNode("performance");
    var objTextNode18 = document.createTextNode("persuasion");

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
    objLabel13.htmlFor = radioItem3.id;
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

    var objLabel16 = document.createElement("label");
    objLabel16.htmlFor = radioItem16.id;
    objLabel16.appendChild(radioItem16);
    objLabel16.appendChild(objTextNode16);

    var objLabel17 = document.createElement("label");
    objLabel17.htmlFor = radioItem17.id;
    objLabel17.appendChild(radioItem17);
    objLabel17.appendChild(objTextNode17);

    var objLabel18 = document.createElement("label");
    objLabel18.htmlFor = radioItem18.id;
    objLabel18.appendChild(radioItem18);
    objLabel18.appendChild(objTextNode18);

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
    objDiv.appendChild(objLabel16);
    objDiv.appendChild(objLabel17);
    objDiv.appendChild(objLabel18); 
	}
	
	
function ancestry(){//dragonborn
	document.getElementById("radioDiv").innerHTML = "";//clear and set info
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head").innerHTML = "choose your type of dragon";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "A humanoid dragon with improved strength and charisma. <br> they also get to choose a type of dragon they are related to, this changes what breath attack they have and what types of damage they are immune to";
	var objDiv = document.getElementById("radioDiv");//add radio buttons to radioDiv
	var radioItem1 = document.createElement("input");//radio buttons for draconic ancestor colour
    radioItem1.type = "radio";
    radioItem1.name = "dragon";
    radioItem1.value = "0";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "dragon";
    radioItem2.value = "1";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "dragon";
    radioItem3.value = "2";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "dragon";
    radioItem4.value = "3";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "dragon";
    radioItem5.value = "4";
    
    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "dragon";
    radioItem6.value = "5";
    
    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "dragon";
    radioItem7.value = "6";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "dragon";
    radioItem8.value = "7";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "dragon";
    radioItem9.value = "8";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "dragon";
    radioItem10.value = "9";
    

    var objTextNode1 = document.createTextNode("Black");//coulour choice text
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
function fGno(){//forest gnome
	document.getElementById("radioDiv").innerHTML = "";//clear and set info
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "a woodland gnome <br>they have improved intelligence and dexterity. They are also able to conjure small illusions";
}
function rGno(){//rock gnome
	document.getElementById("radioDiv").innerHTML = "";//clear and set info
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "a mountaing gnome <br> they have improved intelligence and constitution and are able to tinker and create small clockwork devices";
}
function halfelf(){//half elf
	document.getElementById("radioDiv").innerHTML = "";//clear and set info
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "a half man half elf <br>they gain two improved skills and two proficiencies as well as a language";
	
	document.getElementById("head").innerHTML = "choose a language";
	
	var objDiv = document.getElementById("radioDiv");//add language radio buttons to radioDiv
    
    var radioItem1 = document.createElement("input");
    radioItem1.type = "radio";
    radioItem1.name = "language";
    radioItem1.value = "0";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "language";
    radioItem2.value = "1";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "language";
    radioItem3.value = "2";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "language";
    radioItem4.value = "3";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "language";
    radioItem5.value = "4";
    
    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "language";
    radioItem6.value = "5";
    
    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "language";
    radioItem7.value = "6";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "language";
    radioItem8.value = "7";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "language";
    radioItem9.value = "8";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "language";
    radioItem10.value = "9";
    
    var radioItem11 = document.createElement("input");
    radioItem11.type = "radio";
    radioItem11.name = "language";
    radioItem11.value = "10";
    
    var radioItem12 = document.createElement("input");
    radioItem12.type = "radio";
    radioItem12.name = "language";
    radioItem12.value = "11";
    
    var radioItem13 = document.createElement("input");
    radioItem13.type = "radio";
    radioItem13.name = "language";
    radioItem13.value = "12";
    
    var radioItem14 = document.createElement("input");
    radioItem14.type = "radio";
    radioItem14.name = "language";
    radioItem14.value = "13";

    var objTextNode1 = document.createTextNode("Dwarvish");//text
    var objTextNode2 = document.createTextNode("Giant");
    var objTextNode3 = document.createTextNode("Gnomish");
    var objTextNode4 = document.createTextNode("Goblin");
    var objTextNode5 = document.createTextNode("Halfling");
    var objTextNode6 = document.createTextNode("Orc");
    var objTextNode7 = document.createTextNode("Abyssal");
    var objTextNode8 = document.createTextNode("Celestial");
    var objTextNode9 = document.createTextNode("Draconic");
    var objTextNode10 = document.createTextNode("Deep Speech");
    var objTextNode11 = document.createTextNode("Infernal");
    var objTextNode12 = document.createTextNode("Primordial");
    var objTextNode13 = document.createTextNode("Sylvan");
    var objTextNode14 = document.createTextNode("Undercommon");

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

	document.getElementById("head2").innerHTML = "choose your 2 improved ability scores";
	var objDiv = document.getElementById("checkDiv");//checkDiv
	var radioItem1 = document.createElement("input");//create checkboxes in the checkDiv
	radioItem1.type = "checkbox";
	radioItem1.name = "abils";
	radioItem1.value = "1";

	var radioItem2 = document.createElement("input");
	radioItem2.type = "checkbox";
	radioItem2.name = "abils";
	radioItem2.value = "2";

	var radioItem3 = document.createElement("input");
	radioItem3.type = "checkbox";
	radioItem3.name = "abils";
	radioItem3.value = "3";

	var radioItem4 = document.createElement("input");
	radioItem4.type = "checkbox";
	radioItem4.name = "abils";
	radioItem4.value = "4";

	var radioItem5 = document.createElement("input");
	radioItem5.type = "checkbox";
	radioItem5.name = "abils";
	radioItem5.value = "5";

	var objTextNode1 = document.createTextNode("Strength");//text
	var objTextNode2 = document.createTextNode("Dexterity");
	var objTextNode3 = document.createTextNode("Constitution");
	var objTextNode4 = document.createTextNode("Intelligence");
	var objTextNode5 = document.createTextNode("Wisdom");

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


	objDiv.appendChild(objLabel);//append
	objDiv.appendChild(objLabel2); 
	objDiv.appendChild(objLabel3);
	objDiv.appendChild(objLabel4);
	objDiv.appendChild(objLabel5); 

	var objDiv = document.getElementById("profDiv");//profDiv
	document.getElementById("head3").innerHTML = "Choose 2 proficiencies:";
	var radioItem1 = document.createElement("input");//create proficiency radio buttons
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

	var radioItem5 = document.createElement("input");
	radioItem5.type = "checkbox";
	radioItem5.name = "profs";
	radioItem5.value = "5";

	var radioItem6 = document.createElement("input");
	radioItem6.type = "checkbox";
	radioItem6.name = "profs";
	radioItem6.value = "6";

	var radioItem7 = document.createElement("input");
	radioItem7.type = "checkbox";
	radioItem7.name = "profs";
	radioItem7.value = "7";

	var radioItem8 = document.createElement("input");
	radioItem8.type = "checkbox";
	radioItem8.name = "profs";
	radioItem8.value = "8";

	var radioItem9 = document.createElement("input");
	radioItem9.type = "checkbox";
	radioItem9.name = "profs";
	radioItem9.value = "9";

	var radioItem10 = document.createElement("input");
	radioItem10.type = "checkbox";
	radioItem10.name = "profs";
	radioItem10.value = "10";

	var radioItem11 = document.createElement("input");
	radioItem11.type = "checkbox";
	radioItem11.name = "profs";
	radioItem11.value = "11";

	var radioItem12 = document.createElement("input");
	radioItem12.type = "checkbox";
	radioItem12.name = "profs";
	radioItem12.value = "12";

	var radioItem13 = document.createElement("input");
	radioItem13.type = "checkbox";
	radioItem13.name = "profs";
	radioItem13.value = "13";

	var radioItem14 = document.createElement("input");
	radioItem14.type = "checkbox";
	radioItem14.name = "profs";
	radioItem14.value = "14";

	var radioItem15 = document.createElement("input");
	radioItem15.type = "checkbox";
	radioItem15.name = "profs";
	radioItem15.value = "15";

	var radioItem16 = document.createElement("input");
	radioItem16.type = "checkbox";
	radioItem16.name = "profs";
	radioItem16.value = "16";

	var radioItem17 = document.createElement("input");
	radioItem17.type = "checkbox";
	radioItem17.name = "profs";
	radioItem17.value = "17";

	var radioItem18 = document.createElement("input");
	radioItem18.type = "checkbox";
	radioItem18.name = "profs";
	radioItem18.value = "18";


	var objTextNode1 = document.createTextNode("athletics");//text
	var objTextNode2 = document.createTextNode("acrobatics");
	var objTextNode3 = document.createTextNode("sleight of hand");
	var objTextNode4 = document.createTextNode("stealth");
	var objTextNode5 = document.createTextNode("arcana");
	var objTextNode6 = document.createTextNode("history");
	var objTextNode7 = document.createTextNode("investigation");
	var objTextNode8 = document.createTextNode("nature");
	var objTextNode9 = document.createTextNode("religion");
	var objTextNode10 = document.createTextNode("animal handling");
	var objTextNode11 = document.createTextNode("insight");
	var objTextNode12 = document.createTextNode("medicine");
	var objTextNode13 = document.createTextNode("perception");
	var objTextNode14 = document.createTextNode("survival");
	var objTextNode15 = document.createTextNode("deception");
	var objTextNode16 = document.createTextNode("intimidation");
	var objTextNode17 = document.createTextNode("performance");
	var objTextNode18 = document.createTextNode("persuasion");

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
	objLabel13.htmlFor = radioItem3.id;
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

	var objLabel16 = document.createElement("label");
	objLabel16.htmlFor = radioItem16.id;
	objLabel16.appendChild(radioItem16);
	objLabel16.appendChild(objTextNode16);

	var objLabel17 = document.createElement("label");
	objLabel17.htmlFor = radioItem17.id;
	objLabel17.appendChild(radioItem17);
	objLabel17.appendChild(objTextNode17);

	var objLabel18 = document.createElement("label");
	objLabel18.htmlFor = radioItem18.id;
	objLabel18.appendChild(radioItem18);
	objLabel18.appendChild(objTextNode18);

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
	objDiv.appendChild(objLabel16);
	objDiv.appendChild(objLabel17);
	objDiv.appendChild(objLabel18); 
}

function orc(){//half orc
	document.getElementById("radioDiv").innerHTML = ""; //clear and set info
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "a half man half orc <br> they get improved strength, constitution and intimidation";
}
function tiefling(){//tiefling
	document.getElementById("radioDiv").innerHTML = "";//clear and set info
	document.getElementById("checkDiv").innerHTML = "";
	document.getElementById("profDiv").innerHTML = "";
	document.getElementById("head").innerHTML = "";
	document.getElementById("head2").innerHTML = "";
	document.getElementById("head3").innerHTML = "";
	document.getElementById("infoBox").innerHTML = "a half man half demon <br> they get improved charisma, intelligence and resistance to fire";
}


