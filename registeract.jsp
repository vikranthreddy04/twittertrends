<title>Insert Data</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
ArrayList list = new ArrayList();
ServletContext context = getServletContext();
String dirName =context.getRealPath("Gallery\\");
String paramname=null;
String file=null;
String a=null,b=null,c=null,d=null,image=null;
String ee[]=null;
String checkBok=" ";
int ff=0;
String bin = "";
String username=null;     
String password=null;
String email=null;
String mno=null;
String dob=null;
String gender=null;
String addr=null;



FileInputStream fs=null;
File file1 = null;	

try {
        MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
        Enumeration params = multi.getParameterNames();
        while (params.hasMoreElements()) 
        {
                paramname = (String) params.nextElement();

                if(paramname.equalsIgnoreCase("username"))
                {
                        username=multi.getParameter(paramname);
                }
                if(paramname.equalsIgnoreCase("password"))
                {
                        password=multi.getParameter(paramname);
                }
                
                if(paramname.equalsIgnoreCase("email"))
                {
                        email=multi.getParameter(paramname);
                }
                
                if(paramname.equalsIgnoreCase("dob"))
                {
                        dob=multi.getParameter(paramname);
                }
                if(paramname.equalsIgnoreCase("gender"))
                {
                        gender=multi.getParameter(paramname);
                }

                if(paramname.equalsIgnoreCase("address"))
                {
                        addr=multi.getParameter(paramname);
                }
                if(paramname.equalsIgnoreCase("mobile"))
                {
                        mno=multi.getParameter(paramname);
                }
 
                if(paramname.equalsIgnoreCase("pic"))
                {
                        image=multi.getParameter(paramname);
                }

}

int f = 0;
Enumeration files = multi.getFileNames();	
while (files.hasMoreElements()) 
{
        paramname = (String) files.nextElement();

        if(paramname != null)
        {
                f = 1;
                image = multi.getFilesystemName(paramname);
                String fPath = context.getRealPath("Gallery\\"+image);
                file1 = new File(fPath);
                fs = new FileInputStream(file1);
                list.add(fs);

                String ss=fPath;
                FileInputStream fis = new FileInputStream(ss);
                StringBuffer sb1=new StringBuffer();
                
                }		
        }
        FileInputStream fs1 = null;
        //name=dirName+"\\Gallery\\"+image;
        int lyke=0;
        //String as="0";
        //image = image.replace(".", "_b.");

        String query1="select * from user  where username='"+username+"'"; 
        Statement st1=connection.createStatement();
        ResultSet rs1=st1.executeQuery(query1);


if ( rs1.next() )
   {
                out.print("User Name Already Exist");

                %>
                <p><a href="user.jsp">Click here to Login</a>  <br /><br />       <a href="index.html">Home</a> </p>


                <%
   }
   else
   {
                PreparedStatement ps=connection.prepareStatement("insert into user(username,password,email,dob,gender,address,mobile,image) values(?,?,?,?,?,?,?,?)");

        ps.setString(1,username);
        ps.setString(2,password);
        ps.setString(3,email);
        ps.setString(4,dob);
        ps.setString(5,gender);
        ps.setString(6,addr);	
        ps.setString(7,mno);
        ps.setBinaryStream(8, (InputStream)fs, (int)(file1.length()));	
//		ps.setString(11,sk);		

       int x=ps.executeUpdate();
        if(x>0)
        {
      response.sendRedirect("user.jsp?msg=sucess");
  }
  %>
			<%
					  
			   }
		}
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
