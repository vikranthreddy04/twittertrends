<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
    try{
       
      int  uid=0;
        
      String query1="select * from user where username='"+username+"' and password='"+password+"' and status='Activated'"; 
      Statement st1=connection.createStatement();
      ResultSet rs=st1.executeQuery(query1);
      
	if(rs.next())
        {
         uid=rs.getInt("id");
         String  user = rs.getString(2);
            session.setAttribute("user",user);
            session.setAttribute("uid", uid);
            System.out.println("User:"+username);
            
                  
         response.sendRedirect("userhome.jsp?msg=success");
        }
       else 
        {
            response.sendRedirect("user.jsp?m1=LoginFail");
        }
	}
    
        catch(Exception e)
        {
        System.out.println("Error in studentact"+e.getMessage());
        }
%>