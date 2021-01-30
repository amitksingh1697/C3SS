<%@page import="com.c3s.GetCon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.lang.*"%>

<%
    
    String name = request.getParameter("username");
    int roll = Integer.parseInt(name);
    Long contact;
    String userId="";
    String email;
    Date dt;
   
	 Connection con;
    String pass = request.getParameter("pass");
    HttpSession s = request.getSession();
 

    try {
    	
    	 con =GetCon.getCon();

        PreparedStatement ps = con.prepareStatement
        		("select * from registration where Roll_no=? and password=?");

        ps.setInt(1, roll);

        ps.setString(2, pass);

        ResultSet rs = ps.executeQuery();

        int x = 0;

        while (rs.next()) {
			if (rs.isFirst()) {
         		s = request.getSession();
				userId=rs.getString(3);
            	email=rs.getString(6);
            	contact=rs.getLong(7);
      	     	s.setAttribute("userId", userId);
            	s.setAttribute("email", email);
            	s.setAttribute("contact", contact);
            	s.setAttribute("id", roll);
                x = 1;
                
			    
				
			  

            } else {

                x = 2;

            }

        }

if (x == 1) {

 

%>

<jsp:include page="Profile.jsp"/>

<%               
                
                 

} else {

    out.println("<center>" + "<b>Either You Enter Wrong UserName or Password</b>");

%>

<jsp:include page="login.html"/>

<%}

 

    } catch (Exception ex) {
ex.printStackTrace();
    }
%>
