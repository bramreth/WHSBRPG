package cc;

import java.util.Random;

public class processing {
	public static long calcModifier(long scoreIn){
		long mod = (scoreIn - 10)/2;//-10 and divide by 2
		//needs to always round down, the following if's round down negative values
		if(scoreIn == 9){
			mod = -1;
		}
		if(scoreIn == 7){
			mod = -2;
		}
		if(scoreIn == 5){
			mod = -3;
		}
		if(scoreIn == 3){
			mod = -4;
		}//Ability scores cannot get lower than 3
		return mod;
	}//takes an ability score and turns it into a modifier

	public static int rand4D6() {// 4d6
		Random rand = new Random();
		int FourD6;
		int D61 = rand.nextInt((6 - 1) + 1) + 1;//generates 4 random numbers between 1 and 6
		int D62 = rand.nextInt((6 - 1) + 1) + 1;
		int D63 = rand.nextInt((6 - 1) + 1) + 1;
		int D64 = rand.nextInt((6 - 1) + 1) + 1;
		int y = D61;//sets y to equal the first d6 value
		if (y > D62) {
			y = D62;
		}//if the second value is lower than the first, y equals the lower value
		if (y > D63) {
			y = D63;
		}//sets y equal to the lower value
		if (y > D64) {
			y = D64;
		}//finally y is equal to the lowest value
		FourD6 = D61 + D62 + D63 + D64 - y;//adds all the values and subtracts the lowest number, ignoring it
		return FourD6;//returns 4d6 minus the lowest result
	}
	public static int oneD4() {
		Random rand = new Random();
		int randomNum = rand.nextInt((4 - 1) + 1) + 1;
		return randomNum;
	}//returns a roll of one 4 sided dice
	public static int twoD4() {
		Random rand = new Random();
		int randomNum = rand.nextInt((4 - 2) + 1) + 2;
		return randomNum;
	}//returns a roll of two four sided dice
	public static int oneD6() {
		Random rand = new Random();
		int randomNum = rand.nextInt((6 - 1) + 1) + 1;
		return randomNum;
	}//reurns a roll of one six sided dice
	public static int twoD6() {
		Random rand = new Random();
		int randomNum = rand.nextInt((6 - 2) + 1) + 2;
		return randomNum;
	}//returns a roll of two six sided dice
	public static int twoD8() {
		Random rand = new Random();
		int randomNum = rand.nextInt((8 - 2) + 1) + 2;
		return randomNum;
	}//returns a roll of two eight sided dice
	public static int twoD10() {
		Random rand = new Random();
		int randomNum = rand.nextInt((10 - 2) + 1) + 2;
		return randomNum;
	}//returns a roll of two ten sided dice
}