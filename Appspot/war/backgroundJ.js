function acol(){//create acolyte information in divs
	document.getElementById("profBox").innerHTML = "";
	document.getElementById("profBox").innerHTML = "You become proficient in religion and insight";
	document.getElementById("objProf").innerHTML = "";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn two new languages";
	document.getElementById("objLang").innerHTML = "";
	var objDiv = document.getElementById("objLang");
    
    var radioItem1 = document.createElement("input");//create radio buttons for each of the language choices
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
    

    var objTextNode1 = document.createTextNode("Dwarvish");//create text for each radio button
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
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "You recieve: A holy symbol," +
			" a prayer book, 5 sticks of inscense, vestments, common clothes, 15 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "Shelter the faithful";
}

function char(){//charlatan info function
	document.getElementById("profBox").innerHTML = "";//add info to boxes
	document.getElementById("profBox").innerHTML = "You become proficient in deception," +
			" sleight of hand and with disguise kits and forgery kits";
	document.getElementById("objProf").innerHTML = "";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn no new languages";
	document.getElementById("objLang").innerHTML = "";
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "You recieve: A set of fine clothes," +
			" a disguise kit, tools of your con, and 15 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	var objDiv = document.getElementById("objEquip");
	var radioItem1 = document.createElement("input");//create scam tool radio buttons
	radioItem1.type = "radio";
	radioItem1.name = "scam";
	radioItem1.value = "ten stoppered bottles of coloured liquid";

	var radioItem2 = document.createElement("input");
	radioItem2.type = "radio";
	radioItem2.name = "scam";
	radioItem2.value = "a set of weighted dice";

	var radioItem3 = document.createElement("input");
	radioItem3.type = "radio";
	radioItem3.name = "scam";
	radioItem3.value = "A deck of marked cards";

	var radioItem4 = document.createElement("input");
	radioItem4.type = "radio";
	radioItem4.name = "scam";
	radioItem4.value = "A signet ring of an imaginary duke";

	
	var objTextNode1 = document.createTextNode("ten stoppered bottles of coloured liquid");//text
	var objTextNode2 = document.createTextNode("a set of weighted dice");
	var objTextNode3 = document.createTextNode("A deck of marked cards");
	var objTextNode4 = document.createTextNode("A signet ring of an imaginary duke");


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
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "False identity";
}

function crim(){//criminal funciton
	document.getElementById("profBox").innerHTML = "";//create infor
	document.getElementById("profBox").innerHTML = "You become proficient in stealth, deception," +
			" thieves tools and a gaming set of your choice";
	document.getElementById("objProf").innerHTML = "";
	var objDiv = document.getElementById("objProf");
	var radioItem1 = document.createElement("input");//create game set radio buttons
	radioItem1.type = "radio";
	radioItem1.name = "game";
	radioItem1.value = "Dice set";

	var radioItem2 = document.createElement("input");
	radioItem2.type = "radio";
	radioItem2.name = "game";
	radioItem2.value = "Dragonchess set";

	var radioItem3 = document.createElement("input");
	radioItem3.type = "radio";
	radioItem3.name = "game";
	radioItem3.value = "Playing card set";

	var radioItem4 = document.createElement("input");
	radioItem4.type = "radio";
	radioItem4.name = "game";
	radioItem4.value = "Three-dragon ante";

	
	var objTextNode1 = document.createTextNode("Dice set");//text
	var objTextNode2 = document.createTextNode("Dragonchess set");
	var objTextNode3 = document.createTextNode("Playing card set");
	var objTextNode4 = document.createTextNode("Three-dragon ante");


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
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn no new languages";
	document.getElementById("objLang").innerHTML = "";
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "A crowbar, A set of dark common clothing, " +
			"a hood, 15 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "criminal contract";
}
function ent(){//entertainer function
	document.getElementById("profBox").innerHTML = "";//create info
	document.getElementById("profBox").innerHTML = "You become proficient in acrobatics " +
			"and performance and with disguise kits and a msuical intrument:";
	document.getElementById("objProf").innerHTML = "";
	var objDiv = document.getElementById("objProf");
	var radioItem1 = document.createElement("input");//create instrument radio buttons
    radioItem1.type = "radio";
    radioItem1.name = "inst";
    radioItem1.value = "Bagpipes";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "inst";
    radioItem2.value = "Drum";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "inst";
    radioItem3.value = "Dulcimer";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "inst";
    radioItem4.value = "Flute";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "inst";
    radioItem5.value = "Lute";
    

    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "inst";
    radioItem6.value = "Lyre";
    

    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "inst";
    radioItem7.value = "Horn";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "inst";
    radioItem8.value = "Pan flute";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "inst";
    radioItem9.value = "Shawm";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "inst";
    radioItem10.value = "Viol";
    
    var objTextNode1 = document.createTextNode("Bagpipes");//text
    var objTextNode2 = document.createTextNode("Drum");
    var objTextNode3 = document.createTextNode("Dulcimer");
    var objTextNode4 = document.createTextNode("Flute");
    var objTextNode5 = document.createTextNode("Lute");
    var objTextNode6 = document.createTextNode("Lyre");
    var objTextNode7 = document.createTextNode("Horn");
    var objTextNode8 = document.createTextNode("Pan flute");
    var objTextNode9 = document.createTextNode("Shawm");
    var objTextNode10 = document.createTextNode("Viol");
    


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
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn no new languages";
	document.getElementById("objLang").innerHTML = "";
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "You recieve: Your musical instrument," +
			" the favor of an admirer, a costume and 15 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "By popular demand";
}

