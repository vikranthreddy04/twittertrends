<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Twitter Trends Manipulation</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-900.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
     
       <%@ include file="connect.jsp" %>
       <%@ page import="org.bouncycastle.util.encoders.Base64"%>

 <%
String user=session.getAttribute("user").toString();
%>
   <%

            int i=0;
           
                    String query="select * from user where username='"+user+"'"; 
                    Statement st=connection.createStatement();
                    ResultSet rs=st.executeQuery(query);
                    if ( rs.next() )
                    {
                            i=rs.getInt(1);
                    }     
                    %> 
    
    <div class="main">
    <div class="header">
    <div class="header_resize">
    <div class="menu_nav">
    <ul>
     <li><a href="userhome.jsp"> Home </a></li>
    <li class="active"><a href="#"><%=user%></a></li>
    <li><a href="user.jsp">Logout</a></li>
    </ul>
    </div>
    <div class="logo">
    <h1><font color="white">Twitter Trends Manipulation: A First Look Inside <br/>the Security of Twitter Trending</font></h1>
    </div>
    <div class="clr"></div>
    <div class="slider">
    <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="934" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="934" height="307" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="934" height="307" alt="" /> </a> </div>
    <div class="clr"></div>
    </div>
    <div class="clr"></div>
    </div>
    </div>
    <div class="content">
    <div class="content_resize">
    <div class="mainbar">
    <div class="article">
        
            
          <p>
	   
 <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
	
<%	
                     int m =0,j=0,h=0;
    String s1,s2,s3,s4;
            ArrayList al1=new ArrayList();
            String query1="select fname from friendrequest where uname = '"+user+"'"; 
            Statement st2=connection.createStatement();
            ResultSet rs2=st2.executeQuery(query1);
               String fname = null;     
                   while(rs2.next())
                   {
                       
                        fname=rs2.getString("fname");                        
                       al1.add(fname); 
                    
                   }
                   for(h=0;h<al1.size();h++)
                   {


   

      String sql2="select * from tweets where username='"+al1.get(h)+"'"; 
	Statement st1=connection.createStatement();
	ResultSet rs1=st1.executeQuery(sql2);
	while(rs1.next())
	{
		j=rs1.getInt(1);
		s4=rs1.getString(2);
		s1=rs1.getString(3);
		s2=rs1.getString(4);
		s3=rs1.getString(5);
           if(m==0){
            %>
            
            <center><h1><font color="red">View Friends Tweets & Re-tweet</font></h1></center><br/>
            
                <center><table width="501" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >
               
                
            <tr>    
            
          <td  width="100" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Tweet Image </strong></div></td>
          <td  width="89" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Posted by </strong></div></td>
          <td  width="74" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Tweet Name</b></div></td>
          <td   width="216" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Description</strong></div></td>
          <td  width="78" valign="baseline" style="color: #2c83b0;"><div align="center"><strong>Re-Tweet</strong></div></td>
        </tr>
          <%}%>
        <tr>
          	
<td width="100"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic2.jsp?id=<%=j%>&type=<%="tweet"%>"/></td>
<td  width="89" height="110" align="center" valign="middle"><div align="center"><%out.println(s4);%></div></td>  
<td  width="74" height="110" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s1);%></div></td>	
  <td  width="216" height="110" align="center" valign="middle"><div align="center"><%out.println(s2);%></div></td>
  <td  width="78" height="110" align="center" valign="middle"><div align="center"><a href="retweet.jsp?name=<%=s1%>&id=<%=j%>&uname=<%=s4%>">Re-tweet</a></div></td>
</tr>
       <%
       m=2;
        } }
        %>
      </table>  
		  </p>
  
      

	<div class="clr"></div>
        </div>
        
        </div>
           
        <div class="sidebar">
        <div class="gadget">
            
        <div class="img"><img src="profile_pic.jsp?id=<%=i%>" width="120" height="120" alt="" class="fl" /></div>
          
        <h2 class="star">User Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
       <li><a href="userhome.jsp">Home</a></li>
        <li><a href="searchfriend.jsp">Search Friends</a></li>
        <li><a href="viewfriendreq.jsp">View Friend Requests</a></li>
        <li><a href="posttweet.jsp">Post Tweet</a></li>
        <li><a href="viewmytweets.jsp">View My Tweets</a></li>
        <li><a href="searchtweets.jsp">Search Tweets with Keyword</a></li>
        <li><a href="viewfriendstweets.jsp">View Friends Tweets & Re-tweets</a></li>
        <li><a href="viewfriends.jsp">View Friends List</a></li>
        <li><a href="user.jsp">Logout</a></li>
        </ul>
        </div>
        </div>
           
        <div class="clr"></div>
        </div>
        </div>
  
        <div class="footer">
        <div class="footer_resize">
        <p class="rf">Developed by: <a href="http://1000projects.org/">1000Projects</a></p>
        <div style="clear:both;"></div>
        </div>
        </div>
        </div>
    
</body>
</html>
    
