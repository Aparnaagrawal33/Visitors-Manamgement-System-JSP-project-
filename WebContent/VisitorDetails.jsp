<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Visitor_Details</title>
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
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
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
.blink_text {

    animation:1s blinker linear infinite;
    -webkit-animation:1s blinker linear infinite;
    -moz-animation:1s blinker linear infinite;

     color: red;
    }

    @-moz-keyframes blinker {  
     0% { opacity: 1.0; }
     50% { opacity: 0.0; }
     100% { opacity: 1.0; }
     }

    @-webkit-keyframes blinker {  
     0% { opacity: 1.0; }
     50% { opacity: 0.0; }
     100% { opacity: 1.0; }
     }

    @keyframes blinker {  
     0% { opacity: 1.0; }
     50% { opacity: 0.0; }
     100% { opacity: 1.0; }
     }
     
    
     
</style>
</head>
<body onload="noBack();">
<body style="background-color:#aed6f1">
<ul>
  <li><a class="active" href="#home">Home</a></li>

  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">About</a></li>
    <li><a href="#news">Logout</a></li>
</ul>

<%
/*String sessn=session.getAttribute("date").toString();
if(sessn.equals(null)){}
else
{
	out.print("<script>alert('Please select  valid date!');</script>");
}*/
	String srchDate=request.getParameter("selectDate");
	session.setAttribute("srchDate",srchDate);

%>
<form action="Searchbydate.jsp">
	<table width="100%" >
		<tr><td>
			<img src="logo.png" style="height:80px;width:150px;"/>
		</td></tr>
		<tr><td >
			<table align="center" border="0" width="550px">
				<tr style="background-color: #008CBA;color:white;"><td></td><td></td><td colspan="2"></td></tr>
				<tr style="background-color: #555555;color:white;"><td align="right"><br/><br/>Select Date</td><td align="right"><br/><br/><input type="date" name="selectDate" /></td><td><br/><br/><input type="submit" value="Generate Report" name="btn2"class="button button2"></td><td  align="center"></td></tr>
			</table>
		</td></tr>
	</table>
	<br/>
	<br/>
		<table align="center" border="1" width="1300px" style="border-collapse:collapse;">
		<tr style="background-color:yellowgreen;color:white;"><th><b>SL No.</b></th><th><b>Name</b></th><th><b>Gender</b></th><th><b>Contact</b> </th><th><b>Address</b></th><th><b>Purpose</b></th><th><b>Function</b></th><th><b>Company spoc.</b></th><th><b>Laptop</b></th><th><b>Laptop Model no</b></th><th><b>Card No.</b></th><th><b>Entry Time</b></th><th><b>Exit Time</b></th><th><b>Date</b></th></tr>
		
	<%@ page import="java.sql.*" %>
		<% 	
		try
		{
			Connection con=null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");

            Statement statement = con.createStatement(); 
            ResultSet resultset =  statement.executeQuery("select * from Visitor_info") ; 
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
            	 out.print("</tr>");
                 }
          }
          catch(Exception e)
          {
          }

      %>
      <% session.getAttribute("msg" );
      
     
      %>

	</table>
	</form>
	
		
</body>
</html>