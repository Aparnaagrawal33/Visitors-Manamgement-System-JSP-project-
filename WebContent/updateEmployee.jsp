<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
			String emid=request.getParameter("emid");
			String contact=request.getParameter("cont");
			String address=request.getParameter("add");
			String function=request.getParameter("func");
			String empid=session.getAttribute("emid").toString();
			out.print(empid.trim());
			Connection con=null;
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
			
				
				PreparedStatement ps2=con.prepareStatement("update employee_details set emp_id='"+emid+"',contact='"+contact+"',address='"+address+"',department='"+function+"' where emp_id='"+empid+"'");
		
				int i=ps2.executeUpdate();
				//out.print("hii");
				if(i==1)
				{
					out.print(i+" record updated!");
					response.sendRedirect("visitorDetail.jsp");
				}
				else
				System.out.println("error !");
				
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