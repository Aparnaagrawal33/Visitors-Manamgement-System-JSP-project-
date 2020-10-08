<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Registration form</title>

<style>
.html,body{
margin:0px;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    width:100%;
}

li {
    float: left;
    
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 10px 40px;
    text-decoration: none;
    font-size:15px;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #1f618d;
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

#btn2{
	width:200px;
	height:50px;
	background-color:##2980B9;
	color:#ffffff;
	font-size:20px;
}

.myBox {
border: none;
padding: 5px;
font: 14px/26px sans-serif;
width: 780px;
height: 430px;
overflow: scroll;
border-collapse:collapse;
}
th, td {
    text-align: center;
    padding: 7px;
}


th {
    background-color: #1f618d;
    color: white;
}
     }


/* Scrollbar styles */
::-webkit-scrollbar {
width: 12px;
height: 12px;
}

::-webkit-scrollbar-track {
border-radius: 10px;
width: 2px;
border: #2980B9;
}

::-webkit-scrollbar-thumb {
background: #2980B9; 
border-radius: 10px;
}
::-webkit-scrollbar-thumb:hover {
background: #2980B9;  
}

.squaredOne {
  width: 15px;
  height: 15px;
  position: relative;
  margin: 20px auto;
  background-color: #32CD32;
  } 
input[type="checkbox"] {
        background-color: #32CD32;
      border: #7f83a2 1px solid;
   }
</style>
<script language="Javascript">

function yesnoCheck() {
    if (document.getElementById("yesCheck").checked) {
        document.getElementById("ifYes").style.visibility = "visible";
    }
    else document.getElementById("ifYes").style.visibility = "hidden";

}
function hideB()
{
	document.getElementById("B").style.visibility="hidden";
	document.getElementById("C").style.visibility="hidden";
    document.getElementById("A").style.visibility="visible";
    
}
function hideA()
{
    document.getElementById("A").style.visibility="hidden";
    document.getElementById("B").style.visibility="visible";
	document.getElementById("C").style.visibility="visible";
    

}
function test()
{
		var x= document.getElementById("emp_id");
		alert('hii');
		document.getElementById("name").value = x;
}
</script>
<script>
			window.history.forward();
			function noBack(){ window.history.forward();}
			
			</script>

</head>
<body background="aircel.jpg" style="background-repeat: no-repeat; background-position: center; background-size:cover;" onload="noBack();" onpageshow="if (event.persisted) noBack();">

<% 

//out.print("hello "+request.getAttribute("empName")); %>
<ul>
  	<li><a class="active" href="index.jsp">Home</a></li>
	<li><a href="Contact.jsp">Contact</a></li>
  	<li><a href="Report.jsp">Report</a></li>
    <li><a href="index.jsp">Logout</a></li>
    <li><a href="About.jsp">About</a></li>
</ul>
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
   Connection con=null;
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
	
		
		PreparedStatement ps1=con.prepareStatement("Select sl_no from visitor_info1");
		ResultSet rs1=ps1.executeQuery();
		
		while(rs1.next())
		{
			
			 //id_new=rs1.getString(1).trim().substring(4);
				ida=rs1.getString(1);
				idb=Integer.parseInt(ida.substring(4));
			
			//id=Integer.parseInt(id_new);
		}
		if(ida==null)
		{
			idb=10000;
			//out.print("<script>alert(' '.ida)</script>");
		}
		idb++;
	}
	catch(Exception e)
	{
	}
	finally
	{
		con.close();
	}
	
  String srl="P"+y.substring(2,4)+String.valueOf(month)+String.valueOf(idb);
  session.setAttribute("srl1",srl);
%>
<form method="get" id="MyForm" action="Visitor_info.jsp">




<table><tr><td width="650px">

