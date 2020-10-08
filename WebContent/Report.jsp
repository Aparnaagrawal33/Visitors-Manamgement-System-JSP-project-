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
    background-color: #1f618d;
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

<ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a  href="Contact.jsp">Contact</a></li>
  <li><a href="About.jsp">About</a></li>
    <li><a href="editform.jsp">Exit</a></li>
</ul>

<%
/*String sessn=session.getAttribute("date").toString();
if(sessn.equals(null)){}
else
{
	out.print("<script>alert('Please select  valid date!');</script>");
}*/


%>

<form method="post">
	
	<table width="100%" >
		
		<tr><td >
			<table align="center" border="0" width="750px">
				
				<tr style="background-color: #ffffff;color:white;"><td><input type="submit" value="Visitors" name="act" class="button button2"></td><td><input type="submit" value="Attendance" name="act" class="button button2"></td></tr>
			</table>
		</td></tr>
		<tr><td >
			
		</td></tr>
	</table>
	</form>
	

		<%
					String act=request.getParameter("act");
					if(act == null){
						
					}else if(act.equals("Visitors"))
					{
						%>
						<%@include file="visitorData.jsp" %>
						
						<%
						//out.print("<script>alert('Sign in button clicked !');</script>");
						
					}
					else if(act.equals("Attendance"))
					{
						%>
						<%@include file="attendance.jsp" %>
						
						<%
					}
					
					
	 %>
	
</body>
</html>