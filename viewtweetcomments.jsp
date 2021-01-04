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
    <div class="main">
    <div class="header">
    <div class="header_resize">
    <div class="menu_nav">
    <ul>
    <li><a href="#"><span>Home Page</span></a></li>
    <li class="active"><a href="#">Admin</a></li>
    <li><a href=#">User</a></li>
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
            <br/><br/>
          <p>
 <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
	
 
                <%


    int m =0,j=0;
    String s1,s2,s3,s4;

      String sql2="select * from comments"; 
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
                <center><table width="501" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >
               
                
            <tr>
              <td  width="101" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong> Image </strong></div></td>
            <td  width="93" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>User Name </strong></div></td>
            <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Post Name </strong></div></td>
            <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Comment </strong></div></td>

            </tr>
          <%}%>
        <tr>
          	
<td width="100"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic2.jsp?id=<%=j%>&type=<%="tweet"%>"/></td>
<td  width="89" height="110" align="center" valign="middle"><div align="center"><%out.println(s4);%></div></td>  
<td  width="74" height="110" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s1);%></div></td>	
  <td  width="216" height="110" align="center" valign="middle"><div align="center"><%out.println(s2);%></div></td>
  
</tr>
       <%
       m=2;
        } 
        %>
      </table> 
		  </p>
  
      

	<div class="clr"></div>
     </div>

     </div>

     <div class="sidebar">
     <div class="gadget">
     <h2 class="star"> Menu</h2>
     <div class="clr"></div>
     <ul class="sb_menu">
     <li><a href="adminhome.jsp">Home</a></li>
     <li><a href="viewusers.jsp">View Users</a></li>
     <li><a href="viewtweets.jsp">View Tweets</a></li>
     <li><a href="viewtweetcomments.jsp">View Tweet Comments</a></li>
     <li><a href="viewtweetwords.jsp">View Tweet Related Words</a></li>
     <li><a href="viewtweetwords.jsp">View Topic-rehotting Prediction </a></li>
     <li><a href="results1.jsp">View All Tweets Graph</a></li>
     <li><a href="admin.jsp">Logout</a></li>
     </ul>
    </div>
    </div>
    <div class="clr"></div>
    </div>
    </div>
  
    <div class="footer">
    <div class="footer_resize">
    <p class="rf"><font color="white">Developed by: <a href="http://1000projects.org/">1000Projects</a></font></p>
    <div style="clear:both;"></div>
    </div>
    </div>
    </div>
    
</body>
</html>
