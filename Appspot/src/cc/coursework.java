package cc;
import java.io.Serializable;
public class coursework  implements Serializable{	
	public String race;

	public String name;//real name
	public String pName;// player character name
	public String eyes;//colour
	public String skin;//colour
	public String hair;//colour
	public long age;
	public String size = "medium";

	public int height;
	public int weight;
	public int baseHeight;//set by race
	public int baseWeight;//set by race
	public int heightMod;//set by race
	public int weightMod;//set by race
	
	public String realH;//imperial units
	public String realW;//imperial units
	//background

	public String background;
	public String personality;//set by relevant jsp background page
	public String ideal;//set by relevant jsp background page
	public String bond;//set by relevant jsp background page
	public String flaw;//set by relevant jsp background page
	public String backstory;

	public long money;
	public String equipment= "";
	public String alignment;// set to a value from alignment array below
	public final String[] alignmentTable = { "Chaotic good", "Good", "Lawful good",
			"Chaotic neutral", "Neutral", "Lawful neutral", "Chaotic evil",
			"Evil", "Lawful evil" };//contains presets for player alignment
	
	//abilities
	public long Str = 0;//all values that are saved to the datastore as ints, are longs as the datastore only uses longs
	public long Dex = 0;
	public long Con = 0;
	public long Int = 0;
	public long Wis = 0;
	public long Cha = 0;

	public long StrMod;//modifier, calculated in processing page
	public long DexMod;
	public long ConMod;
	public long IntMod;
	public long WisMod;
	public long ChaMod;
	
	public boolean strSave = false;//proficiency in ability save depends on class
	public boolean dexSave = false;
	public boolean conSave = false;
	public boolean intSave = false;
	public boolean wisSave = false;
	public boolean chaSave = false;
	
	public long strSaveV = 0;//save value determined by proficiency and ability modifier
	public long dexSaveV = 0;
	public long conSaveV = 0;
	public long intSaveV = 0;
	public long wisSaveV = 0;
	public long chaSaveV = 0;
	
	
	//proficiencies
	public boolean athletics = false;//proficiency is controlled by either background race or class.
	public boolean acrobatics = false;
	public boolean sleightOfHand = false;
	public boolean stealth = false;
	public boolean arcana = false;
	public boolean history = false;
	public boolean investigation = false;
	public boolean nature = false;
	public boolean religion = false;
	public boolean animalHandling = false;
	public boolean insight = false;
	public boolean medicine = false;
	public boolean perception = false;
	public boolean survival = false;
	public boolean deception = false;
	public boolean intimidation = false;
	public boolean performance = false;
	public boolean persuasion = false;
	
	public boolean doubleAthletics = false;//some features double proficiency bonus.  e.g. rogue experitise.
	public boolean doubleAcrobatics = false;//These values if true double the bonus for that skill
	public boolean doubleSleight = false;
	public boolean doubleStealth = false;
	public boolean doubleArcana = false;
	public boolean doubleHistory = false;
	public boolean doubleInvestigation = false;
	public boolean doubleNature = false;
	public boolean doubleReligion = false;
	public boolean doubleAnimal = false;
	public boolean doubleInsight= false;
	public boolean doubleMedicine = false;
	public boolean doublePerception = false;
	public boolean doubleSurvival = false;
	public boolean doubleDeception = false;
	public boolean doubleIntimidation = false;
	public boolean doublePerformance = false;
	public boolean doublePersuasion = false;
	
	
	//values of the skills
	public long athleticsV = 0;//value after proficiency, doubling and ther modifier is calculated
	public long acrobaticsV = 0;
	public long sleightOfHandV = 0;
	public long stealthV = 0;
	public long arcanaV = 0;
	public long historyV = 0;
	public long investigationV = 0;
	public long natureV = 0;
	public long religionV = 0;
	public long animalHandlingV = 0;
	public long insightV = 0;
	public long medicineV = 0;
	public long perceptionV = 0;
	public long survivalV = 0;
	public long deceptionV = 0;
	public long intimidationV = 0;
	public long performanceV = 0;
	public long persuasionV = 0;

	public String otherProficiencies= "";//hold what other objects the character adds their proficiency bonus to actions with
	public long speed;//distance in feet the player can move a turn, depends on class and race

	public String vision = "";//what conditions the race can see in
	public String languages= "";//languages the character can speak

	public String features;//other bonuses the character can speak
	public boolean defence = false;//if traited gain +1 ac

	public String feats = "";//feats, obtainable by human variant and at higher levels
	
	//class
	public String Class;
	public int level = 1;//1 unless levelled up
	public long xp = 0;//alters level at certain thresholds when implemented
	public int profBonus = 2;//increases at higher levels to a maximum of 6
	public String hitDice;//controlled by class, the dice used for healing and number of dice.
	public long hitPoints;//how much damage the character can take before dying
	
	public int armour = 0;//int for each armour, alters ac
	public boolean shield = false;//if the character has a shield they gain +2 AC
	//spellcasting
	public String spellAbil = "";//the ability the user uses for spells
	public long spellDC = 111;//if set to 111, the character is not a pellcaster. Determines how hard a spell is to avoid
	public long spellMod = 111;//bonus to spells cast
	public String spells = "";//list of spells learnt by a character
	
	//final values
	public boolean stealthDis = false;//given by heavy armour, gives disadvantage to stealth rolls
	public long ac;//determines how hard the character is to hit. Based on armour and dexterity
	public long initiative;//the bonus to rolls to go first in combat, based on dexterity
	public long passivePerception;//10 + perception
	public coursework() {
		//constructor for instances of the class
	}
	
	/*
	 * The races
	 */
	//the setter methods alter variables of this instance of the class that the user interacts with.
	public void HillDwarf(String toolProf) {
		this.race = "Hill Dwarf";
		this.Con = Con + 2;// constitution + 2
		this.speed = 25; // race speed = 25
		this.vision = "Darkvision - you can see in dim light for 60 feet as though it were bright light."
				+ " you can see in darkness as though it were dim light";
		this.features = "Dwarven resillience, Stonecunning";// 
		this.otherProficiencies = "Battleaxe, Handaxe, Throwing hammer, Warhammer, Dwarven Toughness, "
				+ toolProf;//proficiency in a tool given by race jsp page
		this.languages = "Common, Dwarf";
		this.Wis = this.Wis + 1;// +1 wisdom
		
		this.baseHeight = 44;
		this.heightMod = processing.twoD4();
		this.baseWeight = 115;
		this.weightMod = processing.twoD6();
	}

	public void MountainDwarf(String toolProf) {
		this.race = "Mountain Dwarf";
		this.Con = this.Con + 2;// constitution + 2
		this.speed = 25; // race speed = 25
		this.vision = "Darkvision - you can see in dim light for 60 feet as though it were bright light."
				+ " you can see in darkness as though it were dim light";
		this.features = "Dwarven resillience, Stonecunning";
		this.otherProficiencies = "Battleaxe, Handaxe, Throwing hammer, Warhammer, light armour, medium armour, "
				+ toolProf;//proficiency in a tool given by race jsp page
		this.languages = "Common, Dwarf";
		this.Str = this.Str + 2;// +2 strength
		
		this.baseHeight = 48;
		this.heightMod = processing.twoD4();
		this.baseWeight = 130;
		this.weightMod = processing.twoD6();
	}

	public void HighElf(String languageIn) {
		this.race = "High Elf";
		this.speed = 30; // race speed = 30
		this.Dex = this.Dex + 2;// dexterity + 2
		this.vision = "Darkvision - you can see in dim light for 60 feet as though it were bright light."
				+ " you can see in darkness as though it were dim light";
		this.perception = true;//proficiency in the perception skill
		this.languages = "Common, Elf, "+ languageIn;// language given in jsp page
		this.Int = this.Int + 1;// intelligence + 1
		this.otherProficiencies = "Longbows, Shortbows, Longswords, Shortswords";
		this.features = this.features + ", Cantrip";
		// choose an extra cantrip

		this.baseHeight = 54;
		this.heightMod = processing.twoD10();
		this.baseWeight = 90;
		this.weightMod = processing.oneD4();
	}

