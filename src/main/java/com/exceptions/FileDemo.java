package com.exceptions;

import java.io.DataInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileDemo {
	static DataInputStream dis=null;
	static FileOutputStream fis=null;
	public static void main() throws IOException
	{ 
		try {
			DataInputStream dis=new DataInputStream(System.in);
			FileOutputStream fis=new FileOutputStream("webla.txt",true);
			char ch1;
			System.out.println("Enter data(& at the end)");
		 while((ch1=(char)dis.read())!='&')
		 {
			 fis.write(ch1);
			 
		 }
		 
		 }
		finally {
			dis.close();
			fis.close();
			
		}
		
	}
	

}