function folk(){//folk hero function
	document.getElementById("profBox").innerHTML = "";//add info
	document.getElementById("profBox").innerHTML = "You become proficient in animal " +
			"handling, survival, vehicles(land), artisans tools of choice:";
	document.getElementById("objProf").innerHTML = "";
	var objDiv = document.getElementById("objProf");
     
        var radioItem1 = document.createElement("input");//add artisan tool choice radio buttons
        radioItem1.type = "radio";
        radioItem1.name = "artisan";
        radioItem1.value = "Alchemist's supplies";
 
        var radioItem2 = document.createElement("input");
        radioItem2.type = "radio";
        radioItem2.name = "artisan";
        radioItem2.value = "Brewer's supplies";
        
        var radioItem3 = document.createElement("input");
        radioItem3.type = "radio";
        radioItem3.name = "artisan";
        radioItem3.value = "Calligrapher's supplies";
        
        var radioItem4 = document.createElement("input");
        radioItem4.type = "radio";
        radioItem4.name = "artisan";
        radioItem4.value = "Carpenter's tools";
        
        var radioItem5 = document.createElement("input");
        radioItem5.type = "radio";
        radioItem5.name = "artisan";
        radioItem5.value = "Cobbler's tools";
        
        var radioItem6 = document.createElement("input");
        radioItem6.type = "radio";
        radioItem6.name = "artisan";
        radioItem6.value = "Cartographer's tools";
        
        var radioItem7 = document.createElement("input");
        radioItem7.type = "radio";
        radioItem7.name = "artisan";
        radioItem7.value = "Cook's utensils";
        
        var radioItem8 = document.createElement("input");
        radioItem8.type = "radio";
        radioItem8.name = "artisan";
        radioItem8.value = "Glassblower's tools";
        
        var radioItem9 = document.createElement("input");
        radioItem9.type = "radio";
        radioItem9.name = "artisan";
        radioItem9.value = "Jeweler's tools";
        
        var radioItem10 = document.createElement("input");
        radioItem10.type = "radio";
        radioItem10.name = "artisan";
        radioItem10.value = "Leatherworker's tools";
        
        var radioItem11 = document.createElement("input");
        radioItem11.type = "radio";
        radioItem11.name = "artisan";
        radioItem11.value = "Mason's tools";
        
        var radioItem12 = document.createElement("input");
        radioItem12.type = "radio";
        radioItem12.name = "artisan";
        radioItem12.value = "Painter's supplies";
        
        var radioItem13 = document.createElement("input");
        radioItem13.type = "radio";
        radioItem13.name = "artisan";
        radioItem13.value = "Potter's tools";
        
        var radioItem14 = document.createElement("input");
        radioItem14.type = "radio";
        radioItem14.name = "artisan";
        radioItem14.value = "Smith's tools";
        
        var radioItem15 = document.createElement("input");
        radioItem15.type = "radio";
        radioItem15.name = "artisan";
        radioItem15.value = "Tinker's tools";
        
        var radioItem16 = document.createElement("input");
        radioItem16.type = "radio";
        radioItem16.name = "artisan";
        radioItem16.value = "Weaver's tools";
        
        var radioItem17 = document.createElement("input");
        radioItem17.type = "radio";
        radioItem17.name = "artisan";
        radioItem17.value = "Woodcarver's tools";
 
        var objTextNode1 = document.createTextNode("Alchemist's supplies");//text
        var objTextNode2 = document.createTextNode("Brewer's supplies");
        var objTextNode3 = document.createTextNode("Calligrapher's supplies");
        var objTextNode4 = document.createTextNode("Carpenter's tools");
        var objTextNode5 = document.createTextNode("Cartographer's tools");
        var objTextNode6 = document.createTextNode("Cobbler's tools");
        var objTextNode7 = document.createTextNode("Cook's utensils");
        var objTextNode8 = document.createTextNode("Glassblower's tools");
        var objTextNode9 = document.createTextNode("Jeweler's tools");
        var objTextNode10 = document.createTextNode("Leatherworker's tools ");
        var objTextNode11 = document.createTextNode("Mason's tools");
        var objTextNode12 = document.createTextNode("Painter's supplies");
        var objTextNode13 = document.createTextNode("Potter's tools");
        var objTextNode14 = document.createTextNode("Smith's tools");
        var objTextNode15 = document.createTextNode("Tinker's tools");
        var objTextNode16 = document.createTextNode("Weaver's tools");
        var objTextNode17 = document.createTextNode("Woodcarver's tools");
 
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
        
        var objLabel16 = document.createElement("label");
        objLabel16.htmlFor = radioItem16.id;
        objLabel16.appendChild(radioItem16);
        objLabel16.appendChild(objTextNode16);
        
        var objLabel17 = document.createElement("label");
        objLabel17.htmlFor = radioItem17.id;
        objLabel17.appendChild(radioItem17);
        objLabel17.appendChild(objTextNode17);
 
        objDiv.appendChild(objLabel);//append
        objDiv.appendChild(objLabel2); 
        objDiv.appendChild(objLabel3);
        objDiv.appendChild(objLabel4);
        objDiv.appendChild(objLabel5); 
        objDiv.appendChild(objLabel6);
        objDiv.appendChild(objLabel7);
        objDiv.appendChild(objLabel8);
        objDiv.innerHTML += "<br>";//break line
        objDiv.appendChild(objLabel9);
        objDiv.appendChild(objLabel10);
        objDiv.appendChild(objLabel11); 
        objDiv.appendChild(objLabel12);
        objDiv.appendChild(objLabel13);
        objDiv.appendChild(objLabel14); 
        objDiv.appendChild(objLabel15);
        objDiv.appendChild(objLabel16);
        objDiv.appendChild(objLabel17);
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn no new languages";
	document.getElementById("objLang").innerHTML = "";
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "You recieve: your proficient artisan tools, a shovel, an iron pot, a set of common clothes, 15 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "Rustic hospitality";
}

