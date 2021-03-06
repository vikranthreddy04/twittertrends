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
            <br/>
<%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>

    <%
        try {
        PreparedStatement ps = connection.prepareStatement("select * from tweetfilters");
        ResultSet rs = ps.executeQuery();

    %>
    
    <center>
        <h2><font color="black" size="5"> View Tweet Filters</font></h2>
        <br>
                    <table border="2" width="80%">

                        <tr style="background-color: skyblue">
                            <td><font color="black">Category</td>
                            <td><font color="black">Words</td>
                            
                        </tr>

                        <%                while (rs.next()) {
                        %>

    <tr>
        <td><font color="black"><%=rs.getString(1)%></td>
         <td><font color="black"><%=rs.getString(2)%></td>
         </tr>
            <%
                }
                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
        </table>
        <br/>
        <a href="addtweetfilters.jsp"><font color="green">Back </font></a>
        
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
     <li><a href="addtweetfilters.jsp">Add Tweet Filters</a></li>
     <li><a href="viewtweets.jsp">View All Tweets</a></li>
     <li><a href="viewtweetwords.jsp">Twitter Trends Manipulation</a></li>
     <li><a href="viewhashwords.jsp">View no of Hashtags(#)</a></li>
     <li><a href="#.jsp">View Tweet with no of Positive Words</a></li>
     <li><a href="#.jsp">View Tweet with no of Negative Words</a></li>
     <li><a href="#.jsp">View All Tweet Followers</a></li>
     <li><a href="#.jsp">View Tweet Trended Topics </a></li>
      <li><a href="#.jsp">View Tweet with no of Positive Words in Graph</a></li>
     <li><a href="#.jsp">View Tweet with no of Negative Words in Graph</a></li>
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