	public void WoodElf() {
		this.race = "Wood Elf";
		this.Dex = this.Dex + 2;// dexterity + 2
		this.vision = "Darkvision - you can see in dim light for 60 feet as though it were bright light."
				+ " you can see in darkness as though it were dim light";
		this.perception = true;//proficiency
		this.languages = "Common, Elf";
		this.features = "Trance, Fey Ancestry";// put in what they do
		this.Wis = this.Wis + 1;// wisdom + 1
		this.otherProficiencies = "Longbows, Shortbows, Longswords, Shortswords";
		this.speed = 35; // race speed = 35
		this.features = "Mask of the Wild";

		this.baseHeight = 54;
		this.heightMod = processing.twoD10();
		this.baseWeight = 100;
		this.weightMod = processing.oneD4();
	}

	public void DarkElf() {
		this.race = "Dark Elf";
		this.speed = 30; // race speed = 30
		this.Dex = this.Dex + 2;// dexterity + 2
		this.perception = true;//proficiency in perception
		this.languages = "Common, Elf";
		this.features = "Trance, Fey Ancestry";// put in what they do
		this.Cha = this.Cha + 1;// +1 charisma
		this.vision = "Superior Darkvision - your Darkvision has a radius of 120 feet";
		this.otherProficiencies = "Rapiers, Shortswords, hand crossbows";
		this.features = this.features + ", Sunlight Sensitivity, Drow Magic";
		
		this.baseHeight = 53;
		this.heightMod = processing.twoD6();
		this.baseWeight = 75;
		this.weightMod = processing.oneD6();
	}

	public void LightfootHalfling() {
		this.race = "Lightfoot Halfling";
		this.Dex = this.Dex + 2;// +2 dexterity
		this.speed = 25;
		this.size = "small";//very few races are small, the standard size for a race is medium, only the small races need setting
		this.languages = "Common, Halfling";
		this.features = "Lucky, Brave, Halfling Nimbleness";
		this.Cha = this.Cha + 1;// +1 charisma
		this.features = this.features + ", Naturally Stealthy";
		
		this.baseHeight = 31;
		this.heightMod = processing.twoD4();
		this.baseWeight = 35;
		this.weightMod = 1;
	}

	public void StoutHalfling() {
		this.race = "Stout Halfling";
		this.Dex = this.Dex + 2;// +2 dexterity
		this.speed = 25;
		this.size = "small";
		this.languages = "Common, Halfling";
		this.features = "Lucky, Brave, Halfling Nimbleness";
		this.Con = this.Con + 1;// +1 constitution
		this.features = this.features + ", Stout Resilience";
		
		this.baseHeight = 31;
		this.heightMod = processing.twoD4();
		this.baseWeight = 35;
		this.weightMod = 1;
	}

	public void Human(String language) {// standard human
		this.Str = this.Str + 1;//plus one to all ability scores
		this.Dex = this.Dex + 1;
		this.Con = this.Con + 1;
		this.Int = this.Int + 1;
		this.Wis = this.Wis + 1;
		this.Cha = this.Cha + 1;
		
		this.race = "human";
		this.speed = 30;
		this.languages = "Common, " + language;//bonus language of choice
		
		this.baseHeight = 56;
		this.heightMod = processing.twoD10();
		this.baseWeight = 115;
		this.weightMod = processing.twoD4();
	}

	public void HumanVar(String language, int abil1, int abil2, int prof1,
			String Feat) {// parameters for all the choices
		this.speed = 30;
		this.languages = "Common, " + language;
		switch (abil1) {//choose two abilities in race.jsp, they increas by 1
		case 1:
			this.Str = this.Str + 1;
			break;
		case 2:
			this.Dex = this.Dex + 1;
			break;
		case 3:
			this.Con = this.Con + 1;
			break;
		case 4:
			this.Int = this.Int + 1;
			break;
		case 5:
			this.Wis = this.Wis + 1;
			break;
		case 6:
			this.Cha = this.Cha + 1;
			break;
		}
		switch (abil2) {
		case 1:
			this.Str = this.Str + 1;
			break;
		case 2:
			this.Dex = this.Dex + 1;
			break;
		case 3:
			this.Con = this.Con + 1;
			break;
		case 4:
			this.Int = this.Int + 1;
			break;
		case 5:
			this.Wis = this.Wis + 1;
			break;
		case 6:
			this.Cha = this.Cha + 1;
			break;
		}
		chooseProf(prof1);//call function to choose one of all the skills and become proficient in it
		this.race = "human";
		this.feats = Feat;
		
		this.baseHeight = 56;
		this.heightMod = processing.twoD10();
		this.baseWeight = 115;
		this.weightMod = processing.twoD4();
	}

	public void Dragonborn(String ancestry) {
		this.race = "Dragonborn";
		this.speed = 30;
		this.Str = this.Str + 2;// str + 2
		this.Cha = this.Cha + 1;// +1 cha
		this.features = "Draconic Ancestry (" + ancestry
				+ "), Breath Weapon, Damage Resistance";//choose a colour of dragon
		this.languages = "Common, Draconic";
		
		this.baseHeight = 66;
		this.heightMod = processing.twoD8();
		this.baseWeight = 175;
		this.weightMod = processing.twoD6();
	}

	public void ForestGnome() {
		this.race = "Forest Gnome";
		this.speed = 25;
		this.size = "small";
		this.Int = this.Int + 2;// int + 2
		this.Dex = this.Dex + 1;// +1 dex
		this.vision = "Darkvision - you can see in dim light for 60 feet as though it were bright light."
				+ " you can see in darkness as though it were dim light";
		this.features = "Gnome Cunning, Natural Illusionist, Speak with Small Beasts ";
		this.languages = "Common, Gnomish";
		
		this.baseHeight = 35;
		this.heightMod = processing.twoD4();
		this.baseWeight = 35;
		this.weightMod = 1;
	}

	public void RockGnome() {
		this.race = "Forest Gnome";
		this.speed = 25;
		this.size = "small";
		this.Int = this.Int + 2;// int + 2
		this.Con = this.Con + 1;// +1 con
		this.vision = "Darkvision - you can see in dim light for 60 feet as though it were bright light."
				+ " you can see in darkness as though it were dim light";
		this.features = "Gnome Cunning, Artificer's Lore, Tinker";
		this.otherProficiencies = "Artisans tools";
		this.languages = "Common, Gnomish";
		
		this.baseHeight = 35;
		this.heightMod = processing.twoD4();
		this.baseWeight = 35;
		this.weightMod = 1;
	}

	public void HalfElf(int abil1, int abil2, int prof1, int prof2,
			String language) {
		this.race = "Half elf";
		this.speed = 30;
		this.Cha = this.Cha + 2; // + 2 cha
		switch (abil1) {//+1 to two skills
		case 1:
			this.Str = this.Str + 1;
			break;
		case 2:
			this.Dex = this.Dex + 1;
			break;
		case 3:
			this.Con = this.Con + 1;
			break;
		case 4:
			this.Int = this.Int + 1;
			break;
		case 5:
			this.Wis = this.Wis + 1;
			break;
		case 6:
			this.Cha = this.Cha + 1;
			break;
		}
		switch (abil2) {
		case 1:
			this.Str = this.Str + 1;
			break;
		case 2:
			this.Dex = this.Dex + 1;
			break;
		case 3:
			this.Con = this.Con + 1;
			break;
		case 4:
			this.Int = this.Int + 1;
			break;
		case 5:
			this.Wis = this.Wis + 1;
			break;
		case 6:
			this.Cha = this.Cha + 1;
			break;
		}
		this.vision = "Darkvision - you can see in dim light for 60 feet as though it were bright light."
				+ " you can see in darkness as though it were dim light";
		this.features = "Fey Ancestry, Skill Versatility";
		chooseProf(prof1);//gain proficiency in two skills
		chooseProf(prof2);
		this.languages = "Common, Elf, " + language;//gain a bonus language
		
		this.baseHeight = 57;
		this.heightMod = processing.twoD8();
		this.baseWeight = 110;
		this.weightMod = processing.twoD4();
	}

