<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%
String cid=request.getParameter("cur_id");
if(cid!=null){
    out.println(cid);
}
int flag=0;
Calendar cal=Calendar.getInstance();
 String chk_out= cal.get(Calendar.HOUR_OF_DAY)+":"+cal.get(Calendar.MINUTE)+":"+cal.get(Calendar.SECOND);
	 Connection con=null;
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
		PreparedStatement ps=con.prepareStatement("delete from employee_info1  where empid=?");
		ps.setString(1,cid.trim());
		int i=ps.executeUpdate();
		out.print("value of  i :"+i);
		if(i>=1)
		{
			//out.print(i+" record updated!");
			response.sendRedirect("EmployeeSection.jsp");
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