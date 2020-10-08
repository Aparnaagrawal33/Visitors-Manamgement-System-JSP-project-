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

</head>

<body>



<form action="Employee_details.jsp" method="post">
			<table align="center" border="0" width="650px">
				
				<tr style="background-color: #555555;color:white;"><td align="right">Emp. Name</td><td align="right"><input type="text" name="selectDate" /></td><td></td><td><input type="submit" value="Search" name="btn2" class="button button2"></td><td  align="center"></td></tr>
			</table>
			<br/><h2 align="center"></h2>
			
			</form>
<br/>
<br/>

<table align="center" border="1" width="1180px" style="border-collapse:collapse;">
		<tr style="background-color:yellowgreen;color:white;"><th><b>Emp_ID</b></th><th><b>Emp_Name</b></th><th><b>Gender</b></th><th><b>Emp_Contact No.</b> </th><th><b>Address</b></th><th><b>Function</b></th><th><b>Date</b></th></tr>

		<%@ page import="java.sql.*" %>
		<% 	
		int f=0;
		String act_n=request.getParameter("btn2");
		if(act_n== null){
			
		}else if(act_n.equals("Search")){
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
	            ResultSet resultset =  statement.executeQuery("select * from employee_details where entry_date between '"+fdate+"' and '"+tdate+"'") ; 
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
	            ResultSet resultset =  statement.executeQuery("select * from employee_details where name='"+cdate+"'") ; 
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
			
		}



      %>
     
		</table>
</div>
<br>
<br>
<table align="center">
<tr><td><button class="myBtn_multi" id="myBtn2">New</button></td>
	<td></td>
	<td><button  id="myBtn">Delete</button></td>
	
	
</table>

<!-- Trigger/Open The Modal -->
    <!--<button class="myBtn_multi button2">New</button>
    <button class="myBtn_multi button2">Update</button>-->

    <!-- The Modal -->
    <div class="modal modal_multi">
			 <div class="modal-header">
				<span class="close close_multi">×</span>
			<h2>New Entry</h2>
			</div>
   
        <!-- Modal content -->
        <div class="modal-content">
            <form action="saveFile.jsp" method="post">
   <table border="0px">
	  <tr>
		<TD><b>Emp.ID:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="ID" SIZE="35" required>
		    </TD>
		</tr>
		<tr>
		<TD><b>Name:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="Name" SIZE="35"  required>
		    </TD>
		</tr>
		<tr>
		<TD><b>Gender:</b></TD>
		<TD><b><LABEL><INPUT TYPE="RADIO" NAME="eGender" VALUE="Male">Male
		</label>&nbsp;&nbsp;&nbsp;<LABEL><INPUT TYPE="RADIO" NAME="eGender" VALUE="Female">Female</label>
		&nbsp;&nbsp;&nbsp; <label><Input type="radio" name="eGender" value="Others">Others </label></b></td>
		</tr>
		<tr><TD><b>Contact No.:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="Contact" SIZE="35" required>
		    </TD>
		</tr>
		<tr><TD><b>Address:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="Address" SIZE="35" required >
		    </TD>
		</tr>
		<tr><TD><b>Function:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="Func" SIZE="35"required>
		    </TD>
		</tr>
		
	</table>
		
		</div>
		<div class="modal-footer">
		<table align="right"><tr><td><input type="submit" value="Save" /></td></tr></table>
		</div>
</form>
    </div>

   <!-- The Modal -->
    <div class="modal modal_multi">
			 <div class="modal-header">
				<span class="close close_multi">×</span>
			<h2>New Entry</h2>
			</div>
   
        <!-- Modal content -->
        <div class="modal-content">
            <form action="saveFile.jsp" method="post">
   <table border="0px">
	  <tr>
		<TD><b>Emp.ID:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="ID" SIZE="35" required>
		    </TD>
		</tr>
		<tr>
		<TD><b>Name:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="Name" SIZE="35"  required>
		    </TD>
		</tr>
		<tr>
		<TD><b>Gender:</b></TD>
		<TD><b><LABEL><INPUT TYPE="RADIO" NAME="eGender" VALUE="Male">Male
		</label>&nbsp;&nbsp;&nbsp;<LABEL><INPUT TYPE="RADIO" NAME="eGender" VALUE="Female">Female</label>
		&nbsp;&nbsp;&nbsp; <label><Input type="radio" name="eGender" value="Others">Others </label></b></td>
		</tr>
		<tr><TD><b>Contact No.:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="Contact" SIZE="35" required>
		    </TD>
		</tr>
		<tr><TD><b>Address:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="Address" SIZE="35" required >
		    </TD>
		</tr>
		<tr><TD><b>Function:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="Func" SIZE="35"required>
		    </TD>
		</tr>
		
	</table>
		
		</div>
		<div class="modal-footer">
		<table align="right"><tr><td><input type="submit" value="Save" /></td></tr></table>
		</div>