	public void HalfOrc() {
		this.race = "Half orc";
		this.speed = 30;
		this.Str = this.Str + 2; // + 2 str
		this.Con = this.Con + 1;// +1 con
		this.vision = "Darkvision - you can see in dim light for 60 feet as though it were bright light."
				+ " you can see in darkness as though it were dim light";
		this.features = "Menacing, Relentless Endurance, Savage Attacks";
		this.intimidation = true;//proficiency in intimidation
		this.languages = "Common, Orc";
		
		this.baseHeight = 58;
		this.heightMod = processing.twoD10();
		this.baseWeight = 140;
		this.weightMod = processing.twoD6();
	}

	public void Tiefling() {
		this.race = "Tiefling";
		this.speed = 30;
		this.Cha = this.Cha + 2; // + 2 cha
		this.Int = this.Int + 1;// +1 int
		this.vision = "Darkvision - you can see in dim light for 60 feet as though it were bright light."
				+ " you can see in darkness as though it were dim light";
		this.features = "Hellish Resistance, Infernal Legacy";
		this.languages = "Common, Infernal";
		
		this.baseHeight = 57;
		this.heightMod = processing.twoD8();
		this.baseWeight = 110;
		this.weightMod = processing.twoD4();
	}
	
	/*
	 * Background page, all appearance choices
	 */

	public void Background(String nameIn, String pNameIn, String eyesIn, String skinIn,
			String hairIn, int ageIn, Boolean randHW, String heightIn, int weightIn) {
		this.name = nameIn;//set values to those chosen on the nameAppearance.jsp page
		this.pName = pNameIn;
		this.age = ageIn;
		this.eyes = eyesIn;
		this.skin = skinIn;
		this.hair = hairIn;
		if (randHW) {// if the user wants a random height and weight, give it.
			int Mod = heightMod;// makes sure the modifier doesn't change
			this.height = baseHeight + Mod;
			this.weight = baseWeight + (Mod * weightMod);
			this.realH = (this.height /12) + "' " + (this.height % 12) + "''";//convert to an imperial unit string
			this.realW = (this.weight /14) + " stone " + (this.weight % 14) + " pounds";//convert to an imperial unit string
		} else {
			this.realH = heightIn;//accepts a height 
			this.realW = (weightIn /14) + " stone " + (weightIn % 14) + " pounds";
			//converts a weight in pounds to stone and pounds
		}
	}
	//in each specific background page an alignment is chosen from a table
	public void setAlignment(int index) {
		this.alignment = alignmentTable[index];//set alignment to a value from the array
	}

	/*
	 * The backgrounds
	 */

	public void Acolyte(String Language1, String Language2) {// chose two
																// languages
		this.background = "Acolyte";
		this.religion = true;//gain proficiencies
		this.insight = true;
		this.languages = this.languages + ", " + Language1 + ", " + Language2;//gain chosen languages
		this.money = 15;//set money in gold
		this.equipment = "A holy symbol, a prayer book, 5 sticks of inscense,"
				+ " vestments, common clothes";//give equipment
		if(this.features.equals("")){
			this.features = "Shelter the Faithful";//no comma
		}else{
			this.features = features + ", Shelter the Faithful";//add comma
		}
		/* all if statements checking if the string are empty are present to make commas grammatically correct
		depending on the race some fields may have information and others may not, so fields need to be checked if
		they are empty
		*/
	}

	public void Charlatan(String scamTools) {// chose two languages
		this.background = "Charlatan";
		this.sleightOfHand = true;//proficiencies
		this.deception = true;
		if(this.otherProficiencies.equals("")){//no comma
			this.otherProficiencies = "Disguise kit, Forgery kit";
		}else{//comma
		this.otherProficiencies = this.otherProficiencies
				+ ", Disguise kit, Forgery kit";
		}
		this.money = 15;
		this.equipment = "A set of fine clothes, a disguise kit, tools of your con including "
				+ "(" + scamTools + ")";//equipment with chosen scam
		if(this.features.equals("")){
			this.features = "false Identity";//no comma
		}else{
			this.features = features + ", false Identity";
		}//comma

	}

	public void Criminal(String gamingSet, Boolean variant) {
		this.background = "Criminal";
		if (variant)
			this.background = "Spy";//the different names are availiable for character flavour, no changes beyond name
		this.stealth = true;
		this.deception = true;
		if(this.otherProficiencies.equals("")){//no comma
			this.otherProficiencies = "thieves tools, "+ gamingSet;
		}else{//comma
		this.otherProficiencies = this.otherProficiencies + ", thieves tools, "
				+ gamingSet;
		}
		this.money = 15;
		this.equipment = "A crowbar, A set of dark common clothing, a hood";
		if(this.features.equals("")){//no comma
			this.features = "Criminal contract";
		}else{//comma
			this.features = features + ", Criminal contract";
		}

	}

	public void Entertainer(String instrument, Boolean variant) {
		this.background = "Entertainer";
		if (variant)
			this.background = "Gladiator";//flavour name
		this.acrobatics = true;
		this.performance = true;
		if(this.otherProficiencies.equals("")){//no comma
			this.otherProficiencies = "Disguise kit, "+ instrument;//proficient with instrument
		}else{//comma
		this.otherProficiencies = this.otherProficiencies + ", Disguise kit, "
				+ instrument;
		}
		this.money = 15;
		this.equipment = instrument //given instrument
				+ ", the favor of an admirer, a costume";
		if(this.features.equals("")){
			this.features = "By popular demand";
		}else{
		this.features = features + ", By popular demand";
		}
	}

	public void FolkHero(String artTools) {
		this.background = "Folk Hero";
		this.animalHandling = true;
		this.survival = true;
		if(this.otherProficiencies.equals("")){
			this.otherProficiencies = "vehicles(Land) " + artTools;
		}else{
		this.otherProficiencies = this.otherProficiencies + ", vehicles(Land) "
				+ artTools;
		}
		this.money = 10;
		this.equipment = artTools
				+ ", a shovel, an iron pot, a set of common clothes";
		if(this.features.equals("")){
			this.features = "Rustic hospiality";

		}else{
		this.features = features + ", Rustic hospiality";
		}
	}

	public void GuildArtisan(String artTools, String Language, boolean variant) {
		this.background = "Guild Arisan";
		if (variant)
			this.background = "Guild Merchant";//flavour name
		this.insight = true;
		this.persuasion = true;
		if(this.languages.equals("")){
			this.languages =  Language;
		}else{
		this.languages = this.languages + ", " + Language;
		}
		if(this.otherProficiencies.equals("")){
			this.otherProficiencies = artTools;
		}else{
		this.otherProficiencies = this.otherProficiencies + ", " + artTools;
		}
		this.money = 15;
		this.equipment = artTools
				+ ", a letter of introduction from your guild, a "
				+ "set of travellers clothes";
		if(this.features.equals("")){
			this.features = "Guild Membeship";
		}else{
		this.features = features + ", Guild Membeship";
		}
	}

	public void Hermit(String Language) {
		this.background = "Hermit";
		this.religion = true;
		this.medicine = true;
		this.languages = this.languages + ", " + Language;//bonus language
		if(this.otherProficiencies.equals("")){
			this.otherProficiencies ="Herbalism kit";
		}else{
		this.otherProficiencies = this.otherProficiencies + ", Herbalism kit";
		}
		this.money = 5;
		this.equipment = " A scroll case stuffed with notes, a winter blanket, a set"
				+ " of common clothes, a herbalism kit";
		if(this.features.equals("")){
			this.features =  "Discovery";
		}else{
		this.features = features + ", Discovery";
		}
	}

	public void Noble(String gameSet, String Language, boolean variant) {
		this.background = "Noble";
		if (variant)
			this.background = "Knight";//change to name also changes feat
		this.history = true;
		this.persuasion = true;
		this.languages = this.languages + ", " + Language;
		if(this.otherProficiencies.equals("")){
			this.otherProficiencies =  gameSet;
		}else{
			this.otherProficiencies = this.otherProficiencies + ", " + gameSet;
		}
		this.money = 25;
		this.equipment = "A set of fine clothes, a signet ring, a scroll of pedigree";
		if (variant) {//change to feat
			if(this.features.equals("")){//no comma
				this.features ="retainers";//knight trait
			}else{//comma
				this.features = features + ", retainers";
			}
		} else {
			if(this.features.equals("")){//no comma
				this.features = "position of privellige";//noble trait
			}else{//comma
				this.features = features + ", position of privellige";
			}
		}
	}

