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
    <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="934" height="307" alt="" /> </a> 
        <a href="#"><img src="images/slide2.jpg" width="934" height="307" alt="" /> </a> 
        <a href="#"><img src="images/slide3.jpg" width="934" height="307" alt="" /> </a> </div>
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
String topic = request.getParameter("topic");
String dt = request.getParameter("dt");
try
{

ResultSet rs=connection.createStatement().executeQuery("SELECT rank1,username from commentscount where topic = '"+topic+"' and dt = '"+dt+"' ");
%>
<h2><font color="red">Twitter Trending Topic based on Date and Time </font></h2><br/>
<script type="text/javascript" src="sources/jscharts.js"></script>

<div id="graph">Loading graph...</div>

<div align="center">
    <script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	String topic1 = request.getParameter("topic");
	//String tkeys=null;
	
	while(rs.next())
	{
	// tkeys=rs.getString("tkeys");
	int  rank1=rs.getInt("rank1");
	String username = rs.getString("username");
        
	
	%>
	
	myData["<%=i%>"]=["<%= username%>",<%=rank1%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.2);
	myChart.setSize(550, 350);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
  </script>
  
    
  </div>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
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
