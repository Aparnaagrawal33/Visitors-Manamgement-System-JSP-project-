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

/* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left:300px;
            top: 10px;
			bottom:50px;
            width: 700px; /* Full width */
            height: 500px; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            overflow: auto;
        }
		.modal-header {
			margin: auto;
			background-color: #1f618d;
			padding: 20px;
			color: white;
			width: 80%;
		}
		.modal-footer {
			padding: 20px ;
			background-color:  #1f618d;
			color: white;
			width:80%;
			margin:auto;
			height:25px;
		}


        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
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

</head>

<body onload="noBack();">


<table align="center" border="0" width="550px">
				
				<tr style="background-color: #555555;color:white;"><td align="right"><br/><br/>Select Date</td><td align="right"><br/><br/><input type="date" name="selectDate" /></td><td><br/><br/><input type="submit" value="Generate Report" name="btn2"class="button button2"></td><td  align="center"></td></tr>
			</table>
<br/>
<br/>
<table align="center" border="1" width="1180px" style="border-collapse:collapse;">
		<tr style="background-color:yellowgreen;color:white;"><th><b>Emp_ID</b></th><th><b>Emp_Name</b></th><th><b>Gender</b></th><th><b>Emp_Contact No.</b> </th><th><b>Address</b></th><th><b>Function</b></th><th><b>Date</b></th></tr>

		<%@ page import="java.sql.*" %>
		<% 	
		try
		{
			Connection con=null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");

            Statement statement = con.createStatement(); 
            ResultSet resultset =  statement.executeQuery("select * from employee_details") ; 
            while(resultset.next())
            {
            	 out.print("<tr>");
            	 out.print("<td>"+resultset.getString(1)+"</td>");
            	 out.print("<td>"+resultset.getString(2)+"</td>");
            	 out.print("<td>"+resultset.getString(3)+"</td>");
            	 out.print("<td>"+resultset.getString(4)+"</td>");
            	 out.print("<td>"+resultset.getString(5)+"</td>");
            	 out.print("<td>"+resultset.getString(6)+"</td>");
            	 out.print("<td>"+resultset.getString(7).substring(0,10)+"</td>");
             	 out.print("</tr>");
                 }
          }
          catch(Exception e)
          {
          }

      %>
     
		</table>
</div>
<br>
<br>

			
			
				
</body>
</html>