	public void Outlander(String instrument, String Language) {
		this.background = "Outlander";
		this.athletics = true;
		this.survival = true;
		this.languages = this.languages + ", " + Language;//bonus language
		if(this.otherProficiencies.equals("")){
			this.otherProficiencies = instrument;//instrument
		}else{
			this.otherProficiencies = this.otherProficiencies + ", " + instrument;
		}
		this.money = 10;
		this.equipment = "A staff, a hunting trap, a trophy from an animal "
				+ "you killed, a set of travellers clothes";
		if(this.features.equals("")){
			this.features = "Wanderer";
		}else{
		this.features = features + ", Wanderer";
		}
	}

	public void Sage(String Language1, String Language2) {
		this.background = "Sage";
		this.arcana = true;
		this.history = true;
		this.languages = this.languages + ", " + Language1 + ", " + Language2;
		this.money = 10;
		this.equipment = "A bottle of black ink, a quill, a small knife, a letter "
				+ "from from a dead colleague posing a question you have not been able"
				+ " to answer, a set of common clothes";
		if(this.features.equals("")){
			this.features = "Researcher";
		}else{
			this.features = features + ", Researcher";
		}
	}

	public void Sailor(Boolean variant) {// item can be a predetermined lucky charm or a random trinket
		if (variant) {
			this.background = "Pirate";//variant name
			if(this.features.equals("")){//no comma
				this.features = "Bad Reputation";//variant trait
			}else{//comma
				this.features = features + ", Bad Reputation";
			}
		} else {
			this.background = "Sailor";
			if(this.features.equals("")){//no comma
				this.features ="Ship's Passage";
			}else{//comma
				this.features = features + ", Ship's Passage";

			}
		}
		this.athletics = true;
		this.perception = true;
		if(this.otherProficiencies.equals("")){
			this.otherProficiencies = "Navigator's tools, Vehicles(water)";
		}else{
			this.otherProficiencies = this.otherProficiencies
				+ ", Navigator's tools, Vehicles(water)";
		}
		this.money = 10;
		this.equipment = "A belaying pin (club), 50 feet of silk rope, a lucky charm"
				+ ", a set of common clothes";
	}

	public void Soldier(String gameSet) {
		this.background = "Soldier";
		this.athletics = true;
		this.intimidation = true;
		if(this.otherProficiencies.equals("")){
			this.otherProficiencies =  gameSet
					+ ", Vehicles(Land)";
		}else{
			this.otherProficiencies =  this.otherProficiencies + ", " + gameSet
					+ ", Vehicles(Land)";
		}
		this.money = 10;
		this.equipment = "Insignia of rank, trophy from an enemy, " + gameSet
				+ ", common clothes";
		if(this.features.equals("")){
			this.features = "Military Rank";
		}else{
			this.features = features + ", Military Rank";

		}
	}

	public void Urchin() {
		this.background = "Urchin";
		this.sleightOfHand = true;
		this.stealth = true;
		if(this.otherProficiencies.equals("")){
			this.otherProficiencies = "disguise kit, thieves tools";
		}else{
			this.otherProficiencies = this.otherProficiencies
					+ ", disguise kit, thieves tools";
		}
		this.money = 10;
		this.equipment = "A small knife, a map of the city you grew up in, a pet mouse,"
				+ " a token to remember your parents by, a set of common clothes";
		if(this.features.equals("")){
			this.features ="City Secrets";

		}else{
			this.features = features + ", City Secrets";

		}
	}

	/*
	 * classes
	 */
	//chosen in class.jsp, then extras in the relevant class jsp page
	
	public void barbaian(int skill1, int skill2, String item1, String item2){
		this.Class = "Barabarian";//standard setters for methods
		this.hitDice = level +"D12";//always equal to a number equal to level of a dice determined by the class, here: 1 12 sided
		this.hitPoints = (12 + processing.calcModifier(Con));//hitpoints depend on the base and players constitution modifier
		if(this.otherProficiencies.equals("")){//no comma
			this.otherProficiencies += "light armour, medium armour, shields, simple weapons, martial weapons";
		}else{//comma
			this.otherProficiencies += ", light armour, medium armour, shields, simple weapons, martial weapons";
		}
		this.strSave = true;//all classes gain proficiency in two ability saves
		this.conSave = true;
		switch(skill1){//choose skills to be proficint in
		case 1:
			this.animalHandling = true;
			break;
		case 2:
			this.athletics = true;
			break;
		case 3:
			this.intimidation = true;
			break;
		case 4:
			this.nature = true;
			break;
		case 5:
			this.perception = true;
			break;
		case 6:
			this.survival = true;
			break;
		}
		switch(skill2){
		case 1:
			this.animalHandling = true;
			break;
		case 2:
			this.athletics = true;
			break;
		case 3:
			this.intimidation = true;
			break;
		case 4:
			this.nature = true;
			break;
		case 5:
			this.perception = true;
			break;
		case 6:
			this.survival = true;
			break;
		}
		if(this.equipment.equals("")){//add chosen items to equipment with checks for whether or not to add commas
			this.equipment += item1;
		}else{
			this.equipment += ", " + item1;
		}
		this.equipment += ", " + item2;
		this.equipment += ", an explorers pack, four javelins";
		this.features += ", Rage, unarmoured defence";//unarmoured defence alters ac
		this.armour = 31;//unnarmoured defence ac reference value
	}
	
	public void bard(String inst1, String inst2, String inst3, int skill1, int skill2, int skill3, String item1, String item2, String item3){
		this.Class = "Bard";
		this.hitDice = level +"D8";//1 8 sided dice for healing
		this.hitPoints = 8 + processing.calcModifier(Con);//base for bard is 8
		if(this.otherProficiencies.equals("")){
			this.otherProficiencies += "light armour, simple weapons, hand crossbows, longswors, rapiers, shortswords";
		}else{
			this.otherProficiencies += ", light armour, simple weapons, hand crossbows, longswors, rapiers, shortswords";
		}
		this.dexSave = true;
		this.chaSave = true;
		this.otherProficiencies += ", " + inst1 + ", " + inst2 +", " + inst3;// add proficiencies in chosen instruments
		this.chooseProf(skill1);//proficient with three skills
		this.chooseProf(skill2);
		this.chooseProf(skill3);
		this.spellAbil = "Charisma";//spellcasting ability modifier
		this.spellDC = 8 + this.profBonus + processing.calcModifier(this.Cha);//all based on the relevent ability modifier
		this.spellMod = this.profBonus + processing.calcModifier(this.Cha);//here the modifier is charisma
		this.features +=", Spellcasting, ritual casting, spellcasting focus(instrument), Bardic inspiration(d6)";
		//four known 1st level spells, 2 spell slots, 2 cantrips
		if(this.equipment.equals("")){
			this.equipment += item1 + ", " + item2 + ", " + item3 + ", Leather armour, a dagger";
		}else{
			this.equipment += ", " + item1 + ", " + item2 + ", " + item3 + ", Leather armour, a dagger";
		}
		this.armour = 2;//leather armour reference
	}
	
