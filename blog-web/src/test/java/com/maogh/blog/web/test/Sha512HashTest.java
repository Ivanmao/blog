package com.maogh.blog.web.test;

import org.apache.shiro.crypto.hash.Sha512Hash;
import org.junit.Test;

public class Sha512HashTest {
	@Test
	public void test(){
		Sha512Hash sha512Hash = new Sha512Hash("admin",null,1024);
		System.out.println(sha512Hash.toBase64());
		Sha512Hash sha512Hash2 = new Sha512Hash("user",null,1024);
		System.out.println(sha512Hash2.toBase64());
	}
}
