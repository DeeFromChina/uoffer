package com.offer.util.impl;

import java.security.MessageDigest;

import org.springframework.stereotype.Service;

import sun.misc.BASE64Encoder;

import com.offer.util.Encryption;

@Service("encryption")
public class EncryptionImpl implements Encryption{

	public String encryption(String password) throws Exception {
		try{
			   MessageDigest sha = MessageDigest.getInstance("SHA");
			   BASE64Encoder encoder = new BASE64Encoder();
			   return encoder.encode(sha.digest(password.getBytes()));
		   }catch(Exception e){
			   e.printStackTrace();
			   return null;
		   }
	}

}
