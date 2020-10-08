<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Visitors Management System</title>
</head>
<body>
		<%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>
		
			<%
					String act=request.getParameter("act");
					if(act == null){
						
					}else if(act.equals("Save")){
						//out.print("Sign in button clicked !");
						//response.sendRedirect("Visitor_info.jsp");
						
						int id=0;
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
						out.print(sl_no+"  "+uname+" "+gender+" "+contact+ " "+address+" "+purpose+" "+function+" "+comp_spoc+" "+laptop+" "+model+" "+Card+" "+entry_time+" "+" "+currDate);
						Connection con=null;
						try
						{
							Class.forName("oracle.jdbc.driver.OracleDriver");
							con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
						
							
							PreparedStatement ps=con.prepareStatement("insert into visitor_info values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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

					}else if(act.equals("Reset")){
						//out.print("Sign up button clicked !");	
						//response.sendRedirect("Reset.jsp");
						out.print("<script>function myFunction(){document.getElementById('myForm').reset();}</script>");
					}
					else if(act.equals("Exit")){
						//out.print("Sign up button clicked !");	
						response.sendRedirect("index.jsp");
					}
			
			 %>
		
</body>
</html>