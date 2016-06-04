package cn.comn.zjf.action;

import java.util.Date;

public class StaticTest {
	public static String getTime(){
		
		
		return new Date().toString();
	}
	
	public static long time=new Date().getTime();
}
