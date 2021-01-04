<title>profile pics</title><%@ include file="connect.jsp" %>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<%
	String type = request.getParameter("type");
	//String name = (String)application.getAttribute("name");
  	try{  
	     
		  if(type.equalsIgnoreCase("user"))
		{
		int id = Integer.parseInt(request.getParameter("id"));      
    	Statement st=connection.createStatement();
    	String strQuery = "select image from user where id='"+id+"'" ;
    	ResultSet rs = st.executeQuery(strQuery);
    	String imgLen="";
    	if(rs.next())
		{
      		imgLen = rs.getString(1);
     	}  
		
    	rs = st.executeQuery(strQuery);
    	if(rs.next())
		{
      		int len = imgLen.length();
		  	byte [] rb = new byte[len];
		  	InputStream readImg = rs.getBinaryStream(1);
		 	int index=readImg.read(rb, 0, len);  
		  	st.close();
		  	response.reset();
		  	response.getOutputStream().write(rb,0,len); 
		  	response.getOutputStream().flush();        
		}
		}
		
		else if(type.equalsIgnoreCase("tweet"))
		{
			int id = Integer.parseInt(request.getParameter("id"));
			Statement st=connection.createStatement();
			String strQuery = "select image from tweets where id="+id+"" ;
			ResultSet rs = st.executeQuery(strQuery);
			String imgLen="";
			if(rs.next())
			{
				imgLen = rs.getString(1);
			}  
			
			rs = st.executeQuery(strQuery);
			if(rs.next())
			{
				int len = imgLen.length();
				byte [] rb = new byte[len];
				InputStream readImg = rs.getBinaryStream(1);
				int index=readImg.read(rb, 0, len);  
				st.close();
				response.reset();
				response.getOutputStream().write(rb,0,len); 
				response.getOutputStream().flush();        
			}
			
		}
		
		
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>
</body>
</html>