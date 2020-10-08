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
        
        </style>

</head>

<body onload="noBack();">

<form action="loginData.jsp" method="post">
			<table align="center" border="0" width="550px">
				
				<tr style="background-color: #555555;color:white;"><td align="right"><br/><br/>Select Date</td><td align="right"><br/><br/><input type="date" name="selectDate" /></td><td><br/><br/><input type="submit" value="Generate Report" name="btn2"class="button button2"></td><td  align="center"></td></tr>
			</table>
</form>
<br/>
<br/>

<table align="center" border="1" width="1180px" style="border-collapse:collapse;">
		<tr style="background-color:yellowgreen;color:white;"><th><b>Login ID</b></th><th><b>Password</b></th><th><b>Name</b></th><th><b>Type</b></th><th><b>Date</b></th></tr>

		<%@ page import="java.sql.*" %>
		<% 
		int f=0;
		String act_n=request.getParameter("btn2");
		if(act_n== null){
			
		}
		else if(act_n.equals("Generate Report")){
			f=1;
		}
		
		if(f==0)
		{

		
		try
		{
			Connection con=null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");

            Statement statement = con.createStatement(); 
            ResultSet resultset =  statement.executeQuery("select * from login") ; 
            while(resultset.next())
            {
            	 out.print("<tr>");
            	 out.print("<td>"+resultset.getString(1)+"</td>");
            	 out.print("<td>"+resultset.getString(2)+"</td>");
            	 out.print("<td>"+resultset.getString(3)+"</td>");
            	 out.print("<td>"+resultset.getString(4)+"</td>");
            	 out.print("<td>"+resultset.getString(5).substring(0,10)+"</td>");
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
	            ResultSet resultset =  statement.executeQuery("select * from login where current_date='"+cdate+"'") ; 
	            while(resultset.next())
	            {
	            	 out.print("<tr>");
	            	 out.print("<td>"+resultset.getString(1)+"</td>");
	            	 out.print("<td>"+resultset.getString(2)+"</td>");
	            	 out.print("<td>"+resultset.getString(3)+"</td>");
	            	 out.print("<td>"+resultset.getString(4)+"</td>");
	            	 out.print("<td>"+resultset.getString(5).substring(0,10)+"</td>");
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
		<td><button  id="myBtn">Delete</button></td>
	
</table>

<!-- Trigger/Open The Modal -->
    <!--<button class="myBtn_multi button2">New</button>
    <button class="myBtn_multi button2">Update</button>-->

    <!-- The Modal -->
    <div class="modal modal_multi">
			 <div class="modal-header">
				<span class="close close_multi">×</span>
			<h2>New  Entry</h2>
			</div>
   
        <!-- Modal content -->
        <div class="modal-content">
            <form action="saveLoginNew.jsp" method="post">
   <table border="0px">
	  <tr>
		<TD><b>Login.ID:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="ID" SIZE="35" required>
		    </TD>
		</tr>
		<tr>
		<TD><b>Password:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="pass" SIZE="35"  required>
		    </TD>
		</tr>
		
		<tr><TD><b>Name:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="name" SIZE="35" required>
		    </TD>
		</tr>
		<tr><TD><b>type:</b></TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="type" SIZE="35" required>
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
    <div  class="modal modal_multi">

        <!-- Modal content -->
		<div class="modal-header">
			<span class="close close_multi">×</span>
			<h2>Update Login Details</h2>
		</div>
			
		<div class="modal-content">
            <form action="saveLoginNew.jsp">
				<table border="0px">
				<tr>
				<TD><b>Login.ID:</b></TD>
					<TD>
					  <INPUT TYPE="TEXT" NAME="ID" SIZE="35" required>
					</TD>
					<td><input type="submit" value="search" ></td>
				</tr>
				
				<tr>
				<TD><b>Password:</b></TD>
					<TD>
					  <INPUT TYPE="TEXT" NAME="pass" SIZE="35"required>
					</TD>
				</tr>
				
				<tr><TD><b>Name:</b></TD>
					<TD>
					  <INPUT TYPE="TEXT" NAME="name" SIZE="35"required>
					</TD>
				</tr>
				
				<tr><TD><b>Type:</b></TD>
					<TD>
					  <INPUT TYPE="TEXT" NAME="type" SIZE="35"required>
					</TD>
				</tr>
			</table>
		</form>
	</div>
	<div class="modal-footer">
		<table align="right"><tr><td><button name="new">Save</button></td></tr></table>
	</div>
</div>

    <!-- Trigger/Open The Modal 
    <button id="myBtn" >Delete</button>-->

    <!-- The Modal -->
 <div id="myModal" class="modal">
	<form method="post" action="LoginDelete.jsp">
        <!-- Modal content -->
        <div class="modal-header">
				<span class="close close_multi">×</span>
				<h2>Delete Details</h2>
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
    
      <form  method="post" action="loginData.jsp">  
 <table align="center" border="0" width="550px">
				
				<tr><th align="right">Login ID</th><th align="right"><input type="text" name="eid" /></th><th><input type="submit" value="Search For Update" name="srch" class="button button2"></th></tr>
				</form>
				<form action="UpdateLogin.jsp" method="post">
			 <% 
				String act_new=request.getParameter("srch");
				if(act_new == null){
					
				}else if(act_new.equals("Search For Update")){
					
					
					String lid=request.getParameter("eid");
					session.setAttribute("emid",lid);
					try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
					String query = "select * from login where login_id='"+lid+"'";
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(query);
					if(rs.next()){
					%>
					
					
					<tr><td>Password</td><td colspan="2"><input type="text" name="pass" value="<%=rs.getString(2)%>"></td></tr>
					<tr><td>Name</td><td colspan="2"><%=rs.getString(3)%></td></tr>
					<tr><td>Type</td><td colspan="2"><%=rs.getString(4)%></td></tr>
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
