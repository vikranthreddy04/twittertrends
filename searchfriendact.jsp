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
     
    <%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
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
        
            <br/><br/>
            
 <table width="601" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >

<%
    String username = request.getParameter("username");
    String s1,s2,s3;
   int j=0;
    try{
       
	Statement st1 = connection.createStatement();
        ResultSet rs1 = st1.executeQuery("select * from user where username='"+username+"' and username != '"+user+"' ");
       if ( rs1.next() )
                    {
                            j=rs1.getInt(1);
                            s1=rs1.getString(2);
                            s2=rs1.getString(6);
                            s3=rs1.getString(7);


                    %>
      <center><p><font color="red" size="5" >Friend Details</font></p></center>
                <br/>
           
        <form action="sendrequest.jsp" method="post">
      <tr>
                    <td width="196" rowspan="7"><div class="style7" style="margin:10px 13px 10px 13px;" >
             <input  name="image" type="image" src="profile_pic.jsp?id=<%=j%>&type=<%="user"%>" style="width:170px; height:200px;"/></div></td>
                    </tr>
     
                   <tr>
                      <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;"><strong> Name:</strong></div></td>
	  <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"> 
                  <input type="text" name="fname" size="25" id="fname" readonly="" value="<%out.println(s1);%>"> </div></td>
        </tr>
        <tr>
          <td  width="131" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;"><strong>Gender:</strong></div></td>
          <td  width="166" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;">
                  <input type="text" name="gender" size="25" id="gender" readonly="" value="<%out.println(s2);%>"></div></td>
        </tr>
        <tr>
          <td  width="131" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style8 style7 style14" style="margin-left:20px;"><strong>Location:</strong></div></td>
          <td  width="166" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;">
                  <input type="text" name="location" id="location" size="25" readonly="" value="<%out.println(s3);%>"></div></td>
        </tr>
        
    
    <tr>
                          <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="Send Request" />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <a href="searchfriend.jsp"><font color="" size="4" >Back</font></a>
                            </p>
                            <div align="right">
                            </div></td>
                        </tr>
                        </table>
</form>
     
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
        <%

                }
                connection.close();
        }
        catch(Exception e)
        {
                out.println(e.getMessage());
        }
        %>
        
        </div>
    
</body>
</html>
    
