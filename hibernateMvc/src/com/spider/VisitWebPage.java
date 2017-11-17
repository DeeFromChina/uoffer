package com.spider;

import java.security.MessageDigest;

import org.hibernate.dialect.function.VarArgsSQLFunction;

import sun.misc.BASE64Encoder;

public class VisitWebPage {
	
	public static void main(String[] args){
//		for(int i = 0; i < 10; i++){
//			System.out.println(i%2);
//		}
		test();
	}

	public static void test() {
		int id = 3000;
		String idString = String.valueOf(id);
		char[] ids = idString.toCharArray();
		try {
			MessageDigest sha = MessageDigest.getInstance("SHA");
			BASE64Encoder encoder = new BASE64Encoder();
			String pString = encoder.encode(sha.digest(idString.getBytes()));
			char[] pids = pString.toCharArray();
			char[] newpassword = new char[pids.length+ids.length+1];
			int newpasswordcount = 0;
			int idscount = 0;
			System.out.println(pString);
			for(int i = 0; i < newpassword.length; i++){
				if(i == 0){
					newpassword[i] = returnAsciiCode(ids.length);
					continue;
				}
				if(i%2 == 1){
					if(idscount < ids.length){
						newpassword[i] = ids[idscount];
						idscount++;
					}else{
						if(pids.length <= newpasswordcount){
							break;
						}
						newpassword[i] = pids[newpasswordcount];
						newpasswordcount++;
					}
				}else{
					if(pids.length <= newpasswordcount){
						break;
					}
					newpassword[i] = pids[newpasswordcount];
					newpasswordcount++;
				}
			}
			System.out.println(newpassword.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private static char returnAsciiCode(int length){
		char[] font = {'A','B','C','D','E','F'};
		char a = 'a';
		switch(length){
			case 1 : a = font[1];
			case 2 : a = font[2];
			case 3 : a = font[3];
			case 4 : a = font[4];
			case 5 : a = font[5];
			case 6 : a = font[6];
			case 7 : a = font[7];
			case 8 : a = font[8];
			case 9 : a = font[9];
			case 10 : a = font[10];
			case 11 : a = font[11];
			case 12 : a = font[12];
			case 13 : a = font[13];
			case 14 : a = font[14];
			case 15 : a = font[15];
			case 16 : a = font[16];
			case 17 : a = font[17];
			case 18 : a = font[18];
			case 19 : a = font[19];
			case 20 : a = font[20];
			case 21 : a = font[21];
			case 22 : a = font[22];
			case 23 : a = font[23];
			case 24 : a = font[24];
			case 25 : a = font[25];
			case 26 : a = font[26];
		}
		return a;
	}
}
