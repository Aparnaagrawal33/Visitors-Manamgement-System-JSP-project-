<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="100px" height="50px" align="center">
<tr><td><select name="uname" style="margin-left:10px;">
	<%@ page import="java.sql.*" %>
<%
		
			//String id=request.getParameter("id");
			int flag=0;
			
			Connection con=null;
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aman","cdac");
				PreparedStatement ps=con.prepareStatement("select * from userInfo");
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					//out.print("<tr><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr>");
					out.print("<option value='rs.getString(2)'>"+rs.getString(2)+"</option>");
					
				}
				
				out.print("</td></tr>");
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			finally{
				con.close();
			}
		
		
%>
</table>
</body>
</html>