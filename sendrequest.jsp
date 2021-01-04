<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%
    String username = session.getAttribute("user").toString();
     String fname = request.getParameter("fname"); 
     String gender = request.getParameter("gender");
      String location = request.getParameter("location");
      try{
    String sql="SELECT * FROM friendrequest where fname='"+fname+"' and uname='"+username+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);        
                                if(rs.next()){
                                
                                response.sendRedirect("searchfriend.jsp?m2=Already Request Sent");  
                                }        
                                        
                                else { 
        //Statement st = co.createStatement();
        PreparedStatement ps1=connection.prepareStatement("insert into friendrequest (uname,fname,gender,location) values ('"+username+"','"+fname+"','"+gender+"','"+location+"')");
        int i=ps1.executeUpdate();
        if(i>0)
        {
      response.sendRedirect("searchfriend.jsp?m1=sucess");
  }
                                }
  %>
    
  
  
    <%

                }
               
        
        catch(Exception e)
        {
                out.println(e.getMessage());
        }
        %>