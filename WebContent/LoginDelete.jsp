<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
	 <%
					
						String id_new=request.getParameter("idn");
	 					//out.print(id_new);
						//out.print("<script>alert(id_new);</script>");
						Connection con1=null;
						try
						{
							
							Class.forName("oracle.jdbc.driver.OracleDriver");
							con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
							PreparedStatement ps1=con1.prepareStatement("delete from login where login_id='"+id_new+"'");
							
							int i = ps1.executeUpdate();
							if(i==1)
								response.sendRedirect("visitorDetail.jsp");
							//out.print("<script>alert('hii');</script>");
							
						}
						catch(Exception e3)
						{
							System.out.println(e3);
						}
						finally{
							con1.close();
						}
					
			 %>
	
	
	
	
</body>
</html>