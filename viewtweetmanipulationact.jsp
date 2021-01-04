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

<%@ include file="connect.jsp"%>


<%
String dt = request.getParameter("dt");
String topic = request.getParameter("topic");
System.out.println("topiccccccccccc" +topic);

PreparedStatement ps2=connection.prepareStatement("delete from commentscount where dt='"+dt+"'"); 
ps2.executeUpdate();

PreparedStatement ps3=connection.prepareStatement("delete from timecount where dt='"+dt+"'"); 
ps3.executeUpdate();

String sql="SELECT distinct username FROM comments where dt = '"+dt+"' and tweet_name = '"+topic+"' ";
Statement st = connection.createStatement();
ResultSet rs =st.executeQuery(sql);
String username = null;
int i =0,j=0;
while(rs.next()){
   username = rs.getString("username");
 String sql1="SELECT * FROM comments where dt = '"+dt+"' and tweet_name = '"+topic+"' and username = '"+username+"'";
Statement st1 = connection.createStatement();
ResultSet rs1 =st1.executeQuery(sql1); 
while(rs1.next()){
 i = i+1;   
 j = j+1;   
}
 PreparedStatement ps=connection.prepareStatement("insert into commentscount(username,topic,dt,rank1) values('"+username+"','"+topic+"','"+dt+"', "+i+") ");
 ps.executeUpdate();
 i=0;

}

 PreparedStatement ps1=connection.prepareStatement("insert into timecount (topic,dt,count1) values('"+topic+"','"+dt+"', "+j+") ");
 ps1.executeUpdate();
 j=0;
 response.sendRedirect("viewtweetmanipulation.jsp?msg=Success");
 
%>




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
     <li><a href="viewtweets.jsp">View All Tweets</a></li>
     <li><a href="viewtweetmanipulation.jsp">View Tweet Trending Topics </a></li>
     <li><a href="timevscount.jsp">Time vs Count Graph</a></li>
     <li><a href="usersvscount.jsp">Users vs Count Graph</a></li>
     <li><a href="manipulativeusers.jsp">Find Manipulative Users</a></li>
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
