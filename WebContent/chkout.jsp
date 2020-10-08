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
String id=null;
String chk_out=null;
String[] hobbies=request.getParameterValues("chkout");
int flag=0;
Calendar cal=Calendar.getInstance();
chk_out= cal.get(Calendar.HOUR_OF_DAY)+":"+cal.get(Calendar.MINUTE)+":"+cal.get(Calendar.SECOND);
 if(hobbies!=null)
 {
	 for(int i=0;i<hobbies.length;i++)
	 {
		
		 out.print("hii"+hobbies[i]);
		 break;
	 }
	
 }
 else
 {
	 out.print("error"+hobbies);
 }
 
	 Connection con=null;
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
		PreparedStatement ps=con.prepareStatement("update visitor_info1 set Exittime=?,status=? where sl_no=?");
		ps.setString(1,chk_out);
		ps.setString(2,"false");
	
		int i=ps.executeUpdate();
	//out.print("hii");
		if(i==1)
		{
			out.print(i+" record updated!");
			response.sendRedirect("form.jsp");
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