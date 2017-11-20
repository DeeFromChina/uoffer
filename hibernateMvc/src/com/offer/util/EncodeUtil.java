package com.offer.util;

import java.security.MessageDigest;

import sun.misc.BASE64Encoder;

public class EncodeUtil {

	public static String IDEncoder(Integer id) {
		String idString = String.valueOf(id);
		try {
			MessageDigest sha = MessageDigest.getInstance("SHA");
			BASE64Encoder encoder = new BASE64Encoder();
			String idCode = encoder.encode(sha.digest(idString.getBytes()));
			
			//String to char[]
			char[] ids = idString.toCharArray();
			char[] idCodeChars = idCode.toCharArray();
			
			int sumLength = ids.length + idCodeChars.length;
			int idsCount = 0;
			int idCodeCount = 0;
			StringBuffer newID = new StringBuffer();
			
			for(int i = 0; i < sumLength+1; i++){
				if(i == 0){
					newID.append(String.valueOf(returnAsciiCode(ids.length)));
					continue;
				}
				if(i%2 == 1){
					if(idsCount < ids.length){
						Integer subId = Integer.parseInt(String.valueOf(ids[idsCount]));
						newID.append(String.valueOf(returnAsciiCode(subId)));
						idsCount++;
					}else{
						if(idCodeChars.length <= idCodeCount){
							break;
						}
						newID.append(String.valueOf(idCodeChars[idCodeCount]));
						idCodeCount++;
					}
				}else{
					if(idCodeChars.length <= idCodeCount){
						break;
					}
					newID.append(String.valueOf(idCodeChars[idCodeCount]));
					idCodeCount++;
				}
			}
			return newID.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public static int changeId(String encode){
		char[] idChars = encode.toCharArray();
		int length = Integer.valueOf(returnNumber(idChars[0]));
		StringBuffer id = new StringBuffer();
		for(int i = 0; i < idChars.length; i++){
			if(i == 0){
				continue;
			}
			if(i%2 == 1){
				if(length == 0){
					break;
				}else{
					id.append(returnNumber(idChars[i]));
					length--;
				}
			}
		}
		return Integer.valueOf(id.toString());
	}
	
	private static char returnAsciiCode(int i){
		char[] font = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','S','Y','Z'};
		char a = 'a';
		switch(i){
			case 0 : a = font[0];break;
			case 1 : a = font[1];break;
			case 2 : a = font[2];break;
			case 3 : a = font[3];break;
			case 4 : a = font[4];break;
			case 5 : a = font[5];break;
			case 6 : a = font[6];break;
			case 7 : a = font[7];break;
			case 8 : a = font[8];break;
			case 9 : a = font[9];break;
			case 10 : a = font[10];break;
			case 11 : a = font[11];break;
			case 12 : a = font[12];break;
			case 13 : a = font[13];break;
			case 14 : a = font[14];break;
			case 15 : a = font[15];break;
			case 16 : a = font[16];break;
			case 17 : a = font[17];break;
			case 18 : a = font[18];break;
			case 19 : a = font[19];break;
			case 20 : a = font[20];break;
			case 21 : a = font[21];break;
			case 22 : a = font[22];break;
			case 23 : a = font[23];break;
			case 24 : a = font[24];break;
			case 25 : a = font[25];break;
		}
		return a;
	}
	
	private static String returnNumber(char c){
		String str = "";
		switch(c){
			case 'A' : str = "0";break;
			case 'B' : str = "1";break;
			case 'C' : str = "2";break;
			case 'D' : str = "3";break;
			case 'E' : str = "4";break;
			case 'F' : str = "5";break;
			case 'G' : str = "6";break;
			case 'H' : str = "7";break;
			case 'I' : str = "8";break;
			case 'J' : str = "9";break;
			case 'K' : str = "10";break;
			case 'L' : str = "11";break;
			case 'M' : str = "12";break;
			case 'N' : str = "13";break;
			case 'O' : str = "14";break;
			case 'P' : str = "15";break;
			case 'Q' : str = "16";break;
			case 'R' : str = "17";break;
			case 'S' : str = "18";break;
			case 'T' : str = "19";break;
			case 'U' : str = "20";break;
			case 'V' : str = "21";break;
			case 'W' : str = "22";break;
			case 'X' : str = "23";break;
			case 'Y' : str = "24";break;
			case 'Z' : str = "25";break;
		}
		return str;
	}

}
