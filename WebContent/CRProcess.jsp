<%@ page  import="java.sql.*"%>
<%@page import="com.c3s.GetCon"%>
<%
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String number=request.getParameter("contact");
	String inst=request.getParameter("service");
	String acourse=request.getParameter("course");
	
	
	Connection c1=GetCon.getCon();
    PreparedStatement ps1 = c1.prepareStatement("select SeatAvail from classes where InstructorName=? and Topic=?");
	ps1.setString(1, inst);
	ps1.setString(2, acourse);
    ResultSet rs = ps1.executeQuery();
    rs.next();
    int seat = rs.getInt(1);
    System.out.println(seat);
    
   if(seat>0){
	   Connection c=GetCon.getCon();
		PreparedStatement ps = c.prepareStatement("insert into c3s.studentcallot (Name,Email,Contact,Instructor,Topic) values(?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, number);
	    ps.setString(4, inst);
	    ps.setString(5, acourse);
	    ps.executeUpdate();
	    seat= seat-1;
	    PreparedStatement ps2 = c.prepareStatement("update classes set SeatAvail=? where InstructorName=? and Topic=?");
	    ps2.setInt(1, seat);
	    ps2.setString(2, inst);
	  	ps2.setString(3, acourse);
	  	ps2.executeUpdate();
	  	out.println("<center>" + "<h2><b>Seat Successfully Booked</b></h2>");
	  	 %>
	  	 <jsp:include page="Classes.jsp"/>
	  	 <% 
	    }else{
	out.println("<center>" + "<h1><b>Seats are not available for this Course</b><h1>");
%>
	<jsp:include page="Classes.html"/>
 <% } 
   %>
