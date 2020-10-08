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
    background-color:#1f618d;
}


</style>
<script>
			window.history.forward();
			function noBack(){ window.history.forward();}
			


			function yesnoCheck() {
			    if (document.getElementById("yesCheck").checked) {
			        document.getElementById("ifYes").style.visibility = "visible";
			    }
			    else document.getElementById("ifYes").style.visibility = "hidden";

			}

			
</script>

</head>
<body onload="noBack();"background="aircel.jpg" style="background-repeat: no-repeat; background-position: center; height:100%;  background-size:cover;" onpageshow="if (event.persisted) noBack();">

<%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>
<%
	int id=0;
String id_new=null;
int idb=0;
String ida=null;
Calendar cal=Calendar.getInstance();
   int date=cal.get(Calendar.DATE);
   int month=cal.get(Calendar.MONTH)+1;
   int year=cal.get(Calendar.YEAR);
   
   String Dt=date+"/"+month+"/"+year;
   session.setAttribute("Date",Dt);
   
  	String systime= cal.get(Calendar.HOUR_OF_DAY)+":"+cal.get(Calendar.MINUTE)+":"+cal.get(Calendar.SECOND);
  	session.setAttribute("TIME",systime);
   String sl="P176100001";
   //int num=100001;
   String y=String.valueOf(year);
%>

<ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a  href="Contact.jsp">Contact</a></li>
  <li><a href="About.jsp">About</a></li>
    <li><a href="index.jsp">Logout</a></li>
    <li><a href="editform.jsp">Back</a></li>
</ul>

<br>
<br>
<table><tr><td>
<table><tr><td>
 <form  method="post" action="#">  
 	<table align="left" border="0" width="650px" height="80px">
				
				<tr ><th align="right">Emp. ID</th><th align="right"><input type="text" name="eid" /></th><th><input type="submit" value="Search" name="srch" class="button button2"></th></tr>
	</table>
</form>
<table height="400px" width="650px">
 <% 
				String act_new=request.getParameter("srch");
				if(act_new == null){
					
				}else if(act_new.equals("Search")){
					
					
					String lid=request.getParameter("eid");
					session.setAttribute("emid",lid);
					try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
					String query = "select * from employee_details where emp_id='"+lid+"'";
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(query);
					if(rs.next()){
					%>
					
					<form  method="post" action="EmployeeEntry.jsp">  
 
					<tr><td>Name</td><td colspan="2"><input type="text" name="cname" value="<%=rs.getString(2)%>" readonly></td><td></td></tr>
					<tr><td>Gender</td><td colspan="2"><%=rs.getString(3)%></td><td></td></tr>
					<tr><td>Contact No.</td><td colspan="2"><%=rs.getString(4)%></td><td></td></tr>
					<tr><td>Address</td><td colspan="2"><%=rs.getString(5)%></td><td></td></tr>
					<tr><td>Function</td><td colspan="2"><input type="text" name="func" value="<%=rs.getString(6)%>" readonly></td><td></td></tr>
					<tr><TD>Laptop:</TD>
						<TD colspan="2"><LABEL>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="RADIO" NAME="eLaptop" onclick="javascript:yesnoCheck();" id="yesCheck" VALUE="Yes">Yes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</label><LABEL><INPUT TYPE="RADIO" NAME="eLaptop" VALUE="No" onclick="javascript:yesnoCheck();" id="yesCheck">No</label>
						</td><td></td>
					</tr>
					<tr id="ifYes" style="visibility:hidden" colspan="2">	
						<td>
        					Model No.</td><td><input type="text"  name="yes" size="20">
        				</td>
        				<td>
        					Serial no.</td><td><input type="text"  name="sno" size="20">
        					</td>
     				</tr>
     				
     	
					<tr><td ></td><td  ALIGN="right"><input type="submit" value="Save" name="upd" class="button button2"></td><td></td><td></td></tr>
						</form>
					<%
					}
					else{
						out.print("<script>alert('entered id does not exist!!');window.location.href='EmployeeSection.jsp';</script>");
						
					}
					}
					catch(Exception e){
							
					}
					
				}
		
				%>
			</td></tr>
		</table>
		</td>
		<td>
			
		<table>
<tr>
<td>
<FIELDSET style="width:520px;height:480px;"><LEGEND><strong>Employees Inside</strong></LEGEND>
<script>
function myFunction() {
    var txt;
    var r = confirm("Are You Sure ??");
    if (r == true) {
      
      
        
        
        var checkboxes = document.getElementsByName('chkout[]');
        var vals = "";
        for (var i=0, n=checkboxes.length;i<n;i++) 
        {
            if (checkboxes[i].checked) 
            {
                vals += " "+checkboxes[i].value;
            }
        }
        
        txt = "You pressed OK!"+vals;
        var jspcall = "EmpCheckout.jsp?cur_id="+vals;
        window.location.href = jspcall;
    } else {
        txt = "You pressed Cancel!";
        
    }
    document.getElementById("demo").innerHTML = txt;
}
</script>
<div class="myBox">

	<table border="1px" rules="columns" tr:nth-child(even) background-color: #D1F2EB">
		<tr style="background-color:#1f618d;color:white;">
			<th>Emp.ID</th><th>Name</th><TH>function</th><th>Laptop</th><th>model no.</th><th>Serial no.</th><th>In time</th><th>Out Time</th><th>Date</th><th>Select</th>
		</tr>
		<%@ page import="java.sql.*" %>
		<% 	
		Connection con1=null;
		try
		{
		
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");

            Statement statement = con1.createStatement(); 
            ResultSet resultset =  statement.executeQuery("select * from employee_info1 where status='true'") ; 
            
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
            	 //out.print("<td>"+resultset.getString(10)+"</td>");
            	 
            	 out.print("<td><input type='checkbox' style='background-color:#000000;' name='chkout[]' id='chk1' onclick='myFunction();' value='"+resultset.getString(1)+"'></td>");
            	 out.print("</tr>");
                 }
            
          }
          catch(Exception e)
          {
        		System.out.println(e);
			}
			
			finally{
				con1.close();
			}

      %>
		
			
			
			</td></tr></table>
					
		
				
</body>
</html>