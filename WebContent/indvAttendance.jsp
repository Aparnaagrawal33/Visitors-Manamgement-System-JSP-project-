<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

table {
    border-collapse: collapse;
    
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #1f618d;
    color: white;
}
     
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 8px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
	
}
.button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
	border-radius: 12px;
}

.button2:hover {
    background-color: #555555;
    color: white;
}

</style>
<body>
<table align="center" border="0" width="450px" height="80px">
				
				<tr><th align="right">Emp. ID</th><th>Name</th><th>Date</th></tr>
			   
	
	<%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>
	<%
	String id=request.getParameter("eid");
	String mnth=request.getParameter("month");
	Connection con=null;
	int cnt=0;
	
			try
			{
						
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
				
						PreparedStatement ps2=con.prepareStatement("select  emp_id,name,a_date from attendance1 where to_char(a_date,'mm')=? and emp_id=?");
						ps2.setString(1,mnth);
						ps2.setString(2,id.trim());
						ResultSet rs =ps2.executeQuery();
						while(rs.next())
						{
							 out.print("<tr>");
			            	 out.print("<td>"+rs.getString(1)+"</td>");
			            	 out.print("<td>"+rs.getString(2)+"</td>");
			            	 out.print("<td>"+rs.getString(3).substring(0,10)+"</td>");
			            	 out.print("<tr>");
			            	cnt++;
						}
						out.print("<tr><th colspan='3'>total attendance :"+cnt+"</th></tr>");
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