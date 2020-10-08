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

			String emid=session.getAttribute("emid").toString();
			String name=request.getParameter("cname");
			String fun=request.getParameter("func");
			String lappy=request.getParameter("eLaptop");
			String m_no=request.getParameter("yes");
			String s_no= request.getParameter("sno");
			String systime=session.getAttribute("TIME").toString();
			//String Dt=session.getAttribute("Date").toString();
			   
			
			//out.print(emid+"+"+lappy+"+"+m_no+"+"+systime+"+"+Dt);
			String []mon={"january","february","march","april","may","june","july","august","september","october","november","december"};
				Calendar cal=Calendar.getInstance();
			   int date=cal.get(Calendar.DATE);
			   int month=cal.get(Calendar.MONTH);
			   int year=cal.get(Calendar.YEAR);
			   
			   String Dt=date+"/"+mon[month]+"/"+year;
			//out.print(emid+"  "+name+fun+lappy+m_no+s_no+systime+Dt);
			Connection con=null;
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
			
				
				PreparedStatement ps2=con.prepareStatement("insert into employee_info1 values(?,?,?,?,?,?,?,?,?,?)");
				ps2.setString(1,emid);
				ps2.setString(2,name);
				ps2.setString(3,fun);
				ps2.setString(4,lappy);
				ps2.setString(5,m_no);
				ps2.setString(6,s_no);
				ps2.setString(7,systime);
				ps2.setString(8,"");
				ps2.setString(9,Dt);
				ps2.setString(10,"true");
				int i=ps2.executeUpdate();
				//out.print(emid+"  "+name+fun+lappy+m_no+s_no+systime+Dt);

				PreparedStatement ps3=con.prepareStatement("insert into attendance1 values(?,?,?)");
				ps3.setString(1,emid);
				ps3.setString(2,name);
				ps3.setString(3,Dt);
				int j=ps3.executeUpdate();
				
				//out.print("hii");
				if(i==1)
				{
					out.print(i+" record updated!");
					response.sendRedirect("EmployeeSection.jsp");
				}
				else
				{
					response.sendRedirect("<script>alert('Error');window.location.href='EmployeeSection.jsp';</script>");
				}
				
			}
			catch(Exception e)
			{
				out.println("<script>alert('User already has been checked in..');window.location.href='EmployeeSection.jsp';</script>");
			}
			
			finally{
				con.close();
			}
%>
			



</body>
</html>