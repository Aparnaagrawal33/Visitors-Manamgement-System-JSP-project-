<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee_Details</title>

<style>
.html,body{
margin:0px;
}

#body{
width:1180px;

background-color:#D6EAF8;
margin-left:20px;
}

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
     
     
     #myBtn2{
    background-color: #1f618d;
    border: none;
    color: white;
    padding: 8px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    width:80px;
    height:40px;
}
#myBtn{
    background-color: #1f618d;
    border: none;
    color: white;
    padding: 8px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    width:80px;
    height:40px;
}

</style>

</head>

<body>


<table align="center" border="0" width="550px">
				
				<tr style="background-color: #555555;color:white;"><td align="right"><br/><br/>Select Date</td><td align="right"><br/><br/><input type="date" name="selectDate" /></td><td><br/><br/><input type="submit" value="Generate Report" name="btn2"class="button button2"></td><td  align="center"></td></tr>
			</table>
<br/>
<br/>

<table align="center" border="1" width="1350px" style="border-collapse:collapse;">
		<tr style="background-color:yellowgreen;color:white;"><th><b>Sl_no.</b></th><th><b>Name</b></th><th><b>Gender</b></th><th><b>Contact No.</b> </th><th><b>Address</b></th><th><b>Purpose</b></th><th><b>function</b></th><th><b>Company Spoc.</b></th><th><b>Laptop</b></th><th><b>model</b></th><th><b>Card No.</b></th><th><b>Entry Time</b></th><th><b>Exit Time</b></th><th><b>Status</b></th><th><b>Type</b></th><th><b>Date</b></th><th><b>Guard</b></th></tr>

		<%
			String sDate=session.getAttribute("srchDate").toString();
		%>
		<%@ page import="java.sql.*" %>
		<% 	
		try
		{
			Connection con=null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");

            Statement statement = con.createStatement(); 
            ResultSet resultset =  statement.executeQuery("select * from visitor_info1 where dt='"+sDate+"'") ; 
            while(resultset.next())
            {
            	 out.print("<tr>");
            	 out.print("<td>"+resultset.getString(1)+"</td>");
            	 out.print("<td>"+resultset.getString(2)+"</td>");
            	 out.print("<td>"+resultset.getString(3)+"</td>");
            	 out.print("<td>"+resultset.getString(4)+"</td>");
            	 out.print("<td>"+resultset.getString(5)+"</td>");
            	 out.print("<td>"+resultset.getString(6)+"</td>");
            	 out.print("<td>"+resultset.getString(7)+"</td>");
            	 out.print("<td>"+resultset.getString(8)+"</td>");
            	 out.print("<td>"+resultset.getString(9)+"</td>");
            	 out.print("<td>"+resultset.getString(10)+"</td>");
            	 out.print("<td>"+resultset.getString(11)+"</td>");
            	 out.print("<td>"+resultset.getString(12)+"</td>");
            	 out.print("<td>"+resultset.getString(13)+"</td>");
            	 out.print("<td>"+resultset.getString(14)+"</td>");
            	 out.print("<td>"+resultset.getString(15)+"</td>");
            	 out.print("<td>"+resultset.getString(16).substring(0,10)+"</td>");
            	 out.print("<td>"+resultset.getString(17)+"</td>");
				 out.print("</tr>");
                 }
          }
          catch(Exception e)
          {
          }

      %>
		</table>
