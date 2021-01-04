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
       <p align="justify">
       <center><p><font color="black" size="5"> Add Tweet Filters</font></p></center>
       <form action="addtweetfiltersact.jsp" method="post" >
       <center><table width="421">
       <tr>
       <td height="43"><font color="black">Select Categories</td>
       <td><select id="s1" name="category" style="width:170px;" required="">
       <option>--Select--</option>
       <option>Positive</option>
       <option>Negative</option>
       </select></td>
       </tr>
       <br/>
       <tr>
       <td height="65"><font color="black">Words</td>
       <td><input id="words" name="words" required="" placeholder="Tweet Filters"></input></td>
       </tr>
       <tr>
       <td height="43" rowspan="1">
       <p>&nbsp;</p></td>
       <td align="left" valign="middle"> <p>&nbsp;
       </p>
       <p>
       <input name="submit" type="submit" value="ADD" />
       </p>
       <div align="right">
       </div></td>
       </tr>
       </table>
       </form>
       </p>
       
       <a href="viewtweetfilters.jsp"><font size="4" color="red">View Tweet Filters </font></a>

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
