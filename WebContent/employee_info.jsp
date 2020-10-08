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
		
			
			String sl_no=request.getParameter("  ");
			String emp_id=request.getParameter("  ");
			String uname=request.getParameter("Name");
			String gender=request.getParameter("Gender");
			String contact=request.getParameter("Contact");
			String address=request.getParameter("Address");
			String purpose=request.getParameter("Purpose");
			String function=request.getParameter("  ");
			String comp_spoc=request.getParameter("  ");
			String laptop=request.getParameter("Laptop");
			String model=request.getParameter("    ");
			String entry_time=request.getParameter("Entry Time");
			String exit_time=request.getParameter("Exit Time");
			String date=request.getParameter("   ");
			
			Connection con=null;
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","priya","project");
				PreparedStatement ps=con.prepareStatement("insert into employee_info values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1,sl_no);
				ps.setString(2,emp_id);
				ps.setString(3,uname);
				ps.setString(4,gender);
				ps.setString(5,contact);
				ps.setString(6,address);
				ps.setString(7,purpose);
				ps.setString(8,function);
				ps.setString(9,comp_spoc);
				ps.setString(10,laptop);
				ps.setString(11,model);
				ps.setString(12,entry_time);
				ps.setString(13,exit_time);
				ps.setString(14,date);
			
				int i=ps.executeUpdate();
				
			
				//sout.print(i+" record updated!");
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


</body>
</html>