package helper;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Query.CompositeFilter;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;
//import app engine tools
import java.io.IOException;
import java.util.Date;
import java.util.List;

import cc.coursework;//imports the main character variable holder class called coursework, allows a coursework object to be used
public class login {//class method
	
	public login(){
		//constructor
	}
	public boolean checkLogin(String usernameIn, String passwordIn){//checks if the users username and password are correct 
		DatastoreService ds = DatastoreServiceFactory.getDatastoreService();//allows the cloud database to be used
		Filter sieve  = new FilterPredicate("username", FilterOperator.EQUAL, usernameIn);//creates a filter that finds the given
		//username in the username propert
		Query checkUser = new Query("login").setFilter(sieve);//implements the filter on the login kind
		Entity user = ds.prepare(checkUser).asSingleEntity();//creates a user holding the recieved entity from the query
		if(user == null){//if the username is not found by the jquery
			System.out.println("username not found");
			return false;//return the username doesn't exist
		}
		if(passwordIn.equals(user.getProperty("password"))){//checks if the password provided is identical to the password of that username
			return true;//return username and password correct
		}
		return false;//return false, password wrong
		
	}
	public boolean nameFree(String usernameIn){//check if username is free for account creation
		DatastoreService ds = DatastoreServiceFactory.getDatastoreService();// use cloud database
		Filter sieve  = new FilterPredicate("username", FilterOperator.EQUAL, usernameIn);//filter to get that username
		Query checkUser = new Query("login").setFilter(sieve);//implements the filter on the login kind
		Entity user = ds.prepare(checkUser).asSingleEntity();//create a user holding that username 
		if(user == null){//username doesnt exist
			System.out.println("username not found");//username can be used
			return true;
		}
		return false;//username taken and cant be used
	}
	public coursework getCharacter(String ownerIn, int saveIn){// get an object of the coursewrk class holding all saved choices
		coursework pc = new coursework();//create an instance of the coursework class
		DatastoreService ds = DatastoreServiceFactory.getDatastoreService();//datastore
		Filter sieve  = new FilterPredicate("save slot", FilterOperator.EQUAL, ownerIn + saveIn);//filter to get the saveslot
		//save slot is a unique key combining the username and save slot
		Query checkUser = new Query("character").setFilter(sieve);//search the character kind for save slots
		Entity player = ds.prepare(checkUser).asSingleEntity();//temporary entity
		if(player == null){//if save slot doesnt exist
			System.out.println("no character's found");//alert
			return null;
		}else{//set all the needed values from the datastore to the object to be returned
			try{//try catch blocks for error validation
			pc.pName = (String) player.getProperty("characterName");//sets the objects name to equal the vallue in the store
			pc.Class = (String) player.getProperty("class");
			pc.background = (String)player.getProperty("background");
			pc.name = (String)player.getProperty("realName");
			pc.race = (String)player.getProperty("race");
			pc.alignment = (String)player.getProperty("alignment");
			pc.xp = (long)player.getProperty("xp");
			}catch(Exception e){
				System.out.println(e + "1");//if thrown exception output the error and the number of the block
			}try{
			pc.Str = (long)player.getProperty("strengthScore");//datastore saves as longs so all values needed to be converted to long
			pc.Dex = (long)player.getProperty("dexterityScore");
			pc.Con = (long)player.getProperty("constitutionScore");
			pc.Int = (long)player.getProperty("intelligenceScore");
			pc.Wis = (long)player.getProperty("wisdomScore");
			pc.Cha = (long)player.getProperty("charismaScore");
			}catch(Exception e){
				System.out.println(e + "2");//section 2 error
			}try{
			pc.StrMod = (long)player.getProperty("strengthMod");
			pc.DexMod = (long)player.getProperty("dexterityMod");
			pc.ConMod = (long)player.getProperty("constitutionMod");
			pc.IntMod = (long)player.getProperty("intelligenceMod");
			pc.WisMod = (long)player.getProperty("wisdomMod");
			pc.ChaMod = (long)player.getProperty("charismaMod");
			}catch(Exception e){
				System.out.println(e + "3");//section 3 error
			}try{
			pc.strSaveV = (long)player.getProperty("strengthSave");
			pc.dexSaveV = (long)player.getProperty("dexteritySave");
			pc.conSaveV = (long)player.getProperty("constitutionSave");
			pc.intSaveV = (long)player.getProperty("intelligenceSave");
			pc.wisSaveV = (long)player.getProperty("wisdomSave");
			pc.chaSaveV = (long)player.getProperty("charismaSave");
			
			pc.strSave = (boolean)player.getProperty("strengthSaveB");
			pc.dexSave = (boolean)player.getProperty("dexteritySaveB");
			pc.conSave = (boolean)player.getProperty("constitutionSaveB");
			pc.intSave = (boolean)player.getProperty("intelligenceSaveB");
			pc.wisSave = (boolean)player.getProperty("wisdomSaveB");
			pc.chaSave = (boolean)player.getProperty("charismaSaveB");
			}catch(Exception e){
				System.out.println(e + "4");//section 4 error
			}try{
			pc.ac = (long)player.getProperty("AC");
			pc.initiative = (long)player.getProperty("initiative");
			pc.speed = (long)player.getProperty("speed");
			pc.hitPoints = (long)player.getProperty("HP");
			pc.hitDice = (String)player.getProperty("hit dice");
			}catch(Exception e){
				System.out.println(e + "5");//section 5 error
			}try{
				pc.spellAbil = (String)player.getProperty("spellAbil");
				pc.spellDC = (Long)player.getProperty("spellDC");//if not a psllcasting should be 111
				pc.spellMod = (Long)player.getProperty("spellMod");
			}catch(Exception e){
				System.out.println(e + "6");//section 6 error, not all classes  have spells
			}try{
			pc.personality = (String)player.getProperty("personalityTraits");
			pc.ideal = (String)player.getProperty("ideal");
			pc.bond = (String)player.getProperty("bond");
			pc.flaw = (String)player.getProperty("flaw");
			}catch(Exception e){
				System.out.println(e + "7");//section 7 eroor
			}try{
			pc.acrobaticsV = (long)player.getProperty("acrobatics");
			pc.animalHandlingV = (long)player.getProperty("animalHandling");
			pc.arcanaV = (long)player.getProperty("arcana");
			pc.athleticsV = (long)player.getProperty("athletics");
			pc.deceptionV = (long)player.getProperty("deception");
			pc.historyV = (long)player.getProperty("history");
			pc.insightV = (long)player.getProperty("insight");
			pc.intimidationV = (long)player.getProperty("intimidation");
			pc.investigationV = (long)player.getProperty("investigation");
			pc.medicineV = (long)player.getProperty("medicine");
			pc.natureV = (long)player.getProperty("nature");
			pc.perceptionV = (long)player.getProperty("perception");
			pc.performanceV = (long)player.getProperty("performance");
			pc.persuasionV = (long)player.getProperty("persuasion");
			pc.religionV = (long)player.getProperty("religion");
			pc.sleightOfHandV = (long)player.getProperty("sleightOfHand");
			pc.stealthV = (long)player.getProperty("stealth");
			pc.survivalV = (long)player.getProperty("survival");
			pc.passivePerception = (long)player.getProperty("passivePerception");
			
			pc.acrobatics = (boolean)player.getProperty("acrobaticsb");
			pc.animalHandling = (boolean)player.getProperty("animalHandlingb");
			pc.arcana = (boolean)player.getProperty("arcanab");
			pc.athletics = (boolean)player.getProperty("athleticsb");
			pc.deception = (boolean)player.getProperty("deceptionb");
			pc.history = (boolean)player.getProperty("historyb");
			pc.insight = (boolean)player.getProperty("insightb");
			pc.intimidation = (boolean)player.getProperty("intimidationb");
			pc.investigation = (boolean)player.getProperty("investigationb");
			pc.medicine = (boolean)player.getProperty("medicineb");
			pc.nature = (boolean)player.getProperty("natureb");
			pc.perception = (boolean)player.getProperty("perceptionb");
			pc.performance = (boolean)player.getProperty("performanceb");
			pc.persuasion = (boolean)player.getProperty("persuasionb");
			pc.religion = (boolean)player.getProperty("religionb");
			pc.sleightOfHand = (boolean)player.getProperty("sleightOfHandb");
			pc.stealth = (boolean)player.getProperty("stealthb");
			pc.survival = (boolean)player.getProperty("survivalb");
			}catch(Exception e){
				System.out.println(e + "8");//section 8 error
			}try{
			pc.languages = (String)player.getProperty("languages");
			pc.otherProficiencies = (String)player.getProperty("otherProficiencies");
			pc.money = (long)player.getProperty("gold");
			pc.equipment = (String)player.getProperty("equipment");
			pc.features = (String)player.getProperty("features");
			}catch(Exception e){
				System.out.println(e + "9");//section 9 error
			}try{
			pc.name = (String)player.getProperty("playerName");
			pc.age = (long)player.getProperty("age");
			pc.realH = (String)player.getProperty("height");
			pc.realW = (String)player.getProperty("weight");
			pc.eyes = (String)player.getProperty("eyes");
			pc.skin = (String)player.getProperty("skin");
			pc.hair = (String)player.getProperty("hair");
			pc.backstory = (String)player.getProperty("backstory");
			pc.vision = (String)player.getProperty("vision");
			}catch(Exception e){
				System.out.println(e + "10");//section 10 error
			}
		}
		return pc;//return the instanced class with all its values
	}
	