function guild(){//guild artisan function
	document.getElementById("profBox").innerHTML = "";//add info
	document.getElementById("profBox").innerHTML = "You become proficient in insight, persuasion, artisans tools of choice:";
	document.getElementById("objProf").innerHTML = "";
	var objDiv = document.getElementById("objProf");
     
	var radioItem1 = document.createElement("input");//add artisan tool radio buttons
    radioItem1.type = "radio";
    radioItem1.name = "artisan";
    radioItem1.value = "Alchemist's supplies";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "artisan";
    radioItem2.value = "Brewer's supplies";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "artisan";
    radioItem3.value = "Calligrapher's supplies";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "artisan";
    radioItem4.value = "Carpenter's tools";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "artisan";
    radioItem5.value = "Cobbler's tools";
    
    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "artisan";
    radioItem6.value = "Cartographer's tools";
    
    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "artisan";
    radioItem7.value = "Cook's utensils";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "artisan";
    radioItem8.value = "Glassblower's tools";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "artisan";
    radioItem9.value = "Jeweler's tools";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "artisan";
    radioItem10.value = "Leatherworker's tools";
    
    var radioItem11 = document.createElement("input");
    radioItem11.type = "radio";
    radioItem11.name = "artisan";
    radioItem11.value = "Mason's tools";
    
    var radioItem12 = document.createElement("input");
    radioItem12.type = "radio";
    radioItem12.name = "artisan";
    radioItem12.value = "Painter's supplies";
    
    var radioItem13 = document.createElement("input");
    radioItem13.type = "radio";
    radioItem13.name = "artisan";
    radioItem13.value = "Potter's tools";
    
    var radioItem14 = document.createElement("input");
    radioItem14.type = "radio";
    radioItem14.name = "artisan";
    radioItem14.value = "Smith's tools";
    
    var radioItem15 = document.createElement("input");
    radioItem15.type = "radio";
    radioItem15.name = "artisan";
    radioItem15.value = "Tinker's tools";
    
    var radioItem16 = document.createElement("input");
    radioItem16.type = "radio";
    radioItem16.name = "artisan";
    radioItem16.value = "Weaver's tools";
    
    var radioItem17 = document.createElement("input");
    radioItem17.type = "radio";
    radioItem17.name = "artisan";
    radioItem17.value = "Woodcarver's tools";
 
        var objTextNode1 = document.createTextNode("Alchemist's supplies");//text
        var objTextNode2 = document.createTextNode("Brewer's supplies");
        var objTextNode3 = document.createTextNode("Calligrapher's supplies");
        var objTextNode4 = document.createTextNode("Carpenter's tools");
        var objTextNode5 = document.createTextNode("Cartographer's tools");
        var objTextNode6 = document.createTextNode("Cobbler's tools");
        var objTextNode7 = document.createTextNode("Cook's utensils");
        var objTextNode8 = document.createTextNode("Glassblower's tools");
        var objTextNode9 = document.createTextNode("Jeweler's tools");
        var objTextNode10 = document.createTextNode("Leatherworker's tools");
        var objTextNode11 = document.createTextNode("Mason's tools");
        var objTextNode12 = document.createTextNode("Painter's supplies");
        var objTextNode13 = document.createTextNode("Potter's tools");
        var objTextNode14 = document.createTextNode("Smith's tools");
        var objTextNode15 = document.createTextNode("Tinker's tools");
        var objTextNode16 = document.createTextNode("Weaver's tools");
        var objTextNode17 = document.createTextNode("Woodcarver's tools");
 
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
        
        var objLabel16 = document.createElement("label");
        objLabel16.htmlFor = radioItem16.id;
        objLabel16.appendChild(radioItem16);
        objLabel16.appendChild(objTextNode16);
        
        var objLabel17 = document.createElement("label");
        objLabel17.htmlFor = radioItem17.id;
        objLabel17.appendChild(radioItem17);
        objLabel17.appendChild(objTextNode17);
 
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
        objDiv.innerHTML += "<br>";//break line
        objDiv.appendChild(objLabel11); 
        objDiv.appendChild(objLabel12);
        objDiv.appendChild(objLabel13);
        objDiv.appendChild(objLabel14); 
        objDiv.appendChild(objLabel15);
        objDiv.appendChild(objLabel16);
        objDiv.appendChild(objLabel17);
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn one new language";
	document.getElementById("objLang").innerHTML = "";
	var objDiv = document.getElementById("objLang");
    
    var radioItem1 = document.createElement("input");//add language radio buttons
    radioItem1.type = "radio";
    radioItem1.name = "langH";
    radioItem1.value = "Dwarvish";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "langH";
    radioItem2.value = "Elvish";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "langH";
    radioItem3.value = "Giant";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "langH";
    radioItem4.value = "Gnomish";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "langH";
    radioItem5.value = "Goblin";
    

    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "langH";
    radioItem6.value = "Halfling";
    

    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "langH";
    radioItem7.value = "Orc";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "langH";
    radioItem8.value = "Abyssal";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "langH";
    radioItem9.value = "Celestial";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "langH";
    radioItem10.value = "Draconic";
    
    var radioItem11 = document.createElement("input");
    radioItem11.type = "radio";
    radioItem11.name = "langH";
    radioItem11.value = "Deep Speech";
    
    var radioItem12 = document.createElement("input");
    radioItem12.type = "radio";
    radioItem12.name = "langH";
    radioItem12.value = "Infernal";
    
    var radioItem13 = document.createElement("input");
    radioItem13.type = "radio";
    radioItem13.name = "langH";
    radioItem13.value = "Primordial";
    
    var radioItem14 = document.createElement("input");
    radioItem14.type = "radio";
    radioItem14.name = "langH";
    radioItem14.value = "Sylvan";
    
    var radioItem15 = document.createElement("input");
    radioItem15.type = "radio";
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
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "You recieve: your proficient artisan tools," +
			" A letter of introduction from your guild, a set of traveller's clothes, 15 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "Rustic hospitality";
}
function herm(){//hermit function
	document.getElementById("profBox").innerHTML = "";//add info
	document.getElementById("profBox").innerHTML = "You become proficient in medicine, religion and with Herbalism kits";
	document.getElementById("objProf").innerHTML = "";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn a new language";
	document.getElementById("objLang").innerHTML = "";
	var objDiv = document.getElementById("objLang");
    
	var radioItem1 = document.createElement("input");//language radio buttons
    radioItem1.type = "radio";
    radioItem1.name = "langH";
    radioItem1.value = "Dwarvish";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "langH";
    radioItem2.value = "Elvish";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "langH";
    radioItem3.value = "Giant";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "langH";
    radioItem4.value = "Gnomish";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "langH";
    radioItem5.value = "Goblin";
    

    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "langH";
    radioItem6.value = "Halfling";
    

    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "langH";
    radioItem7.value = "Orc";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "langH";
    radioItem8.value = "Abyssal";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "langH";
    radioItem9.value = "Celestial";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "langH";
    radioItem10.value = "Draconic";
    
    var radioItem11 = document.createElement("input");
    radioItem11.type = "radio";
    radioItem11.name = "langH";
    radioItem11.value = "Deep Speech";
    
    var radioItem12 = document.createElement("input");
    radioItem12.type = "radio";
    radioItem12.name = "langH";
    radioItem12.value = "Infernal";
    
    var radioItem13 = document.createElement("input");
    radioItem13.type = "radio";
    radioItem13.name = "langH";
    radioItem13.value = "Primordial";
    
    var radioItem14 = document.createElement("input");
    radioItem14.type = "radio";
    radioItem14.name = "langH";
    radioItem14.value = "Sylvan";
    
    var radioItem15 = document.createElement("input");
    radioItem15.type = "radio";
    radioItem15.name = "langH";
    radioItem15.value = "Undercommon";
    

    var objTextNode1 = document.createTextNode("Dwarvish");//add text
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
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "You recieve: A scroll case stuffed full of notes from your studies or prayers, a winter blanket, a set of common clothes, a herbalism kit, 5 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "Discovery";
}
function nob(){//noble function
	document.getElementById("profBox").innerHTML = "";//add info
	document.getElementById("profBox").innerHTML = "You become proficient in history, persuasion and a gaming set of your choice";
	document.getElementById("objProf").innerHTML = "";
	var objDiv = document.getElementById("objProf");
	var radioItem1 = document.createElement("input");//game set radio buttons
	radioItem1.type = "radio";
	radioItem1.name = "game";
	radioItem1.value = "Dice set";

	var radioItem2 = document.createElement("input");
	radioItem2.type = "radio";
	radioItem2.name = "game";
	radioItem2.value = "Dragonchess set";

	var radioItem3 = document.createElement("input");
	radioItem3.type = "radio";
	radioItem3.name = "game";
	radioItem3.value = "Playing card set";

	var radioItem4 = document.createElement("input");
	radioItem4.type = "radio";
	radioItem4.name = "game";
	radioItem4.value = "Three-dragon ante";

	
	var objTextNode1 = document.createTextNode("Dice set");//text
	var objTextNode2 = document.createTextNode("Dragonchess set");
	var objTextNode3 = document.createTextNode("Playing card set");
	var objTextNode4 = document.createTextNode("Three-dragon ante");


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
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn a new language";
	document.getElementById("objLang").innerHTML = "";
	var objDiv = document.getElementById("objLang");
    
	var radioItem1 = document.createElement("input");//language radio buttons
    radioItem1.type = "radio";
    radioItem1.name = "langH";
    radioItem1.value = "Dwarvish";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "langH";
    radioItem2.value = "Elvish";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "langH";
    radioItem3.value = "Giant";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "langH";
    radioItem4.value = "Gnomish";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "langH";
    radioItem5.value = "Goblin";
    

    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "langH";
    radioItem6.value = "Halfling";
    

    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "langH";
    radioItem7.value = "Orc";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "langH";
    radioItem8.value = "Abyssal";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "langH";
    radioItem9.value = "Celestial";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "langH";
    radioItem10.value = "Draconic";
    
    var radioItem11 = document.createElement("input");
    radioItem11.type = "radio";
    radioItem11.name = "langH";
    radioItem11.value = "Deep Speech";
    
    var radioItem12 = document.createElement("input");
    radioItem12.type = "radio";
    radioItem12.name = "langH";
    radioItem12.value = "Infernal";
    
    var radioItem13 = document.createElement("input");
    radioItem13.type = "radio";
    radioItem13.name = "langH";
    radioItem13.value = "Primordial";
    
    var radioItem14 = document.createElement("input");
    radioItem14.type = "radio";
    radioItem14.name = "langH";
    radioItem14.value = "Sylvan";
    
    var radioItem15 = document.createElement("input");
    radioItem15.type = "radio";
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
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "A set of fine clothes, a signet ring, " +
			"a scroll of pedigree, 25 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "Position of privilege";
	
}
function knight(){//knight funtion
	document.getElementById("feature").innerHTML = "";//variant feat info
	document.getElementById("feature").innerHTML = "Retainers";
}
function outlander(){//outlander function
	document.getElementById("profBox").innerHTML = "";//add text
	document.getElementById("profBox").innerHTML = "You become proficient in athletics," +
			" survival and a musical instrument of choice:";
	document.getElementById("objProf").innerHTML = "";
	var objDiv = document.getElementById("objProf");
	var radioItem1 = document.createElement("input");//instrument radio buttons
    radioItem1.type = "radio";
    radioItem1.name = "inst";
    radioItem1.value = "Bagpipes";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "inst";
    radioItem2.value = "Drum";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "inst";
    radioItem3.value = "Dulcimer";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "inst";
    radioItem4.value = "Flute";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "inst";
    radioItem5.value = "Lute";
    

    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "inst";
    radioItem6.value = "Lyre";
    

    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "inst";
    radioItem7.value = "Horn";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "inst";
    radioItem8.value = "Pan flute";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "inst";
    radioItem9.value = "Shawm";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "inst";
    radioItem10.value = "Viol";
    
    var objTextNode1 = document.createTextNode("Bagpipes");//text
    var objTextNode2 = document.createTextNode("Drum");
    var objTextNode3 = document.createTextNode("Dulcimer");
    var objTextNode4 = document.createTextNode("Flute");
    var objTextNode5 = document.createTextNode("Lute");
    var objTextNode6 = document.createTextNode("Lyre");
    var objTextNode7 = document.createTextNode("Horn");
    var objTextNode8 = document.createTextNode("Pan flute");
    var objTextNode9 = document.createTextNode("Shawm");
    var objTextNode10 = document.createTextNode("Viol");
    


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
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn a new language";
	document.getElementById("objLang").innerHTML = "";
	var objDiv = document.getElementById("objLang");//add language 
    
	var radioItem1 = document.createElement("input");
    radioItem1.type = "radio";
    radioItem1.name = "langH";
    radioItem1.value = "Dwarvish";

    var radioItem2 = document.createElement("input");
    radioItem2.type = "radio";
    radioItem2.name = "langH";
    radioItem2.value = "Elvish";
    
    var radioItem3 = document.createElement("input");
    radioItem3.type = "radio";
    radioItem3.name = "langH";
    radioItem3.value = "Giant";
    
    var radioItem4 = document.createElement("input");
    radioItem4.type = "radio";
    radioItem4.name = "langH";
    radioItem4.value = "Gnomish";
    
    var radioItem5 = document.createElement("input");
    radioItem5.type = "radio";
    radioItem5.name = "langH";
    radioItem5.value = "Goblin";
    

    var radioItem6 = document.createElement("input");
    radioItem6.type = "radio";
    radioItem6.name = "langH";
    radioItem6.value = "Halfling";
    

    var radioItem7 = document.createElement("input");
    radioItem7.type = "radio";
    radioItem7.name = "langH";
    radioItem7.value = "Orc";
    
    var radioItem8 = document.createElement("input");
    radioItem8.type = "radio";
    radioItem8.name = "langH";
    radioItem8.value = "Abyssal";
    
    var radioItem9 = document.createElement("input");
    radioItem9.type = "radio";
    radioItem9.name = "langH";
    radioItem9.value = "Celestial";
    
    var radioItem10 = document.createElement("input");
    radioItem10.type = "radio";
    radioItem10.name = "langH";
    radioItem10.value = "Draconic";
    
    var radioItem11 = document.createElement("input");
    radioItem11.type = "radio";
    radioItem11.name = "langH";
    radioItem11.value = "Deep Speech";
    
    var radioItem12 = document.createElement("input");
    radioItem12.type = "radio";
    radioItem12.name = "langH";
    radioItem12.value = "Infernal";
    
    var radioItem13 = document.createElement("input");
    radioItem13.type = "radio";
    radioItem13.name = "langH";
    radioItem13.value = "Primordial";
    
    var radioItem14 = document.createElement("input");
    radioItem14.type = "radio";
    radioItem14.name = "langH";
    radioItem14.value = "Sylvan";
    
    var radioItem15 = document.createElement("input");
    radioItem15.type = "radio";
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
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "You recieve: A staff, a hunting trap," +
			" a trophy from an animal you killed, a set of traveller's clothers, 10 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "Wanderer";

}