</form>
    </div>

    <!-- Trigger/Open The Modal 
    <button id="myBtn" >Delete</button>-->

    <!-- The Modal -->
 <div id="myModal" class="modal">
	<form method="post" action="EmpUpdate.jsp">
        <!-- Modal content -->
        <div class="modal-header">
				<span class="close close_multi">×</span>
				<h2>Delete Employee Details</h2>
		</div>
		<div class="modal-content">
           
				<table border="0px">
					<tr>
						<TD><b>Emp.ID:</b></TD>
						<TD>
					 		 <INPUT TYPE="TEXT" NAME="idn" SIZE="35" required>
						</TD>
					</tr>
				</table>
		</div>
		<div class="modal-footer">
			<table align="right"><tr><td><input type="submit" name="act" value="Delete"/></td></tr></table>
		</div>
		</form>
	
</div>
    <script>
        // Get the modal

        var modalparent = document.getElementsByClassName("modal_multi");

        // Get the button that opens the modal

        var modal_btn_multi = document.getElementsByClassName("myBtn_multi");

        // Get the <span> element that closes the modal
        var span_close_multi = document.getElementsByClassName("close_multi");

        // When the user clicks the button, open the modal
        function setDataIndex() {

            for (i = 0; i < modal_btn_multi.length; i++)
            {
                modal_btn_multi[i].setAttribute('data-index', i);
                modalparent[i].setAttribute('data-index', i);
                span_close_multi[i].setAttribute('data-index', i);
            }
        }



        for (i = 0; i < modal_btn_multi.length; i++)
        {
            modal_btn_multi[i].onclick = function() {
                var ElementIndex = this.getAttribute('data-index');
                modalparent[ElementIndex].style.display = "block";
            };

            // When the user clicks on <span> (x), close the modal
            span_close_multi[i].onclick = function() {
                var ElementIndex = this.getAttribute('data-index');
                modalparent[ElementIndex].style.display = "none";
            };

        }

        window.onload = function() {

            setDataIndex();
        };

        window.onclick = function(event) {
            if (event.target === modalparent[event.target.getAttribute('data-index')]) {
                modalparent[event.target.getAttribute('data-index')].style.display = "none";
            }

            // OLD CODE
            if (event.target === modal) {
                modal.style.display = "none";
            }
        };

//XXXXXXXXXXXXXXXXXXXXXXX    Modified old code    XXXXXXXXXXXXXXXXXXXXXXXXXX

// Get the modal

        var modal = document.getElementById('myModal');

// Get the button that opens the modal
        var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
        var span = modal.getElementsByClassName("close")[0]; // Modified by dsones uk

// When the user clicks on the button, open the modal

        btn.onclick = function() {

            modal.style.display = "block";
        }

// When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }



    </script>
  <form  method="post" action="Employee_details.jsp">  
 <table align="center" border="0" width="550px">
				
				<tr><th align="right">Employee ID</th><th align="right"><input type="text" name="eid" /></th><th><input type="submit" value="Search For Update" name="srch" class="button button2"></th></tr>
				</form>
				<form action="updateEmployee.jsp" method="post">
			 <% 
				String act_new=request.getParameter("srch");
				if(act_new == null){
					
				}else if(act_new.equals("Search For Update")){
					
					
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
					
					<tr><td>Emp. ID</td><td colspan="2"><input type="text" name="emid" value="<%=rs.getString(1)%>"></td></tr>
					<tr><td>Name</td><td colspan="2"><%=rs.getString(2)%></td></tr>
					<tr><td>Gender</td><td colspan="2"><%=rs.getString(3)%></td></tr>
					<tr><td>Contact No.</td><td colspan="2"><input type="text" name="cont" value="<%=rs.getString(4)%>"></td></tr>
					<tr><td>Address</td><td colspan="2"><input type="text" name="add" value="<%=rs.getString(5)%>"></td></tr>
					<tr><td>Function</td><td colspan="2"><input type="text" name="func" value="<%=rs.getString(6)%>"></td></tr>
						<tr><td style="width:200px;"></td><td></td><td colspan="3" ><input type="submit" value="Update" name="upd" class="button button2"></td></tr>
						</form>
					<%
					}
					}
					catch(Exception e){}
					
				}
		
				%>

			
		
			</table>
			
			
			
				
</body>
</html>


