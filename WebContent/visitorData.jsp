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

<form action="visitorData.jsp" method="post">
			<table align="center" border="0" width="650px">
				
				<tr style="background-color: #555555;color:white;"><td align="right">Enter Date</td><td align="right"><input type="text" name="selectDate" /></td><td>#format(28-july-2017)</td><td><input type="submit" value="Generate Report" name="btn2" class="button button2"></td><td  align="center"></td></tr>
			</table>
			<br/><h2 align="center">or</h2>
			<table align="center" border="0" width="850px">
				
				<tr style="background-color: #555555;color:white;"><td align="right">From</td><td align="right"><input type="text" name="frm" /></td><td align="right">To</td><td align="right"><input type="text" name="todt" /></td><td>#format(28-july-2017)</td><td><input type="submit" value="View Report" name="btn2" class="button button2"></td><td  align="center"></td></tr>
			</table>
			
			</form>
<br/>
<br/>

<table align="center" border="1" width="1500px" style="border-collapse:collapse;">
		<tr style="background-color:yellowgreen;color:white;"><th><b>Sl_no.</b></th><th><b>Name</b></th><th><b>Gender</b></th><th><b>Contact No.</b> </th><th><b>Address</b></th><th><b>Purpose</b></th><th><b>function</b></th><th><b>Company Spoc.</b></th><th><b>Laptop</b></th><th><b>model</b></th><th>Serial No.</th><th><b>Card No.</b></th><th><b>Entry Time</b></th><th><b>Exit Time</b></th><th><b>Status</b></th><th><b>Type</b></th><th><b>Date</b></th><th><b>Guard</b></th></tr>

		<%@ page import="java.sql.*" %>
		<% 	
		
		int f=0;
		int cnt=0;
		String act_n=request.getParameter("btn2");
		if(act_n== null){
			
		}
		else if(act_n.equals("Generate Report")){
			f=1;
		}
		else if(act_n.equals("View Report")){
			f=2;
		}

		if(f==0)
		{
		try
		{
			Connection con=null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");

            Statement statement = con.createStatement(); 
            ResultSet resultset =  statement.executeQuery("select * from visitor_info1") ; 
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
            	 out.print("<td>"+resultset.getString(16)+"</td>");
            	 out.print("<td>"+resultset.getString(17).substring(0,10)+"</td>");
            	 out.print("<td>"+resultset.getString(18)+"</td>");
				 out.print("</tr>");
				 cnt++;
                 }
            out.print("<tr><th colspan='18'>Total no. of Visitors :"+cnt+"</th></tr>");
    		
          }
          catch(Exception e)
          {
          }
		}
		if(f==2)
		{
		
			try
			{
				String fdate=request.getParameter("frm");
				String tdate=request.getParameter("todt");
				Connection con=null;
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");

	            Statement statement = con.createStatement(); 
	            ResultSet resultset =  statement.executeQuery("select * from visitor_info1 where dt between '"+fdate+"' and '"+tdate+"'") ; 
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
	            	 out.print("<td>"+resultset.getString(16)+"</td>");
	            	 out.print("<td>"+resultset.getString(17).substring(0,10)+"</td>");
	            	 out.print("<td>"+resultset.getString(18)+"</td>");
					 out.print("</tr>");
					 cnt++;
	                 }
	            out.print("<tr><th colspan='18'>Total no. of Visitors :"+cnt+"</th></tr>");
	            
	          }
	          catch(Exception e)
	          {
	          }
			
		}
		if(f==1)
		{
		
			try
			{
				String cdate=request.getParameter("selectDate");
				Connection con=null;
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");

	            Statement statement = con.createStatement(); 
	            ResultSet resultset =  statement.executeQuery("select * from visitor_info1 where dt='"+cdate+"'") ; 
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
	            	 out.print("<td>"+resultset.getString(16)+"</td>");
	            	 out.print("<td>"+resultset.getString(17).substring(0,10)+"</td>");
	            	 out.print("<td>"+resultset.getString(18)+"</td>");
	            	 
					 out.print("</tr>");
					 cnt++;
	                 }
	            out.print("<tr><th colspan='18'>Total no. of Visitors :"+cnt+"</th></tr>");
	            
	          }
	          catch(Exception e)
	          {
	          }
			
		}


      %>
		</table>
		
		
