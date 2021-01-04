<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>A Temporal Model for Topic Re-hotting</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
       <div class="main">
       <div class="header">
       <div class="header_resize">
       <div class="logo">
       <h1><font color="red">When to Make a Topic Popular Again? A Temporal Model for <br/>Topic Re-hotting Prediction in Online Social Networks</font></h1>
       </div>
      
       <div class="clr"></div>
       
       <div class="menu_nav">
       <ul>
       <li><a href="#"><span>Home Page</span></a></li>
       <li class="active"><a href="#">Admin</a></li>
       <li><a href="#">User</a></li>
       <li><a href="#">Registration</a></li>
       </ul>
       </div>
       
       <div class="clr"></div>
       <div class="slider">
       <div id="coin-slider"> 
       <img src="images/slide1.jpg" width="960" height="360" alt="" /> 
       <img src="images/slide2.jpg" width="960" height="360" alt="" />
       <img src="images/slide3.jpg" width="960" height="360" alt="" /> 
       </div>
       <div class="clr"></div>
       </div>
       <div class="clr"></div>
       </div>
       </div>
       <div class="content">
       <div class="content_resize">
       <div class="mainbar">
       <div class="article">
           
           <h2><font color="green">Hashtag Sense Clustering for Selected Tweet Key</font></h2>
         
            <p align="justify"> 
            
<%@ include file="connect.jsp" %>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

	
		<%
	
    
	String s1,s2,s3,s4,result="";
	int i=0,j=0,m=0,count=0;
	
	try 
	{
	
	
	String key=request.getParameter("key");
	String tname=request.getParameter("tname");
	
	ArrayList al=new ArrayList();
	ArrayList al1=new ArrayList();
	String query="select * from comments where tweet_name like'"+tname+"%'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		
	
		if(m==0){
		%>
                <table width="600" border="1.5"  cellpadding="0" cellspacing="0"  >
				<tr>
				 <td  width="109" height="50" align="center" valign="middle" style="color: #2c83b0;"><div align="center"><strong>Username </strong></div></td>
				  <td  width="97" height="50" align="center" valign="middle" style="color: #2c83b0;"><div align="center"><b>Tweet Name</b></div></td>
				  <td   width="206" height="50" align="center" valign="middle" style="color: #2c83b0;"><div align="center"><strong>Tweet Comment</strong></div></td>
				  <td  width="126" height="50" align="center" valign="middle" style="color: #2c83b0;"><div align="center"><strong>Date</strong></div></td>
				</tr>
					<%}%>
			<tr>
			  <td  width="97" height="50" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s1);%></div></td>
			  <td  width="97" height="50" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s2);%></div></td>	
			  <td  width="206" height="50" align="center" valign="middle" style="color:#000000;"><div align="center"><%
			  
			  java.util.regex.Pattern pattern=java.util.regex.Pattern.compile("#"+key+"[a-z,A-Z]*",java.util.regex.Pattern.CASE_INSENSITIVE);
			  java.util.regex.Matcher matcher=pattern.matcher(s3);
			  
			  while(matcher.find()){
			  for(j=0;j<=matcher.groupCount();j++)
			  {
			 	
			  String str=matcher.group(j);
			  s3=s3.replace(matcher.group(j),"<b><i><u><big><font>"+str+"</font></big></u></i></b>");
			  count=count+1;
			  al.add(matcher.group(j));
			  }
			  }
			
			  
			  			  
			  out.println(s3);%></div></td>
			  <td  width="126" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s4);%></div></td>
			</tr>
					
					<%m=2;
					java.util.regex.Pattern pattern1=java.util.regex.Pattern.compile("#[a-z,A-Z]*",java.util.regex.Pattern.CASE_INSENSITIVE);
			  java.util.regex.Matcher matcher1=pattern1.matcher(s3);
			  
			  while(matcher1.find())
			  {
			  for(j=0;j<=matcher1.groupCount();j++)
			  {
			 	
			  al1.add(matcher1.group(j));
			  }
			  }
			  
				}
				
				String sql4="update hashwords set tweet_hash='"+al1+"' where tname like '"+tname+"%'";
				 Statement st4=connection.createStatement();
				 st4.executeUpdate(sql4);
				
				
				if(!(al.isEmpty()))
				{
				 String sql1="select * from tweet_words where tkeys='"+key+"'";
				 Statement st1=connection.createStatement();
				 ResultSet rs1=st1.executeQuery(sql1);
				 if(rs1.next())
			 {
				  String sql2="update tweet_words set words='"+al+"',count='"+count+"' where tkeys='"+key+"'";
				 Statement st2=connection.createStatement();
				 st2.executeUpdate(sql2);
			 }
			 else
			 {
                                String date1=null;
                                Date dNow = new Date( );
                                SimpleDateFormat date = new SimpleDateFormat("yyyy.MM.dd"); 
                                date1 = date.format(dNow);

				 String sql3="insert into tweet_words(tkeys,words,dt,count)values('"+key+"','"+al+"','"+date1+"','"+count+"')";
				 Statement st3=connection.createStatement();
				 st3.executeUpdate(sql3);
			 }
			 
			  }
				 
			 
			 
			 
			 
			 
			 
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
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
     <li><a href="viewtweets.jsp">View All Tweets</a></li>
     <li><a href="viewtweetwords.jsp">Twitter Tweets with Hashwords</a></li>
     <li><a href="viewhashwords.jsp">View no of Hashtags(#)</a></li>
     <li><a href="viewtweetmanipulation.jsp">View Tweet Trending Topics </a></li>
     <li><a href="timevscount.jsp">Time vs Count Graph</a></li>
     <li><a href="usersvscount.jsp">Users vs Count Graph</a></li>
     <li><a href="manipulativeusers.jsp">Find Manipulative Users</a></li>
     <li><a href="results.jsp">View All Tweets Graph</a></li>
     <li><a href="admin.jsp">Logout</a></li>
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
    