	public void cleric(int skill1, int skill2, boolean item1, int item2, String item3, boolean item4, int domain){
		this.Class = "Cleric";
		this.hitDice = level +"D8";
		this.hitPoints = 8 + processing.calcModifier(Con);
		if(this.otherProficiencies.equals("")){
			this.otherProficiencies += "light armour, medium armour, shields, all simple weapons";
		}else{
			this.otherProficiencies += ", light armour, medium armour, shields, all simple weapons";
		}
		this.wisSave = true;
		this.chaSave = true;
		switch(skill1){
		case 1 :
			this.history = true;
			break;
		case 2 :
			this.insight = true;
			break;
		case 3 :
			this.medicine = true;
			break;
		case 4 :
			this.persuasion = true;
			break;
		case 5 :
			this.religion = true;
			break;
		}
		switch(skill2){
		case 1 :
			this.history = true;
			break;
		case 2 :
			this.insight = true;
			break;
		case 3 :
			this.medicine = true;
			break;
		case 4 :
			this.persuasion = true;
			break;
		case 5 :
			this.religion = true;
			break;
		}
		if(!this.equipment.equals("")){
			this.equipment += ", ";
		}
		if(item1){
			this.equipment += "mace";//set chosen items
		}else{
			this.equipment += "warhammer";
		}
		switch(item2){
		case 1 :
			this.equipment += ", scale mail";
			this.armour = 13;
			break;
		case 2 :
			this.equipment += ", leather armour";
			this.armour = 2;
			break;
		case 3 :
			this.equipment += ", chain mail";
			this.armour = 22;
			break;
		}
		if(item3.equals("")){
			this.equipment += ", a light crossbow, 20 bolts";
		}else{
			this.equipment += ", "+item3;
		}
		if(item4){
			this.equipment += ", priests pack";
		}else{
			this.equipment += ", explorers pack";
		}
		// 3 cantrips, all the spells, 2 level 1 spell slots
		this.spellAbil = "Wisdom";//spellcasting modifier is wisdom
		this.spellDC = 8 + this.profBonus + processing.calcModifier(this.Wis);
		this.spellMod = this.profBonus + processing.calcModifier(this.Wis);
		this.features +=", ritual casting";
		this.features += ", divine domain: ";
		switch(domain){//different domains give different features and spells
		case 1 :
			this.features += "Knowledge, Blessings of knowledge";//blessings of knowledge method gives extra bonuses
			this.spells += "command, identify";
			break;
		case 2 :
			this.features += "Life";
			this.spells += "bless, cure wounds";
			this.otherProficiencies +=", heavy armour";
			this.features += ", Disciple of life";
			break;
		case 3 :
			this.features += "Light, Warding flame";
			this.spells += "bunring hands, faerie fire";
			//bonus cantrip light
			break;
		case 4 :
			this.features += "Nature, acolyte of nature";
			this.spells += "animal friendship, speak with animals";//acolyte of nature method gives extra bonuses
			this.otherProficiencies +=", heavy armour";
			break;
		case 5 :
			this.features += "Tempest, wrath of the storm";
			this.spells += "fog cloud, thunderwave";
			this.otherProficiencies +=",martial weapons, heavy armour";
			break;
		case 6 :
			this.features += "Trickery, blessing of the trickster";
			this.spells += "charm person, disguise self";
			break;
		case 7 :
			this.features += "War, war priest";
			this.spells += "divine favor, shield of faith";
			this.otherProficiencies +=",martial weapons, heavy armour";
			break;
			
		}
	}
	public void blessKnowledge(String lang1, String lang2, int prof1, int prof2){//for knowledge domain
		this.languages += ", " + lang1 + ", " + lang2;//gain two languaages
		switch(prof1){
		case 1://gain proficiency in two skills and double their prof bonus's
			this.arcana = true;
			this.doubleArcana = true;
			break;
		case 2:
			this.history = true;
			this.doubleHistory = true;
			break;
		case 3:
			this.nature = true;
			this.doubleNature = true;
			break;
		case 4:
			this.religion = true;
			this.doubleReligion = true;
			break;
		}//double prof bonus!
		switch(prof2){
		case 1:
			this.arcana = true;
			this.doubleArcana = true;
			break;
		case 2:
			this.history = true;
			this.doubleHistory = true;
			break;
		case 3:
			this.nature = true;
			this.doubleNature = true;
			break;
		case 4:
			this.religion = true;
			this.doubleReligion = true;
			break;
		}
	}
	public void acolyteOfNature(int prof){// for nature domain
		switch(prof){//proficiency in one of these skills
		case 1: 
			this.animalHandling = true;
			break;
		case 2: 
			this.nature = true;
			break;
		case 3: 
			this.survival = true;
			break;
		}
		//plus cantrip
	}
	
	public void druid(int skill1, int skill2, String item1, String item2){
		this.Class = "Druid";
		this.hitDice = level +"D8";
		this.hitPoints = 8 + processing.calcModifier(Con);
		if(!this.otherProficiencies.equals("")){
			this.otherProficiencies += ", ";
		}
		this.otherProficiencies += "light armour, medium armour, shields, clubs, daggers, darts, javelins, maces,"
				+ " quaterstaffs, scimitars, sickles, slings, spears, herbalism kit";
		this.intSave = true;
		this.wisSave = true;
	switch(skill1){
	case 1:
		this.arcana = true;
		break;
	case 2:
		this.animalHandling = true;
		break;
	case 3:
		this.insight = true;
		break;
	case 4:
		this.medicine = true;
		break;
	case 5:
		this.nature = true;
		break;
	case 6:
		this.perception = true;
		break;
	case 7:
		this.religion = true;
		break;
	case 8:
		this.survival = true;
		break;
	}
	switch(skill2){
	case 1:
		this.arcana = true;
		break;
	case 2:
		this.animalHandling = true;
		break;
	case 3:
		this.insight = true;
		break;
	case 4:
		this.medicine = true;
		break;
	case 5:
		this.nature = true;
		break;
	case 6:
		this.perception = true;
		break;
	case 7:
		this.religion = true;
		break;
	case 8:
		this.survival = true;
		break;
	}
	if(!this.equipment.equals("")){
		this.equipment += ", ";
	}
	if(item1.equals("")){
		this.equipment += "a wooden shield";
		this.shield = true;
	}else{
		this.equipment += item1;
	}
	if(item2.equals("")){
		this.equipment += ", a scimitar";
	}else{
		this.equipment += ", " + item2;
	}
	this.equipment += ", leather armour, explorer's pack, druidic focus";
	this.armour = 2;
	this.spellAbil = "Wisdom";
	this.spellDC = 8 + this.profBonus + processing.calcModifier(this.Wis);
	this.spellMod = this.profBonus + processing.calcModifier(this.Wis);
	this.features +=", Spellcasting, ritual casting";
	this.languages += ", druidic";
	//all spels 2 cantrips, 2 spell slots
	}
	
	public void fighter(int skill1, int skill2, boolean item1, String item2, String item3, boolean item4, boolean item5, int feature){
		this.Class = "Fighter";
		this.hitDice = level +"D10";
		this.hitPoints = 10 + processing.calcModifier(Con);
		if(!this.otherProficiencies.equals("")){
			this.otherProficiencies += ", ";
		}
		this.otherProficiencies += "all armour, shields, simple weapons, martial weapons";
		this.strSave = true;
		this.conSave = true;
		switch(skill1){
		case 1:
			this.acrobatics = true;
			break;
		case 2:
			this.animalHandling = true;
			break;
		case 3:
			this.athletics = true;
			break;
		case 4:
			this.history = true;
			break;
		case 5:
			this.insight = true;
			break;
		case 6:
			this.intimidation = true;
			break;
		case 7:
			this.perception = true;
			break;
		case 8:
			this.survival = true;
			break;
		}
		switch(skill2){
		case 1:
			this.acrobatics = true;
			break;
		case 2:
			this.animalHandling = true;
			break;
		case 3:
			this.athletics = true;
			break;
		case 4:
			this.history = true;
			break;
		case 5:
			this.insight = true;
			break;
		case 6:
			this.intimidation = true;
			break;
		case 7:
			this.perception = true;
			break;
		case 8:
			this.survival = true;
			break;
		}
		if(!this.equipment.equals("")){
			this.equipment += ", ";
		}
		if(item1){
			this.equipment += "chainmail";
			this.armour = 22;//chainmail armour reference
		}else{
			this.equipment += "leather, longbow, 20 arrows";
			this.armour = 2;//leather armour reference
		}
		if(item3.equals("")){
			this.equipment += ", "+item2 + ", shield";
			this.shield = true; // make for with one handed
		}else{
			this.equipment += ", " + item2 + ", " + item3;
		}
		if(item4){
			this.equipment += ", light crossbow and 20 bolts";
		}else{
			this.equipment += ", two handaxes";
		}
		if(item5){
			this.equipment += ", dungeoneers pack";
		}else{
			this.equipment += ", explorers pack";
		}
		
		if(!this.features.equals("")){
			this.features += ", ";
		}
		switch(feature){
		case 1: 
			this.features += "Archery";
			break;
		case 2: 
			this.features += "Defense";
			this.defence = true;//+1 to ac
			break;
		case 3: 
			this.features += "Dueling";
			break;
		case 4: 
			this.features += "Great weapon fighting";
			break;
		case 5: 
			this.features += "Protection";
			break;
		case 6: 
			this.features += "Two-weapon fighting";
			break;
		}
		this.features += ", Second wind";
		
	}
	
