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
       
       <%
       if (request.getParameter("m1") != null) {%>
       <script>alert('Post Uploaded Sucessfully');</script>
       <%}%>
    
    
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
        
      <br/><br/><br/><br/>
      
      <p align="justify">
      <center><p><font color="black" size="5"> Post Tweet</font></p></center>
      <form action="posttweetact.jsp" method="post" id="" enctype="multipart/form-data">
      <center><table width="421">

      <tr>
      <td width="191" height="43"><font color="black">Name: </td>
      <td width="218"><input id="name" name="name" class="text" required=""/></td>
      </tr>
         
      <tr>
      <td height="65"><font color="black">Description:</td>
      <td><textarea id="description" name="description" rows="3" cols="21" required=""></textarea></td>
      </tr>
      <tr>
      <td height="43"><font color="black">Select Image: </td>
      <td><font color="black"><input type="file" id="pic" name="pic" class="text"  required=""/></td>
      </tr>
      <tr>
      <td height="43" rowspan="3">
      <p>&nbsp;</p></td>
      <td align="left" valign="middle"> <p>&nbsp;
      </p>
      <p>
      <input name="submit" type="submit" value="Post" />
      </p>
      <div align="right">
      </div></td>
      </tr>
      </table>
      </form>
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
    
