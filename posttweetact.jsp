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
String name=null;     
String description=null;
FileInputStream fs=null;
File file1 = null;	

String user=session.getAttribute("user").toString();
try {
        MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
        Enumeration params = multi.getParameterNames();
        while (params.hasMoreElements()) 
        {
                paramname = (String) params.nextElement();

                
                if(paramname.equalsIgnoreCase("name"))
                {
                        name=multi.getParameter(paramname);
                }
                if(paramname.equalsIgnoreCase("description"))
                {
                        description=multi.getParameter(paramname);
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

        String query1="select * from tweets where tweetname='"+name+"'"; 
        Statement st1=connection.createStatement();
        ResultSet rs1=st1.executeQuery(query1);


if ( rs1.next() )
   {
                out.print("Post Already Exist");

                %>
                <p><a href="user.jsp">Click here to Login</a>  <br /><br />       
                <a href="index.html">Home</a> </p>


                <%
   }
   else
   {
       SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
                SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

                Date now = new Date();

                String strDate = sdfDate.format(now);
                String strTime = sdfTime.format(now);
                String dt=strDate+" "+strTime;
       
        PreparedStatement ps=connection.prepareStatement("insert into tweets(username,tweetname,description,image,dt) values(?,?,?,?,?)");
        ps.setString(1,user);
        ps.setString(2,name);
        ps.setString(3,description);
        ps.setBinaryStream(4, (InputStream)fs, (int)(file1.length()));		
        ps.setString(5,dt);
       int x=ps.executeUpdate();
       if(x>0)
       {
       response.sendRedirect("posttweet.jsp?m1=sucess");
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
