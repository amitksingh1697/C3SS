<!DOCTYPE HTML>
<%@ page language="java" import="java.sql.*"%>
<%@page import="com.c3s.GetCon"%>
<html>
<head>
<title>Classes and Notice</title>
<!-- Bootstrap -->

<link href="css/bootstrap.min3.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap3.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> 
addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
 <!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
     <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<!-- start plugins -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap3.js"></script>
<script type="text/javascript" src="js/bootstrap.min3.js"></script>
<!----font-Awesome----->
   	<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
</head>
<body>
<div class="header_bg1">
<div class="container">
	<div class="row header">
		<div class="logo navbar-left">
			<h1><a href="index.html">C3S.com </a></h1>
		</div>
		<div class="h_search navbar-right">
			<form>
				<input type="text" class="text" value="Enter text here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter text here';}">
			    <input type="submit" value="Search">
		     </form>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="container">
	<div class="row h_menu">
		<nav class="navbar navbar-default navbar-left" role="navigation">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
					
		      </button>
		    </div>
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="Profile.jsp">Home</a></li>
		        <li><a href="technology.html">Technologies</a></li>
		        <li><a href="curiosity.html">About</a></li>
		        <li><a href="contact.html">Contact</a></li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		    <!-- start soc_icons -->
		</nav>
		<div class="soc_icons navbar-right">
			<ul class="list-unstyled text-center">
			    <li><a href="login.html"><i class="fa fa-user-circle-o" ></i></a></li>
				
			</ul>	
		</div>
	</div>
</div>
	<div class="clearfix"></div>
</div>
</div>
<div class="main_bg"><!-- start main -->
	<div class="container">
		<div class="about details row">
			<h2>Classes and Notices</h2>
			<img src="images/det_pic.jpg" alt="" class="img-responsive"/>
	
			
			<h1><span class="blue"></span>Classes Scheduled<span class="blue"></span></h1>
                

<table border="2px" width="100%">
	<tr  align="center"> 
		<td><b>Instructor</b></td>
		<td><b>Date</b></td>
		<td><b>Time</b></td>
		<td><b>Course</b></td>
		<td><b>Topic</b></td>
		<td><b>Classroom</b></td>
		<td><b>Seat availability</b></td>
	</tr>
	<%
		Connection c=GetCon.getCon();
   		Statement stmt=c.createStatement();
   		ResultSet rs=stmt.executeQuery("select * from classes");
   		while(rs.next())
   		{

  	%>
   		    <tr align="center">
   		    	<td><%=rs.getString(2) %></td>
   		    	<td><%=rs.getString(3) %></td>
   		    	<td><%=rs.getString(4) %></td>
 	   		   	<td><%=rs.getString(5) %></td>
   		    	<td><%=rs.getString(6) %></td>
   		    	<td><%=rs.getString(7) %></td>
   		    	<td><%=rs.getInt(8) %></td>
   		    </tr>
   	<%
   		}
	%>	
</table>

			<p class="para">  </p>
			
			<p class="para">    </p>
			
			<div align="center"><a href="ClassroomRegister.jsp" class="fa-btn btn-1 btn-1e">Apply</a></div>
		</div>
	</div>
</div><!-- end main -->
<div class="footer_bg"><!-- start footer -->
	<div class="container">
		<div class="row  footer">
			<div class="copy text-center">
				<p class="link"><span>&#169; All rights reserved | Design by&C3S Private Ltd.;<a href=""> C3S.com</a></span></p>
			</div>
		</div>
	</div>
</div>
</body>
</html>