	public void monk(String i, int skill1, int skill2, String item1, String item2){
		this.Class = "Monk";
		this.hitDice = level +"D8";
		this.hitPoints = 8 + processing.calcModifier(Con);
		if(!this.otherProficiencies.equals("")){
			this.otherProficiencies += ", ";
		}
		this.otherProficiencies += "simple weapons, shortswords, " + i;// add chosen item proficiency
		this.strSave = true;
		this.dexSave = true;
		switch(skill1){
		case 1:
			this.acrobatics = true;
			break;
		case 2:
			this.athletics = true;
			break;
		case 3:
			this.history = true;
			break;
		case 4:
			this.insight = true;
			break;
		case 5:
			this.religion = true;
			break;
		case 6:
			this.stealth = true;
			break;
		}
		switch(skill2){
		case 1:
			this.acrobatics = true;
			break;
		case 2:
			this.athletics = true;
			break;
		case 3:
			this.history = true;
			break;
		case 4:
			this.insight = true;
			break;
		case 5:
			this.religion = true;
			break;
		case 6:
			this.stealth = true;
			break;
		}
		if(!this.equipment.equals("")){
			this.equipment += ", ";
		}
		if(item1.equals("")){
			this.equipment += "shortsword";
		}else{
			this.equipment += item1;
		}
		if(item2.equals("1")){
			this.equipment += ", dungeoneer's pack";
		}else{
			this.equipment += ", explorer's pack";
		}
		this.equipment += ", 10 darts";
		this.features += ", unarmoured defence, martial arts(1d4)";//increase ac, unarmed attacks d4
		this.armour = 32;//unarmoured defence ac bonus
	}
	
	public void paladin(int skill1,int skill2, String item1, String item2, String item3, boolean pack){
		this.Class = "Paladin";
		this.hitDice = level +"D10";
		this.hitPoints = 10 + processing.calcModifier(Con);
		if(!this.otherProficiencies.equals("")){
			this.otherProficiencies += ", ";
		}
		this.otherProficiencies += "all armour, shields, simple weapons, martial weapons";
		this.wisSave = true;
		this.chaSave = true;
		switch(skill1){
		case 1:
			this.athletics = true;
			break;
		case 2:
			this.insight = true;
			break;
		case 3:
			this.intimidation = true;
			break;
		case 4:
			this.medicine = true;
			break;
		case 5:
			this.persuasion = true;
			break;
		case 6:
			this.religion = true;
			break;
		}
		switch(skill2){
		case 1:
			this.athletics = true;
			break;
		case 2:
			this.insight = true;
			break;
		case 3:
			this.intimidation = true;
			break;
		case 4:
			this.medicine = true;
			break;
		case 5:
			this.persuasion = true;
			break;
		case 6:
			this.religion = true;
			break;
		}
		if(!this.equipment.equals("")){
			this.equipment += ", ";
		}
		if(item2.equals("")){
			this.equipment += item1 + ", shield";
			this.shield = true;
		}else{
			this.equipment += item1 + ", " + item2;
		}
		if(item3.equals("")){
			this.equipment += ", five javelins";
		}else{
			this.equipment += ", " + item3;
		}
		if(pack){
			this.equipment += ", priest's pack";
		}else{
			this.equipment += ", explorer's pack";
		}
		this.equipment += ", chain mail, holy symbol";
		this.armour = 22;
		this.features += ", Divine sense, lay on hands";//things you can do
	}
	
	public void ranger(int skill1, int skill2, boolean armour, String weapon1, String weapon2, boolean pack, String favouredEnemy){
		this.Class = "Ranger";
		this.hitDice = level +"D10";
		this.hitPoints = 10 + processing.calcModifier(Con);
		if(!this.otherProficiencies.equals("")){
			this.otherProficiencies += ", ";
		}
		this.otherProficiencies += "light armour, medium armour, shields, simple weapons, martial weapons";
		this.strSave = true;
		this.dexSave = true;
		switch(skill1){
		case 1:
			this.animalHandling = true;
			break;
		case 2:
			this.athletics = true;
			break;
		case 3:
			this.insight = true;
			break;
		case 4:
			this.investigation = true;
			break;
		case 5:
			this.nature = true;
			break;
		case 6:
			this.perception = true;
			break;
		case 7:
			this.stealth = true;
			break;
		case 8:
			this.survival = true;
			break;
		}
		switch(skill2){
		case 1:
			this.animalHandling = true;
			break;
		case 2:
			this.athletics = true;
			break;
		case 3:
			this.insight = true;
			break;
		case 4:
			this.investigation = true;
			break;
		case 5:
			this.nature = true;
			break;
		case 6:
			this.perception = true;
			break;
		case 7:
			this.stealth = true;
			break;
		case 8:
			this.survival = true;
			break;
		}
		if(!this.equipment.equals("")){
			this.equipment += ", ";
		}
		if(armour){
			this.equipment += "scale mail";
			this.armour = 13;
		}else{
			this.equipment += "leather armour";
			this.armour = 2;
		}
		if(weapon1.equals("")){
			this.equipment += ", two shortswords";
		}else{
			this.equipment += ", " + weapon1 +  ", " + weapon2;
		}
		if(pack){
			this.equipment += ", dungeoneer's pack";
		}else{
			this.equipment += ", explorer's pack";
		}
		this.equipment += ", longbow, a quiver of 20 arrows";
		this.features += ", Favored enemy("+favouredEnemy+"), Natural explorer";//favoured enemy can either be a moster type
		//or two humanoid races
	}
	public void rogue(int skill1, int skill2, int skill3, int skill4, String item1, String item2, String item3){
		this.Class = "Rogue";
		this.hitDice = level +"D8";
		this.hitPoints = 8 + processing.calcModifier(Con);
		if(!this.otherProficiencies.equals("")){
			this.otherProficiencies += ", ";
		}
		this.otherProficiencies += "light armour, simple weapons, hand crossbows,"
				+ " longswords, rapiers, shortswords, thieves tools";
		this.dexSave = true;
		this.intSave = true;
		for(int x = 0; x < 4; x++){//gain proficiency in four skills
			int s = 0;
			switch(x){
			case 0:
				s = skill1;
				break;
			case 1:
				s = skill2;
				break;
			case 2:
				s = skill3;
				break;
			case 3:
				s = skill4;
				break;	
			}
			switch(s){
			case 1:
				this.acrobatics = true;
				break;
			case 2:
				this.athletics = true;
				break;
			case 3:
				this.deception = true;
				break;
			case 4:
				this.insight = true;
				break;
			case 5:
				this.intimidation = true;
				break;
			case 6:
				this.investigation = true;
				break;
			case 7:
				this.perception = true;
				break;
			case 8:
				this.performance = true;
				break;
			case 9:
				this.persuasion = true;
				break;
			case 10:
				this.sleightOfHand = true;
				break;
			case 11:
				this.stealth = true;
				break;
			}
		}
		if(!this.equipment.equals("")){
			this.equipment += ", ";
		}
		this.equipment += item1 + item2 + item3 + ", leather armour, two daggers, thieve's tools";
		this.armour = 2;
		this.features += ", Expertise, Sneak attack, Thieve's cant";
	}
	
