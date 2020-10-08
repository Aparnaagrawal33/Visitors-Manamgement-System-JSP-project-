<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aman C-DAC PATNA</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
		
			String id=request.getParameter("id");
			String uname=request.getParameter("uname");
			String pass=request.getParameter("pass");
			Connection con=null;
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aman","cdac");
				PreparedStatement ps=con.prepareStatement("insert into userInfo values(?,?,?)");
				ps.setString(1,id);
				ps.setString(2,uname);
				ps.setString(3,pass);
				//ps.setInt(3,pass);
				int i=ps.executeUpdate();
				if(i==1)
				{
					response.sendRedirect("index.jsp");
				}
				else
				{
					out.print("Error !");
				}
				//out.print(i+" record updated!");
				//System.out.println(i+" record updated!");
				
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			finally{
				con.close();
			}
		
		
%>
</body>
</html>