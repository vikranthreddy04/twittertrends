<%-- 
    Document   : admin_login_process
    Created on : 1 Apr, 2016, 2:37:27 PM
    Author     : Malli
--%>

<%

                        try {

                            String username = request.getParameter("username");
                            String password = request.getParameter("password");

                            System.out.println("the username is " + username);
                            System.out.println("the password is " + password);

                            if ((username.equals("admin") ) && (password.equals("admin"))) {

                                response.sendRedirect("adminhome.jsp?msg=success");

                            } else {

                    %>

                    User Details Given for Username : <%=request.getParameter("username")%> is Not Registered/Valid
                    <br>

                        Please Try Again

                        <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