function sage(){//sage function
	document.getElementById("profBox").innerHTML = "";//add info
	document.getElementById("profBox").innerHTML = "You become proficient in Arcana and History";
	document.getElementById("objProf").innerHTML = "";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn two new languages";
	document.getElementById("objLang").innerHTML = "";
	var objDiv = document.getElementById("objLang");
    
	var radioItem1 = document.createElement("input");//add language radio buttons
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
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "You recieve: A bottle of black ink, a quill, a small knife, a letter" +
			" from a dead colleague posing a question you have not been able to answer, a set of common clothes, 10 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "Researcher";
}
function sailor(){//sailor function
	document.getElementById("profBox").innerHTML = "";//add info
	document.getElementById("profBox").innerHTML = "You become proficient in atheletics, perception and" +
			" with navigators tools and vehicles(water)";
	document.getElementById("objProf").innerHTML = "";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn no new languages";
	document.getElementById("objLang").innerHTML = "";
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "You recieve: A belaying pin(club), 50 feet" +
			" of silk rope, a lucky charm, a set of common clothes, 10 gold pieces ";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "Ship's passage";
}
function pirate(){//pirate function
	document.getElementById("feature").innerHTML = "";//replace feat info
	document.getElementById("feature").innerHTML = "Bad reputation";
}
function sold(){//soldier function
	document.getElementById("profBox").innerHTML = "";//add info
	document.getElementById("profBox").innerHTML = "You become proficient in atletics, intimidation," +
			" vehicles(land) and a gaming set of your choice";
	document.getElementById("objProf").innerHTML = "";
	var objDiv = document.getElementById("objProf");
	var radioItem1 = document.createElement("input");//game set radio buttons
	radioItem1.type = "radio";
	radioItem1.name = "game";
	radioItem1.value = "Dice set";

	var radioItem2 = document.createElement("input");
	radioItem2.type = "radio";
	radioItem2.name = "game";
	radioItem2.value = "Dragonchess set";

	var radioItem3 = document.createElement("input");
	radioItem3.type = "radio";
	radioItem3.name = "game";
	radioItem3.value = "Playing card set";

	var radioItem4 = document.createElement("input");
	radioItem4.type = "radio";
	radioItem4.name = "game";
	radioItem4.value = "Three-dragon ante";

	
	var objTextNode1 = document.createTextNode("Dice set");//text
	var objTextNode2 = document.createTextNode("Dragonchess set");
	var objTextNode3 = document.createTextNode("Playing card set");
	var objTextNode4 = document.createTextNode("Three-dragon ante");


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

	objDiv.appendChild(objLabel);//apppend
	objDiv.appendChild(objLabel2); 
	objDiv.appendChild(objLabel3);
	objDiv.appendChild(objLabel4);
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn no new languages";
	document.getElementById("objLang").innerHTML = "";
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "You recieve: An isnignia of your rank, a trophy" +
			" from a fallen enemy, a game set, a set of common clothes, 10 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "Military rank";
}
function urch(){//urchin function
	document.getElementById("profBox").innerHTML = "";//add info
	document.getElementById("profBox").innerHTML = "You become proficient in sleight of hand, stealth and with" +
			" disguise kits and thieves tools";
	document.getElementById("objProf").innerHTML = "";
	document.getElementById("lang").innerHTML = "";
	document.getElementById("lang").innerHTML = "You learn no new languages";
	document.getElementById("objLang").innerHTML = "";
	document.getElementById("equipment").innerHTML = "";
	document.getElementById("equipment").innerHTML = "You recieve: A small knife, a map of the city you grew up " +
			"in, a pet mouse, a token to remember your parents by, a set of common clothes and 10 gold pieces";
	document.getElementById("objEquip").innerHTML = "";
	document.getElementById("feature").innerHTML = "";
	document.getElementById("feature").innerHTML = "City secrets";
}
