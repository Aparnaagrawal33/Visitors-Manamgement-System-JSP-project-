<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
input[type=text], select {
    width: 100%;
    padding: 8px 12px;
    margin: 6px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

div {
    border-radius: 5px;
    background-color: #aed6f1;
    
}


</style>

<script>
function yesnoCheck_first() {
    if (document.getElementById("yesCheck_first").checked) {
        document.getElementById("ifYes_first").style.visibility = "visible";
    }
    else document.getElementById("ifYes_first").style.visibility = "hidden";

}


function myFunction() {
    document.getElementById("myForm").reset();
}

</script>
</head>
<body style="background-color:#aed6f1">
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
				//out.print("hiii");
			//id=Integer.parseInt(id_new);
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
	<%
					String act=request.getParameter("act");
					if(act == null){
						
					}else if(act.equals("Save")){
						//response.sendRedirect("index.jsp");
						int id1=0;
						String sl_no=session.getAttribute("srl1").toString();
						String uname=request.getParameter("Name");
						String gender=request.getParameter("Gender");
						String contact=request.getParameter("Contact");
						String address=request.getParameter("Address");
						String purpose=request.getParameter("Purpose");
						String function=request.getParameter("Function");
						String comp_spoc=request.getParameter("comp_spoc");
						String laptop=request.getParameter("eLaptop");
						String model=request.getParameter("yes_first");
						String Card=request.getParameter("Card_No");
						String entry_time=session.getAttribute("TIME").toString();
						//String exit_time=session.getAttribute(" TIME").toString();
						String currDate=session.getAttribute("Date").toString();
						String status="false";
						//out.print(sl_no+"  "+uname+" "+gender+" "+contact+ " "+address+" "+purpose+" "+function+" "+comp_spoc+" "+laptop+" "+model+" "+Card+" "+entry_time+" "+" "+currDate);
						Connection con1=null;
						try
						{
							Class.forName("oracle.jdbc.driver.OracleDriver");
							con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
						
							
							PreparedStatement ps=con.prepareStatement("insert into visitor_info1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
							ps.setString(1,sl_no);
							ps.setString(2,uname);
							ps.setString(3,gender);
							ps.setString(4,contact);
							ps.setString(5,address);
							ps.setString(6,purpose);
							ps.setString(7,function);
							ps.setString(8,comp_spoc);
							ps.setString(9,laptop);
							ps.setString(10,model);
							ps.setString(11,Card);
							ps.setString(12,entry_time);
							ps.setString(13,null);
							ps.setString(14,currDate);
							ps.setString(15,status);
							
							int i=ps.executeUpdate();
							//out.print("hii");
							if(i==1)
							{
								out.print(i+" record updated!");
								response.sendRedirect("form.jsp");
							}
							else
							System.out.println("error !");
							
						}
						catch(Exception e)
						{
							System.out.println(e);
						}
						
						finally{
							con.close();
						}

					}
				else if(act.equals("Reset")){
					//out.print("Sign up button clicked !");	
					//response.sendRedirect("Reset.jsp");
					out.print("<script>function myFunction(){document.getElementById('myForm').reset();}</script>");
				}
				else if(act.equals("Exit")){
					//out.print("Sign up button clicked !");	
					response.sendRedirect("index.jsp");
				}
	%>
  <form method="post" >
<table border="0" align="center" width="100%" height="100px">
<tr><td width="100px"><img src="logo.png" style="height:80px;width:150px;"/></td></table>


<fieldset style="width:1175px; align:center;"><legend><strong></strong></legend>
<table width="550px"align="center" border="0px" id="tb">
	<tr><td float="center"><% out.print( "<h3 >"+"Date:" +Dt+"</h3>");%>
	<td float="left"><b></td><td><%out.print("<h3>"+"Serial No."+srl+"</h3>");%></td><td float="right"><% out.print("<h3>"+"welcome :"+session.getAttribute("name")+"</h3>");%></td><td></td></tr>
	
</table>
</fieldset>

<div>
	<FIELDSET style="width:1175px; align:center"><LEGEND><strong>Details</strong></LEGEND>
	<table border="0" cellspacing="0" cellpadding="5" height="0px" width="0px" align="center">
		<tr>
		<TD>Name:</TD>
		    <TD>
		      <INPUT TYPE="TEXT" name="Name" SIZE="27">
		    </TD>
		</tr>
		<tr>
		<tr>
		<TD>Gender:</TD>
		<TD><LABEL><INPUT TYPE="RADIO" NAME="Gender" CHECKED VALUE="Male">Male</label>
		&nbsp;&nbsp;&nbsp;<LABEL><INPUT TYPE="RADIO" NAME="Gender" VALUE="Female">Female</label>
		&nbsp;&nbsp;&nbsp;<label><Input type="radio" name="Gender" value="Others">Others </label></td>
		</tr>
		
		<TD>Contact:</TD>
		    <TD>
		      <INPUT TYPE="TEXT" name="Contact" SIZE="27">
		    </TD>
		</tr>
		<tr>
		<TD>Address:</TD>
		    <TD>
		      <textarea NAME="Address" cols="40" rows="4"></textarea>
		    </TD>
		</tr>
		<tr>
		<TD>Purpose:</TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="Purpose" SIZE="27">
		    </TD>
		</tr>
		<tr>
		<TD>Function:</td>
		       <td><select style="width:310px"; name="Function">
				<option value="function">Function</option>
				<option value=""></option>
				<option value=""></option>
				<option value=""></option>
			  </select>
		    </TD>
		</tr>
		
		<tr>
		<TD>Company Spoc:</TD>
		    <TD>
		      <!--<INPUT TYPE="TEXT" NAME="Company Spoc" placeholder="Company Spoc." SIZE="35">-->
			  <select style="width:310px;" name="comp_spoc">
				<option value="companyyyy">Company spoc.</option>
				<option value=""></option>
				<option value=""></option>
				<option value=""></option>
			  </select>
			</TD>
		</tr>
		<tr>
			<TD>Laptop:</TD>
			<TD><LABEL>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="RADIO" NAME="eLaptop" onclick="javascript:yesnoCheck_first();" id="yesCheck_first" VALUE="Yes">Yes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</label><LABEL><INPUT TYPE="RADIO" NAME="eLaptop" VALUE="No" onclick="javascript:yesnoCheck_first();" id="yesCheck_first">No</label>
			</td>
		</tr>
		<tr id="ifYes_first" style="visibility:hidden">	
			<td>
			Model No.</td><td><input type="text" id="yes" name="yes_first"></td>
     	</tr>
     	<tr>
     		<td>Card No.</td>
     		<td><input type="text" name="Card_No" size="27"></td>
		</tr>
		<tr>
			<TD>Entry Time:</td>
		     <td><input type="text" id="yes" name="yes_first" enable="false" value="<%out.print(systime); %>"></td>
		</tr>
	</table>
</fieldset>

</div>
 <table width="350px" height="150px" align="center" border="0" id="tb">
	<tr><td><input type="submit" value="Save" name="act" id="btn1"/></td><td><input type="submit" value="Reset" name="act" id="btn2"/></td><td><input type="submit" value="Exit" name="act" id="btn2"/></td></tr>
</table>
</form>


		
</body>
</html>