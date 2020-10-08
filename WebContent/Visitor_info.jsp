<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.io.*,java.util.Calendar, javax.servlet.*,java.sql.*,java.util.Date" %>
<%
			//String sl_no="P176100001";
String []mon={"january","february","march","april","may","june","july","august","september","october","november","december"};
Calendar cal=Calendar.getInstance();
int date=cal.get(Calendar.DATE);
int month=cal.get(Calendar.MONTH);
int year=cal.get(Calendar.YEAR);

String Dt=date+"/"+mon[month]+"/"+year;

			String guard=session.getAttribute("name").toString();
			String btn=request.getParameter("act");
			String vst=request.getParameter("visitor");
			int id=0;
			String sl_no=session.getAttribute("srl1").toString();
			String uname=request.getParameter("ename");
			String gender=request.getParameter("eGender");
			String contact=request.getParameter("eContact");
			String address=request.getParameter("eAddress");
			String purpose=request.getParameter("epurpose");
			String function=request.getParameter("func");
			String comp_spoc=request.getParameter("comSpoc");
			String laptop=request.getParameter("eLaptop");
			String model=request.getParameter("yes");
			String serial=request.getParameter("s_no");
			String Card=request.getParameter("eCardNo");
			String entry_time=request.getParameter("eEntry Time");
			//String exit_time=session.getAttribute(" TIME").toString();
			//String currDate=session.getAttribute("Date").toString();
			String status="false";
			out.print(sl_no+"  "+uname+" "+gender+" "+contact+ " "+address+" "+purpose+" "+function+" "+comp_spoc+" "+laptop+" "+model+" "+Card+" "+entry_time+" "+" "+Dt);
			Connection con=null;
			if(vst.equals("Visitors"))
			{
				try
				{
					
						
					Class.forName("oracle.jdbc.driver.OracleDriver");
					con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
				
					
					PreparedStatement ps=con.prepareStatement("insert into visitor_info1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
					ps.setString(11,serial);
					ps.setString(12,Card);
					ps.setString(13,entry_time);
					ps.setString(14,"false");
					ps.setString(15,status);
					ps.setString(16,vst);
					ps.setString(17,Dt);
					ps.setString(18,guard);
					
					int i=ps.executeUpdate();
					//out.print("hii");
					if(i==1)
					{
						out.print(i+" record updated!");
						response.sendRedirect("editform.jsp");
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
			else if(vst.equals("Vendors"))
			{
				try
				{
					Class.forName("oracle.jdbc.driver.OracleDriver");
					con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
				
					
					PreparedStatement ps=con.prepareStatement("insert into visitor_info1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
					ps.setString(11,serial);
					ps.setString(12,Card);
					ps.setString(13,entry_time);
					ps.setString(14,"false");
					ps.setString(15,status);
					ps.setString(16,vst);
					ps.setString(17,Dt);
					ps.setString(18,guard);
					
					int i=ps.executeUpdate();
					//out.print("hii");
					if(i==1)
					{
						out.print(i+" record updated!");
						response.sendRedirect("editform.jsp");
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
						
		
%>

	
</body>
</html>