	public void expertise(int skill1, int skill2){//double proficiency bonus in two skills the player is proficient in
		int e = 0;
		for(int x = 0; x<2;x++){
			switch(x){
			case 0:
				e = skill1;
				break;
			case 1:
				e = skill2;
				break;
			}
			switch(e){
			case 1:
				this.doubleAcrobatics = true;
				break;
			case 2:
				this.doubleAnimal = true;
				break;
			case 3:
				this.doubleArcana = true;
				break;
			case 4:
				this.doubleAthletics = true;
				break;
			case 5:
				this.doubleDeception = true;
				break;
			case 6:
				this.doubleHistory = true;
				break;
			case 7:
				this.doubleInsight = true;
				break;
			case 8:
				this.doubleIntimidation = true;
				break;
			case 9:
				this.doubleInvestigation = true;
				break;
			case 10:
				this.doubleMedicine = true;
				break;
			case 11:
				this.doubleNature = true;
				break;
			case 12:
				this.doublePerception = true;
				break;
			case 13:
				this.doublePerformance = true;
				break;
			case 14:
				this.doublePersuasion = true;
				break;
			case 15:
				this.doubleReligion = true;
				break;
			case 16:
				this.doubleSleight = true;
				break;
			case 17:
				this.doubleStealth = true;
				break;
			case 18:
				this.doubleSurvival = true;
				break;
			}
		}
	}
	public void sorcerer(int skill1, int skill2, String item1, String item2, String item3, int origin){
		this.Class = "Sorcerer";
		this.hitDice = level +"D6";
		this.hitPoints = 6 + processing.calcModifier(Con);
		if(!this.otherProficiencies.equals("")){
			this.otherProficiencies += ", ";
		}
		this.otherProficiencies += "Daggers, darts, slings, quaterstaffs, light crossbows";
		this.conSave = true;
		this.chaSave = true;
		int skill = 0;
		for(int x = 0; x<2; x++){
			if(x==0){
				skill = skill1;
			}else{
				skill = skill2;
			}
			switch(skill){
			case 1:
				this.arcana = true;
				break;
			case 2:
				this.deception = true;
				break;
			case 3:
				this.insight = true;
				break;
			case 4:
				this.intimidation = true;
				break;
			case 5:
				this.persuasion = true;
				break;
			case 6:
				this.religion = true;
				break;
			}
		}
		if(!this.equipment.equals("")){
			this.equipment += ", ";
		}
		this.equipment += item1 + item2 + item3 + ", two daggers";
		String originAppend = "";//choose an origin either wild magic or a type of dragon
		switch(origin){
		case 0:
			originAppend ="Wild Magic, Wild Magic Surge, Tides of Chaos";
			break;
		case 1:
			originAppend ="Draconic Ancestry(Black), Wild Magic Surge, Tides of Chaos";
			break;
		case 2:
			originAppend ="Draconic Ancestry(Blue), Wild Magic Surge, Tides of Chaos";
			break;
		case 3:
			originAppend ="Draconic Ancestry(Brass), Wild Magic Surge, Tides of Chaos";
			break;
		case 4:
			originAppend ="Draconic Ancestry(Bronze), Wild Magic Surge, Tides of Chaos";
			break;
		case 5:
			originAppend ="Draconic Ancestry(Copper), Wild Magic Surge, Tides of Chaos";
			break;
		case 6:
			originAppend ="Draconic Ancestry(Gold), Wild Magic Surge, Tides of Chaos";
			break;
		case 7:
			originAppend ="Draconic Ancestry(Green), Wild Magic Surge, Tides of Chaos";
			break;
		case 8:
			originAppend ="Draconic Ancestry(Red), Wild Magic Surge, Tides of Chaos";
			break;
		case 9:
			originAppend ="Draconic Ancestry(Silver), Wild Magic Surge, Tides of Chaos";
			break;
		case 10:
			originAppend ="Draconic Ancestry(White), Wild Magic Surge, Tides of Chaos";
			break;
			
		}
		this.features += ", Spellcasting, Sorcerous origin: " + originAppend;
	}
	public void warlock(int skill1, int skill2, String item1, String item2, String item3, String item4, int patron){
		this.Class = "Warlock";
		this.hitDice = level +"D8";
		this.hitPoints = 8 + processing.calcModifier(Con);
		if(!this.otherProficiencies.equals("")){
			this.otherProficiencies += ", ";
		}
		this.otherProficiencies += "Light armour, simple weapons";
		this.wisSave = true;
		this.chaSave = true;
		int skill = 0;
		for(int x = 0; x<2; x++){
			if(x==0){
				skill = skill1;
			}else{
				skill = skill2;
			}
			switch(skill){
			case 1:
				this.arcana = true;
				break;
			case 2:
				this.deception = true;
				break;
			case 3:
				this.history = true;
				break;
			case 4:
				this.intimidation = true;
				break;
			case 5:
				this.investigation = true;
				break;
			case 6:
				this.nature = true;
				break;
			case 7:
				this.religion = true;
				break;
			}
		}
		if(!this.equipment.equals("")){
			this.equipment += ", ";
		}
		this.equipment += item1 + item2 + item3 + item4 +", leather armour, two daggers";
		this.armour = 2;
		switch(patron){//choose what being the warlock gets their powers from
		case 0:
			this.features += ", Otherworldly Patron (Archfey), Fey presence";
			this.spells += "faerie fire, sleep";
			break;
		case 1:
			this.features += ", Otherworldly Patron (Fiend), Dark One's Blessing";
			this.spells += "burning hands, command";
			break;
		case 2:
			this.features += ", Otherworldly Patron (Great Old One), Awakening Mind";
			this.spells += "dissonant whispers, Tasha's hideous laughter";
			break;
		}
		this.features += ", Pact magic";
		this.spellAbil = "Charisma";
		this.spellDC = 8 + this.profBonus + processing.calcModifier(this.Cha);
		this.spellMod = this.profBonus + processing.calcModifier(this.Cha);
	}
	public void wizard(int skill1, int skill2, String item1, String item2, String item3){
		this.Class = "Wizard";
		this.hitDice = level +"D6";
		this.hitPoints = 6 + processing.calcModifier(Con);
		if(!this.otherProficiencies.equals("")){
			this.otherProficiencies += ", ";
		}
		this.otherProficiencies += "daggers, darts, slings, quaterstaffs, light crossbows";
		this.intSave = true;
		this.wisSave = true;
		int skill = 0;
		for(int x = 0; x<2; x++){
			if(x==0){
				skill = skill1;
			}else{
				skill = skill2;
			}
			switch(skill){
			case 1:
				this.arcana = true;
				break;
			case 2:
				this.history = true;
				break;
			case 3:
				this.insight = true;
				break;
			case 4:
				this.investigation = true;
				break;
			case 5:
				this.medicine = true;
				break;
			case 6:
				this.religion = true;
				break;
			}
		}
		if(!this.equipment.equals("")){
			this.equipment += ", ";
		}
		this.equipment += item1 + item2 + item3 + ", spellbook";
		this.features += ", Spellcasting, Arcane Recovery";
		this.spellAbil = "Intelligence";
		this.spellDC = 8 + this.profBonus + processing.calcModifier(this.Int);
		this.spellMod = this.profBonus + processing.calcModifier(this.Int);
	}
	//end of backgrounds

	public void chooseProf(int prof) {//given an iteger from one to 18 become proficient in the relevant skill
		switch (prof) {
		case 1:
			this.athletics = true;
			break;
		case 2:
			this.acrobatics = true;
			break;
		case 3:
			this.sleightOfHand = true;
			break;
		case 4:
			this.stealth = true;
			break;
		case 5:
			this.arcana = true;
			break;
		case 6:
			this.history = true;
			break;
		case 7:
			this.investigation = true;
			break;
		case 8:
			this.nature = true;
			break;
		case 9:
			this.religion = true;
			break;
		case 10:
			this.animalHandling = true;
			break;
		case 11:
			this.insight = true;
			break;
		case 12:
			this.medicine = true;
			break;
		case 13:
			this.perception = true;
			break;
		case 14:
			this.survival = true;
			break;
		case 15:
			this.deception = true;
			break;
		case 16:
			this.intimidation = true;
			break;
		case 17:
			this.performance = true;
			break;
		case 18:
			this.persuasion = true;
			break;
		}
	}
	
	//setter methods for ability scores
	
	public void seta1(int strIn) {
		this.Str = this.Str + strIn;
	}

	public  void seta2(int dexIn) {
		this.Dex = this.Dex + dexIn;
	}

	public  void seta3(int conIn) {
		this.Con =this.Con + conIn;
	}

	public  void seta4(int intIn) {
		this.Int = this.Int + intIn;
	}

	public  void seta5(int wisIn) {
		this.Wis = this.Wis + wisIn;
	}

