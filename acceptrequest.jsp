<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

  <%

        String user=session.getAttribute("user").toString();
        String r = request.getParameter("idd");
        String fname = request.getParameter("fname");
        String uname = request.getParameter("uname");
        String gender = request.getParameter("gender");
        String location = request.getParameter("location");
        try {

            Statement st=connection.createStatement();
            int j = st.executeUpdate("update friendrequest set status='Accepted' where uname='"+uname+"' and fname='"+fname+"'");


            PreparedStatement ps1=connection.prepareStatement("insert into friendrequest (uname,fname,gender,location,status) values ('"+user+"','"+uname+"','"+gender+"','"+location+"','Accepted')");
            int i=ps1.executeUpdate();
if(i>0)
            {
               response.sendRedirect("viewfriendreq.jsp?message=success");
            }
                              
                             else {
                                out.println(" failed");
                            }
                                                      } catch (Exception e) {
                                    e.printStackTrace();
                                }

                        %>