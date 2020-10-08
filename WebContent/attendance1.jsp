<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

<script>
			window.history.forward();
			function noBack(){ window.history.forward();}
</script>

</head>
<body>

<form  method="post" action="#">  
 	<table align="center" border="0" width="450px" height="80px">
				
				<tr><th align="right">Emp. ID</th><th><input type="text" name="eid" /></th>
				
				<Th>Month:</th>
				    <th>
				       <select style="width:277px;height:25px;" name="month" >
				       <option >Select</option>
						<option value="01">January</option>
						<option value="02">February</option>
						<option value="03">March</option>
						<option value="04">April</option>
						<option value="05">May</option>
						<option value="06">June</option>
						<option value="07">July</option>
						<option value="08">August</option>
					  	<option value="09">September</option>
						<option value="10">October</option>
						<option value="11">November</option>
						<option value="12">December</option>
					  </select>
				    </Th>
				    <th><input type="submit" value="Search" name="srch" class="button button2"></th></tr>
				    
				    </table>
				    
				    <br>
				    <br>	   
	
	<%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>
	<%
	String id=request.getParameter("eid");
	String mnth=request.getParameter("month");
	//out.print(id + mnth);
	int f=0;
	String act_n=request.getParameter("srch");
		if(act_n== null)
		{
			
		}
		else if(act_n.equals("Search"))
		{
			f=1;
		}
		
	Connection con=null;
	int cnt=0;
	if(f==1)
	{
	%>
		<table align="center" border="0" width="450px" height="80px">
		<tr><th align="right">Emp. ID</th><th>Name</th><th>Date</th></tr>

			<% try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
				
						PreparedStatement ps2=con.prepareStatement("select distinct emp_id,name,a_date from attendance1 where to_char(a_date,'mm')=? and emp_id=?");
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
				System.out.print(e);
			}%>
	</table><% 
	}
	if(f==0)
	{%>
	<table align="center" border="0" width="450px" height="80px">
			<tr><th align="right">Emp. ID</th><th>January</th><th>February</th><th>March</th><th>April</th><th>May</th><th>June</th><th>July</th><th>August</th><th>September</th><th>October</th><th>November</th><th>December</th></tr>
	<%
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
					PreparedStatement ps2=con.prepareStatement("select emp_id from employee_details");
					ResultSet rs1=ps2.executeQuery();
					while(rs1.next())
					{
						String eid=rs1.getString(1);
						String month="01";
						int mon=Integer.parseInt(month);
						//out.print(mon);
						out.print("<tr>");
						out.print("<td>"+eid+"</td>");
						while(mon<=12)
						{
							if(mon<10)
								month="0"+String.valueOf(mon);
							//out.print(month);
							else
								month=String.valueOf(mon);
							PreparedStatement ps=con.prepareStatement("select distinct emp_id,name,a_date from attendance1 where to_char(a_date,'mm')=? and emp_id=?");
							ps.setString(1,month);
							ps.setString(2,eid.trim());
							ResultSet rs2 =ps.executeQuery();
							cnt=0;
							while(rs2.next())
							{
		            			cnt++;
							}
							out.print("<td>"+cnt+"</td>");
					    	mon=Integer.parseInt(month);
							mon++;
							//out.print(mon);
						}
					}
					
			}
		catch(Exception e)
		{
			System.out.print(e);
		}%>
		</table>
		<%
	}
%>			
</form>

</body>
</html>