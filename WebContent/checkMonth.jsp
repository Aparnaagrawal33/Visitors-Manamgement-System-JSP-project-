<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>
	<%
	Connection con=null;
	String mnth="08";
	String id=null;
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
				PreparedStatement ps3=con.prepareStatement("select emp_id from employee_details1");
				ResultSet rs1 =ps3.executeQuery();
				while(rs1.next())
				{
						id=rs1.getString(1);
						PreparedStatement ps2=con.prepareStatement("select name from attendance1 where to_char(a_date,'mm')=? and emp_id=?");
						ps2.setString(1,mnth);
						ps2.setString(2,id.trim());
						ResultSet rs =ps2.executeQuery();
						while(rs.next())
						{
								out.print(rs.getString(1)+"\n");
						}
						out.print(rs1.getString(1)+"</br>");
				}
				
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