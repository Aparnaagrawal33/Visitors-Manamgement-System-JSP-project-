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

			String id=request.getParameter("ID");
			String name=request.getParameter("Name");
			String gender=request.getParameter("eGender");
			String cont=request.getParameter("Contact");
			String add=request.getParameter("Address");
			String function=request.getParameter("Func");
			
			String []mon={"january","february","march","april","may","june","july","august","september","october","november","december"};
				Calendar cal=Calendar.getInstance();
			   int date=cal.get(Calendar.DATE);
			   int month=cal.get(Calendar.MONTH);
			   int year=cal.get(Calendar.YEAR);
			   
			   String Dt=date+"/"+mon[month]+"/"+year;
			out.print(id+"  "+name);
			Connection con=null;
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
			
				
				PreparedStatement ps2=con.prepareStatement("insert into employee_details values(?,?,?,?,?,?,?)");
				ps2.setString(1,id);
				ps2.setString(2,name);
				ps2.setString(3,gender);
				ps2.setString(4,cont);
				ps2.setString(5,add);
				ps2.setString(6,function);
				ps2.setString(7,Dt);
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