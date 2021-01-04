<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%
    String category = request.getParameter("category"); 
     String words = request.getParameter("words");
      try{
    
        //Statement st = co.createStatement();
        PreparedStatement ps1=connection.prepareStatement("insert into tweetfilters (category,words) values ('"+category+"','"+words+"')");
        int i=ps1.executeUpdate();
        if(i>0)
        {
      response.sendRedirect("addtweetfilters.jsp?m1=sucess");
  }
                                
  %>
    
  
  
    <%

                }
               
        
        catch(Exception e)
        {
                out.println(e.getMessage());
        }
        %>