	//when character creation is finished, all the coursework classes attributes are saved to the datastore
	public void createCharacter(String usernameIn, coursework p, Integer slot){//accepts the created character, username and save slot
		DatastoreService ds = DatastoreServiceFactory.getDatastoreService();//uses datastore
		Filter sieve  = new FilterPredicate("username", FilterOperator.EQUAL, usernameIn);//finds usernames of that username
		Query checkUser = new Query("login").setFilter(sieve);//applies the filter to get the entity
		Entity user = ds.prepare(checkUser).asSingleEntity();//set the entity to the one found by the query
		if(user == null){//username doesnt exist, shouldn't occur
			System.out.println("username not found on creation");//alert
		}else{//if user does exist
			System.out.println("char created");//alert
			Filter charactersieve  = new FilterPredicate("save slot", FilterOperator.EQUAL, usernameIn + slot);//search saveslots for the chosen save slot
			//save slot is a concatonation of the username and save number, which creates a unique key
			Query checkcharacter = new Query("character").setFilter(charactersieve);
			Entity character = ds.prepare(checkcharacter).asSingleEntity();
			if(character == null){//if slot isnt used
				character = new Entity("character");//create a new character
			}
			character.setProperty("save slot", usernameIn + slot);//append save slot if it didn't already exist
			character.setProperty("characterName", p.pName);//set properies for each of the objects attributes
			character.setProperty("class", p.Class);
			character.setProperty("background", p.background);
			character.setProperty("realName", p.name);
			character.setProperty("race", p.race);
			character.setProperty("alignment", p.alignment);
			character.setProperty("xp", p.xp);
			
			character.setProperty("strengthScore", p.Str);
			character.setProperty("dexterityScore", p.Dex);
			character.setProperty("constitutionScore", p.Con);
			character.setProperty("intelligenceScore", p.Int);
			character.setProperty("wisdomScore", p.Wis);
			character.setProperty("charismaScore", p.Cha);
			
			character.setProperty("strengthMod", p.StrMod);
			character.setProperty("dexterityMod", p.DexMod);
			character.setProperty("constitutionMod", p.ConMod);
			character.setProperty("intelligenceMod", p.IntMod);
			character.setProperty("wisdomMod", p.WisMod);
			character.setProperty("charismaMod", p.ChaMod);
			
			character.setProperty("strengthSave", p.strSaveV);
			character.setProperty("dexteritySave", p.dexSaveV);
			character.setProperty("constitutionSave", p.conSaveV);
			character.setProperty("intelligenceSave", p.intSaveV);
			character.setProperty("wisdomSave", p.wisSaveV);
			character.setProperty("charismaSave", p.chaSaveV);
			
			character.setProperty("strengthSaveB", p.strSave);
			character.setProperty("dexteritySaveB", p.dexSave);
			character.setProperty("constitutionSaveB", p.conSave);
			character.setProperty("intelligenceSaveB", p.intSave);
			character.setProperty("wisdomSaveB", p.wisSave);
			character.setProperty("charismaSaveB", p.chaSave);
			
			
			character.setProperty("AC", p.ac);
			character.setProperty("initiative", p.initiative);
			character.setProperty("speed", p.speed);
			character.setProperty("HP", p.hitPoints);
			character.setProperty("hit dice", p.hitDice);
			character.setProperty("xp", p.xp);
			
			character.setProperty("spellAbil", p.spellAbil);
			character.setProperty("spellDC", p.spellDC);
			character.setProperty("spellMod", p.spellMod);
			
			character.setProperty("personalityTraits", p.personality);
			character.setProperty("ideal", p.ideal);
			character.setProperty("bond", p.bond);
			character.setProperty("flaw", p.flaw);
			
			character.setProperty("acrobatics", p.acrobaticsV);
			character.setProperty("animalHandling", p.animalHandlingV);
			character.setProperty("arcana", p.arcanaV);
			character.setProperty("athletics", p.athleticsV);
			character.setProperty("deception", p.deceptionV);
			character.setProperty("history", p.historyV);
			character.setProperty("insight", p.insightV);
			character.setProperty("intimidation", p.intimidationV);
			character.setProperty("investigation", p.investigationV);
			character.setProperty("medicine", p.medicineV);
			character.setProperty("nature", p.natureV);
			character.setProperty("perception", p.perceptionV);
			character.setProperty("performance", p.performanceV);
			character.setProperty("persuasion", p.persuasionV);
			character.setProperty("religion", p.religionV);
			character.setProperty("sleightOfHand", p.sleightOfHandV);
			character.setProperty("stealth", p.stealthV);
			character.setProperty("survival", p.survivalV);
			character.setProperty("passivePerception", p.passivePerception);
			
			character.setProperty("acrobaticsb", p.acrobatics);
			character.setProperty("animalHandlingb", p.animalHandling);
			character.setProperty("arcanab", p.arcana);
			character.setProperty("athleticsb", p.athletics);
			character.setProperty("deceptionb", p.deception);
			character.setProperty("historyb", p.history);
			character.setProperty("insightb", p.insight);
			character.setProperty("intimidationb", p.intimidation);
			character.setProperty("investigationb", p.investigation);
			character.setProperty("medicineb", p.medicine);
			character.setProperty("natureb", p.nature);
			character.setProperty("perceptionb", p.perception);
			character.setProperty("performanceb", p.performance);
			character.setProperty("persuasionb", p.persuasion);
			character.setProperty("religionb", p.religion);
			character.setProperty("sleightOfHandb", p.sleightOfHand);
			character.setProperty("stealthb", p.stealth);
			character.setProperty("survivalb", p.survival);
			
			character.setProperty("languages", p.languages);
			character.setProperty("otherProficiencies", p.otherProficiencies);
			character.setProperty("gold", p.money);
			character.setProperty("equipment", p.equipment);
			character.setProperty("features", p.features);
			
			character.setProperty("playerName", p.name);
			character.setProperty("age", p.age);
			character.setProperty("height", p.realH);
			character.setProperty("weight", p.realW);
			character.setProperty("eyes", p.eyes);
			character.setProperty("skin", p.skin);
			character.setProperty("hair", p.hair);
			character.setProperty("backstory", p.backstory);
			character.setProperty("vision", p.vision);
			ds.put(character);//put in the datastore
			
		}
	}
}
