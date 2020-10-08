<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Visitors Management System</title>
</head>
<body>
		<%@ page import="java.sql.*" %>
<%
		
			//String id=request.getParameter("id");
			int x=0;
			String uname=request.getParameter("uname");
			String pass=request.getParameter("pass");
			//out.print("Username :"+uname);
			//out.print("Password :"+pass);
			Connection con=null;
			try
			{
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","aparna","project");
				
				PreparedStatement ps=con.prepareStatement("select * from Login");
				
				ResultSet rs=ps.executeQuery();
				//out.print("Username :"+uname);
				//out.print("Password :"+pass);
				
				while(rs.next())
				{
				//	out.print(" "+rs.getString(1).trim());
					session.setAttribute("name",rs.getString(3));
					if(uname.equals(rs.getString(1).trim()) && pass.equals(rs.getString(2).trim()))
					{
						//out.print("hii");
						
						if(rs.getString(4).trim().equals("Admin"))
						{
							x=1;
							response.sendRedirect("visitorDetail.jsp");
							break;
						}
						else if(rs.getString(4).trim().equals("Guard"))
						{
							x=1;
							//out.print("hii");
							response.sendRedirect("editform.jsp");
							break;
						}
						else
						{
								
							 x=2;
						}
							
					}
					else{
					out.print("<script>alert('Invalid Username Or Password!!!');window.location.href='index.jsp';</script>");
					}
				}
				if(x==1)
				{
					%>
					<jsp:include page="editform.jsp"/>
					<% HttpSession s = request.getSession();%>
					<jsp:include page="Login.jsp"/>
				<%}
				
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			finally{
				con.close();
			}
		
		
%>
</body>
</html>