	public  void seta6(int chaIn) {
		this.Cha = this.Cha + chaIn;
	}
	public void reset() {//reset all changes made by picking a race before a race is selected incase the user went back
		this.race = "";
		this.size = "medium";
		
		this.Str = 0;
		this.Dex = 0;
		this.Con = 0;
		this.Int = 0;
		this.Wis = 0;
		this.Cha = 0;
		
		//proficiencies
		this.athletics = false;
		this.acrobatics = false;
		this.sleightOfHand = false;
		this.stealth = false;
		this.arcana = false;
		this.history = false;
		this.investigation = false;
		this.nature = false;
		this.religion = false;
		this.animalHandling = false;
		this.insight = false;
		this.medicine = false;
		this.perception = false;
		this.survival = false;
		this.deception = false;
		this.intimidation = false;
		this.performance = false;
		this.persuasion = false;

		this.vision = "";
		this.languages = "";

		this.features = "";

		this.feats = "";
	}
	//after all choices are made this calculates all values that need calculating
	public void processingFinal(){
		//str
		this.StrMod = processing.calcModifier(this.Str);//calculates modifier in the processing class
		this.strSaveV = this.StrMod;//sets the save to the relevant modifier
		if(this.strSave){
			 this.strSaveV += this.profBonus;//add proficiency bonus if proficient
		}
		this.athleticsV = this.StrMod;//athletics depends on the strength modifier
		if(this.athletics){
			 this.athleticsV += this.profBonus;//if proficient add two
			 if(this.doubleAthletics){
					this.athleticsV += this.profBonus;//if doubled add prof bonus again
			 }
		}
		//dex
		this.DexMod = processing.calcModifier(this.Dex);//calculate dex mod and save
		this.dexSaveV = this.DexMod;
		if(this.dexSave){
			 this.dexSaveV += this.profBonus;
		}
		this.acrobaticsV = this.DexMod;//calculate skills based on dexterity
		if(this.acrobatics){
			 this.acrobaticsV += this.profBonus;
			 if(this.doubleAcrobatics){
					this.acrobaticsV += this.profBonus;
			 }
		}
		this.sleightOfHandV = this.DexMod;
		if(this.sleightOfHand){
			 this.sleightOfHandV += this.profBonus;
			 if(this.doubleSleight){
					this.sleightOfHandV += this.profBonus;
			 }
		}
		this.stealthV = this.DexMod;
		if(this.stealth){
			 this.stealthV += this.profBonus;
			 if(this.doubleStealth){
					this.stealthV += this.profBonus;
			 }
		}
		//con
		this.ConMod = processing.calcModifier(this.Con);//no skills based on constitution
		this.conSaveV = this.ConMod;
		if(this.conSave){
			 this.conSaveV += this.profBonus;
		}
		//int
		this.IntMod = processing.calcModifier(this.Int);//calculate skills based on intelligence
		this.intSaveV = this.IntMod;
		if(this.intSave){
			 this.intSaveV += this.profBonus;
		}
		this.arcanaV = this.IntMod;
		if(this.arcana){
			 this.arcanaV += this.profBonus;
			 if(this.doubleArcana){
					this.arcanaV += this.profBonus;
			 }
		}
		this.historyV = this.IntMod;
		if(this.history){
			 this.historyV += this.profBonus;
			 if(this.doubleHistory){
					this.historyV += this.profBonus;
			 }
		}
		this.investigationV = this.IntMod;
		if(this.investigation){
			 this.investigationV += this.profBonus;
			 if(this.doubleInvestigation){
					this.investigationV += this.profBonus;
			 }
		}
		this.natureV = this.IntMod;
		if(this.nature){
			 this.natureV += this.profBonus;
			 if(this.doubleNature){
					this.natureV += this.profBonus;
			 }
		}
		this.religionV = this.IntMod;
		if(this.religion){
			 this.religionV += this.profBonus;
			 if(this.doubleReligion){
					this.religionV += this.profBonus;
			 }
		}
		//wis
		this.WisMod = processing.calcModifier(this.Wis);//calculate wisdom skills
		this.wisSaveV = this.WisMod;
		if(this.wisSave){
			 this.wisSaveV += this.profBonus;
		}
		this.animalHandlingV = this.WisMod;
		if(this.animalHandling){
			 this.animalHandlingV += this.profBonus;
			 if(this.doubleAnimal){
					this.animalHandlingV += this.profBonus;
			 }
		}
		this.insightV = this.WisMod;
		if(this.insight){
			 this.insightV += this.profBonus;
			 if(this.doubleInsight){
					this.insightV += this.profBonus;
			 }
		}
		this.medicineV = this.WisMod;
		if(this.medicine){
			 this.medicineV += this.profBonus;
			 if(this.doubleMedicine){
					this.medicineV += this.profBonus;
			 }
		}
		this.perceptionV = this.WisMod;
		if(this.perception){
			 this.perceptionV += this.profBonus;
			 if(this.doublePerception){
					this.perceptionV += this.profBonus;
			 }
		}
		this.survivalV = this.WisMod;
		if(this.survival){
			 this.survivalV += this.profBonus;
			 if(this.doubleSurvival){
					this.survivalV += this.profBonus;
			 }
		}
		//cha
		this.ChaMod = processing.calcModifier(this.Cha);//calculate charisma skills
		this.chaSaveV = this.ChaMod;
		if(this.chaSave){
			 this.chaSaveV += this.profBonus;
		}
		this.deceptionV = this.ChaMod;
		if(this.deception){
			 this.deceptionV += this.profBonus;
			 if(this.doubleDeception){
					this.deceptionV += this.profBonus;
			 }
		}
		this.intimidationV = this.ChaMod;
		if(this.intimidation){
			 this.intimidationV += this.profBonus;
			 if(this.doubleIntimidation){
					this.intimidationV += this.profBonus;
			 }
		}
		this.performanceV = this.ChaMod;
		if(this.performance){
			 this.performanceV += this.profBonus;
			 if(this.doublePerformance){
					this.performanceV += this.profBonus;
			 }
		}
		this.persuasionV = this.ChaMod;
		if(this.persuasion){
			 this.persuasionV += this.profBonus;
			 if(this.doublePersuasion){
					this.persuasionV += this.profBonus;
			 }
		}
		this.initiative = this.DexMod;//initiative bonus equals dexterity modifier
		this.passivePerception = 10 + this.perceptionV;
		switch(this.armour){//takes reference set by armour int and gives the appropriate armour class
		//no armour
		case 0:
			this.ac = 10 + this.DexMod; 
			break;
		//light armour
		case 1://padded
			this.ac = 11 + this.DexMod; 
			this.stealthDis = true;
			break;
		case 2://leather
			this.ac = 11 + this.DexMod; 
			break;
		case 3://studded
			this.ac = 12 + this.DexMod; 
			break;
		//medium
		case 11://hide
			if(this.DexMod >= 2){//add dex modifier to a maximum of 2
				this.ac = 12 + 2; 
			}else{
				this.ac = 12 + this.DexMod; 
			}
			break;
		case 12://hide
			if(this.DexMod >= 2){
				this.ac = 13 + 2; 
			}else{
				this.ac = 13 + this.DexMod; 
			}
			break;
		case 13://scale
			if(this.DexMod >= 2){
				this.ac = 14 + 2; 
			}else{
				this.ac = 14 + this.DexMod; 
			}
			this.stealthDis = true;//gives disadvantage to stealth rolls
			break;
		case 14://breastplate
			if(this.DexMod >= 2){
				this.ac = 14 + 2; 
			}else{
				this.ac = 14 + this.DexMod; 
			}
			break;
		case 15://half plate
			if(this.DexMod >= 2){
				this.ac = 15 + 2; 
			}else{
				this.ac = 15 + this.DexMod; 
			}
			this.stealthDis = true;
			break;
		//heavy
		case 21://ringmail
			this.ac = 14;
			this.stealthDis = true;
			break;
		case 22://chainmail
			this.ac = 16;
			this.stealthDis = true;
			break;
		case 23://splint
			this.ac = 17;
			this.stealthDis = true;
			break;
		case 24://plate
			this.ac = 18;
			this.stealthDis = true;
			break;
		case 31: 
			this.ac = 10 + this.DexMod + this.ConMod;//barabarian unarmoured defence
			break;
		case 32: 
			this.ac = 10 + this.DexMod + this.WisMod;//monk unarmoured defence
			break;
		}
		if(this.shield){
			this.ac += 2;//add +2 ac for shield
		}
		if(this.defence){
			this.ac++;//add one ac for feat
		}
	}
	public static void main(String args[]) {
		//main method
	}

}


