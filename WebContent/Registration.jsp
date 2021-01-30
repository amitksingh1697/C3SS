<%@page import="com.c3s.GetCon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.lang.*"%>
<%@ page language="java" import="java.text.*"%>
<%@ page language="java" import="java.util.Date"%>
<%@ page language="java" import="java.text.SimpleDateFormat"%>

<%

       String r = request.getParameter("roll");
       int roll = Integer.parseInt(r);
       String name = request.getParameter("name");
       String dob = request.getParameter("dob");
       String gender = request.getParameter("gender");
       if(gender.equals("Male")){
    	  String  g = gender;
       }
       else if(gender.equals("Female")){
     	  String  g = gender;
        }
       else{
    	   String  g = gender; 
       }
       String email = request.getParameter("email");
       String m = request.getParameter("mobile");
       Long mobile = Long.parseLong(m);
       String add = request.getParameter("add");
       String pass = request.getParameter("pass");
       Date date1=new SimpleDateFormat("yyyy-MM-dd").parse(dob); 

       java.util.Date utilDate = date1;
       java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());


    try {
    	
    	Connection con =GetCon.getCon();
    	PreparedStatement ps = con.prepareStatement("insert into c3s.registration(Roll_no,name,Dob,Gender,Email,Mobile_no,Address,password) values(?,?,?,?,?,?,?,?)");
    	ps.setInt(1, roll);
    	ps.setString(2, name);
    	ps.setDate(3, sqlDate);
        ps.setString(4, gender);
        ps.setString(5, email);
        ps.setLong(6, mobile);
        ps.setString(7, add);
        ps.setString(8, pass);
   
       int m1 =  ps.executeUpdate();
 if(m1>0){
	    out.println("<center>" + "<b>Sign Up Successfully Click on Login Button To Enter</b>");

	    %>

	    <jsp:include page="Register.html"/>

	    <%
	 
	 
 }

    } catch (Exception ex) {
ex.printStackTrace();
    }
%>

