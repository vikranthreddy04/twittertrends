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
     <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>

       <%@ page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
                        
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page session="true" %>
    <%@ include file="connect.jsp" %>
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
            
        <br/><br/>
	  
	  <h2><span> Tweets and Comments   </span></h2>
          <div class="article">
            <p align="justify"></p>

        
	
		<%
	
    
	String s1,s2,s3,s4;
	int j=0,m=0,n=0;
	
	
	String t_name=request.getParameter("name");
	String uname=request.getParameter("uname");
	String id=request.getParameter("id");
	
	if(m==0){
	%>
         <table width="520" border="1.5"  cellpadding="0" cellspacing="0"  >
        <tr>
            <td  width="181" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Tweeted User</b></div></td>
            <td  width="272" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Tweet Name</b></div></td>
            <td   width="155" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Tweet Image</strong></div></td>
        </tr>
	<tr>
	<td  width="181" height="0" align="center" valign="middle"><div align="center" class="style3"><b><%=uname%></b></div></td>
	 <td  width="272" height="0" align="center" valign="middle"><div align="center" class="style3"><b><%=t_name%></b></div></td>
	  <td align="center" valign="middle"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic2.jsp?id=<%=id%>&type=<%="tweet"%>"/></td>
		
		</tr>
	
	<%}m=1;
		%>
		  </table>
                  
              <% 
        int k=0;
        String comment = null;
        String dt = null;
        String username = null;
                  String sql="select * from comments where tweet_name='"+t_name+"'"; 
	Statement st2=connection.createStatement();
	ResultSet rs2=st2.executeQuery(sql);
	while ( rs2.next() )
	{
		k=rs2.getInt(1);
		username=rs2.getString(2);
		comment=rs2.getString(4);
		dt=rs2.getString(5);
		
		if(n==0){
		
		%>
                <br/><br/>
             
         <center><table width="501" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >      
            <tr>    
            
          <td  width="100" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>User Name </strong></div></td>
          <td  width="89" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Comment </strong></div></td>
          <td  width="74" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Date</b></div></td>
        </tr>
                <%}%>
        <tr>


        <td  width="181" height="36" align="center" valign="middle" style="color:#000000;"><div align="center">
        <p>
        <%=username%>
        </p>
        <p>&nbsp; </p>
        </div></td>	
        <td  width="272" height="36" align="center" valign="middle"><div align="center"><%=comment%></div></td>
        <td  width="155" align="center" valign="middle"><div align="center"><%=dt%></div></td>
        </tr>

					<%n=2;
				}
				%> 
                                </table>
	<table width="610" align="left"  cellpadding="0" cellspacing="0"  >			
<br/><br/>
        <form id="form1" name="form1" method="post" action="addtweetcomment.jsp?name=<%=t_name%>">
        <tr>
        <td  width="181" height="110" align="center" valign="middle" style="color:#000000;">
        <div align="left" class="style4">Enter Your Tweet Comment</div></td>	
        <td  width="272" height="110" align="center" valign="middle">
        <td align="center"><textarea name="cmt" rows="4" cols="40" required=""></textarea></td></td>
        <td  width="155" align="center" valign="middle"><div align="center"><input type="submit" name="Submit" value="Tweet" /></div></td>
        </tr>  
        </form>

	</table>
         
        </div>
	  
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
    

    