<h2 align="center"><b><u>Visitor's Entry Form</u></b></h2>
	<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="4"  width="550px" height="90px" >
	<tr><td><LABEL><b><INPUT TYPE="RADIO" NAME="visitor" VALUE="Visitors" onClick="hideA();" >Visitors</b></LABEL></td>
	<td><LABEL><b><INPUT TYPE="RADIO" NAME="visitor" VALUE="Vendors" onClick="hideA();">Company Vendors</b></LABEL></td>
	<td><LABEL><b><INPUT TYPE="RADIO" NAME="visitor" VALUE="offroleEmp" onClick="window.location='EmployeeSection.jsp'">Company Employee</b></LABEL></td></tr>
	</TABLE>
	
	<table border="0" cellspacing="0" cellpadding="5" >
	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
	
		<tr>
		<TD>Name:</TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="ename" SIZE="37"  id="name" onclick="disp()" required>
		    </TD>
		</tr>
		<tr>
		<TD>Gender:</TD>
		<TD><LABEL><INPUT TYPE="RADIO" NAME="eGender" CHECKED VALUE="Male">Male
		</label>&nbsp;&nbsp;&nbsp;<LABEL><INPUT TYPE="RADIO" NAME="eGender" VALUE="Female">Female</label>
		&nbsp;&nbsp;&nbsp; <label><Input type="radio" name="eGender" value="Others">Others </label></td>
		</tr>
		<tr>
		<TD>Mobile:</TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="eContact" SIZE="37" required>
		    </TD>
		</tr>
		<tr>
		<TD>Address:</TD>
		    <TD>
		      <textarea NAME="eAddress" cols="32" rows="4" required></textarea>
		    </TD>
		</tr>
		<tr  id="B">
		<TD>Purpose:</TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="epurpose" SIZE="37" required>
		    </TD>
		</tr>
		
		
		<tr >
		<TD>Function:</TD>
		    <TD>
		       <select style="width:277px;" name="func">
				<option value="eFunction">Tower Management</option>
				<option value="eFunction">Customer Care</option>
				<option value="eFunction">Sales And Distribution</option>
				<option value="eFunction">Marketing</option>
				<option value="eFunction">Commercial</option>
				<option value="eFunction">Law and Management</option>
				<option value="eFunction">IT</option>
			  </select>
		    </TD>
		</tr>
		
		<tr  id="C">
		<TD>Company Spoc.:</TD>
		    <TD>
		       <select style="width:277px;" name="comSpoc">
				<option value="Rajiv Kumar">Rajiv Kumar</option>
				<option value="Aman Gupta"> Aman Gupta</option>
				<option value="Jitendra Singh">Jitendra Singh</option>
				<option value="Govind Jha">Govind Jha</option>
				<option value="Anjali singh">Anjali singh</option>
				<option value="Anushka Sinha">Anushka Sinha</option>
				<option value="Ajay Kumar">Ajay Kumar</option>
				
				<option value=""></option>
			  </select>
		    </TD>
		</tr>
		
		
		<tr>
		<TD>Laptop:</TD>
		<TD><LABEL>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="RADIO" NAME="eLaptop" onclick="javascript:yesnoCheck();" id="yesCheck" VALUE="Yes">Yes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</label><LABEL><INPUT TYPE="RADIO" NAME="eLaptop" VALUE="No" onclick="javascript:yesnoCheck();" id="yesCheck">No</label>
			</td>
		</tr>
		<tr id="ifYes" style="visibility:hidden">	
			<td>Model No.</td><td><input type="text" name="yes" size="20"></td>
         	<td>Serial No.</td><td><input type="text"  name="s_no" size="20">
        	</td>
     	
     	</tr>
     	<tr><td>Card No.</td>
     	<td><input type="text" name="eCardNo" size="37"></td>
			</tr>
				
     	<tr>
		<TD>Entry Time:</td>
		      <td><INPUT TYPE="text" NAME="eEntry Time" value="<% out.print(systime);%>" SIZE="8">&nbsp;&nbsp;&nbsp;&nbsp;</TD>
		</tr>
		
	</table>
</td>
<td>
<h2 align="center"><b><u>Visitor's Currently Inside</u></b></h2>
<table width="800px" height="90px" align="center" border="0px" id="tb">
	<tr><td ><% out.print( "<h3 >"+"Date:" +Dt+"</h3>");%>
	<td float="left"><b></td><td><%out.print("<h3>"+"Serial No."+srl+"</h3>");%></td><td float="right"><% out.print("<h3>"+"welcome :"+session.getAttribute("name")+"</h3>");%></td><td></td></tr>
	
	</table>

<table>
<tr>
<td>
<FIELDSET style="width:520px;height:460px;"><LEGEND><strong >Visitors Inside</strong></LEGEND>
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
              
                alert(vals);
            }
        }
        
        txt = "You pressed OK!"+vals;
        var jspcall = "checkBoxAction.jsp?cur_id="+vals;
        window.location.href = jspcall;
    } else {
        txt = "You pressed Cancel!";
        
    }
    document.getElementById("demo").innerHTML = txt;
}
</script>
<div class="myBox">

	<table border="1px" rules=columns tr:nth-child(even) background-color: #D1F2EB">
		<tr style="background-color:#1f618d;color:white;">
			<th>SL No.</th><th>Card no.</th><th>Name</th><th>function</th><th>Spoc.</th><th>In time</th><th>Out Time</th><th>Laptop</th><th>Model No.</th><th>Serial No.</th><th>Type</th><th>Select</th>
		</tr>
		<%@ page import="java.sql.*" %>
		<% 	
		Connection con1=null;
		try
		{
		
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");

            Statement statement = con1.createStatement(); 
            ResultSet resultset =  statement.executeQuery("select * from Visitor_info1 where status='false'") ; 
            
            while(resultset.next())
            {
            	 out.print("<tr>");
            	 out.print("<td>"+resultset.getString(1)+"</td>");
            	 out.print("<td>"+resultset.getString(12)+"</td>");
            	 out.print("<td>"+resultset.getString(2)+"</td>");
            	 out.print("<td>"+resultset.getString(7)+"</td>");
            	 out.print("<td>"+resultset.getString(8)+"</td>");
            	 out.print("<td>"+resultset.getString(13)+"</td>");
            	 out.print("<td>"+resultset.getString(14)+"</td>");
            	 out.print("<td>"+resultset.getString(9)+"</td>");
            	 out.print("<td>"+resultset.getString(10)+"</td>");
            	 out.print("<td>"+resultset.getString(11)+"</td>"); 
            	 out.print("<td>"+resultset.getString(16)+"</td>");
            	 out.print("<td><input type='checkbox' style='background-color:#000000;' name='chkout[]' id='chk1' onclick='myFunction();' value='"+resultset.getString(1)+"'</td>");
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
		
	</table>
</div>
</fieldset>
	
	</td>
	</tr>
	</table></td>

</tr></table>


<table width="500px" height="150px" align="left" border="0" id="tb">
	
	<tr><td></td><td></td><td></td><td></td><td><input type="submit"  value="Save" name="act" id="btn1" style= "font-size:25px" /></td></tr>
	
	</table>
</form>
<script>

	
	//document.getElementById("name").value="priya";
	
	
</script>	
</body>
</html>