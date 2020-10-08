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
     
    #btn1
	{
	 display: block;
    height: 50px;
    margin-bottom: 10px;
    text-align: center;
    line-height: 50px;
    width: 150px;
    margin: 20px;

    color: #FFF;
    text-align: center;
    border: solid #427AA8 1px;
    border-radius: 5px;
    text-decoration: none;

    /* Gradient */
    background: #427AA8;
    background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIxJSIgc3RvcC1jb2xvcj0iIzU5YTNlMCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiM0MjdhYTgiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
    background: -moz-linear-gradient(top,  #59A3E0 1%, #427AA8 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(1%,#59A3E0), color-stop(100%,#427AA8));
    background: -webkit-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: -o-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: -ms-linear-gradient(top,  #59A3E0 1%,#427AA8 100%);
    background: linear-gradient(to bottom,  #59A3E0 1%,#427AA8 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#59A3E0', endColorstr='#427AA8',GradientType=0 );

    text-shadow: 1px 1px 0 rgba(0,0,0,0.25);
    box-shadow: 0 1px 0 rgba(255,255,255, 0.3), inset 0 1px 0 rgba(255,255,255, 0.3);
}

.button:hover {
    background: #59A3E0;
    text-decoration: none;
    filter: none;
}
    
     
</style>
<script>
			window.history.forward();
			function noBack(){ window.history.forward();}
			
			</script>
</head>
<body onload="noBack();">

<ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a  href="Contact.jsp">Contact</a></li>
  <li><a href="About.jsp">About</a></li>
    <li><a href="index.jsp">Logout</a></li>
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
				
				<tr style="background-color: #ffffff;color:white;"><td><input type="submit" value="VisitorsDetails" name="act" class="button button2"></td><td ><input type="submit" value="EmployeeDetails" name="act" class="button button2"></td><td><input type="submit" value="Attendance" name="act" class="button button2"></td><td><input type="submit" value="LoginDetails" name="act" class="button button2"></td></tr>
			</table>
		</td></tr>
		<tr><td >
			
		</td></tr>
	</table>
	</form>
	

		<%
					String act=request.getParameter("act");
					if(act == null){
						
					}else if(act.equals("EmployeeDetails"))
					{
						%>
						<%@include file="Employee_details.jsp" %>
						
						<%
						//out.print("<script>alert('Sign in button clicked !');</script>");
						
					}else if(act.equals("VisitorsDetails"))
					{
						%>
						<%@include file="visitorData.jsp" %>
						
						<%
					}
					else if(act.equals("LoginDetails"))
					{
						%>
						<%@include file="loginData.jsp" %>
						
						<%
					}
					else if(act.equals("Attendance"))
					{
						%>
						<%@include file="attendance1.jsp" %>
						<%
					}
					
					
					else if(act.equals("Reset")){
						//out.print("Sign up button clicked !");	
						response.sendRedirect("Reset.jsp");
					}
					else if(act.equals("Exit")){
						//out.print("Sign up button clicked !");	
						response.sendRedirect("Index.jsp");
					}
			
	 %>
	
</body>
</html>