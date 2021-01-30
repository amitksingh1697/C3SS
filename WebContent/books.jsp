<%@page import="com.c3s.GetCon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" import="java.sql.*"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books Regarding your Search</title>
<link href="css/table.css" rel='stylesheet' type='text/css' />
     <link href="vendor/bootstrap50/css/bootstrap.min.css" rel="stylesheet">

   
    <link href="vendor/font-awesome51/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

   
    <link href="css/landing-page.min.css" rel="stylesheet">
</head>
<body>
<header class="masthead text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
            <h1 class="mb-5">We are happy to help you!</h1>
          </div>
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
          <center>
<form  method="get" action="FileReadPdf">
    <table>
    <tr>
    <td>Enter Book Id</td>
    <td>
    <input type="text" name="bookId" />
    </td>
    </tr>
    <tr>
    <td colspan="2">  <input  type="submit"  value="Get Book" /></td></tr>
    </table>
</form></center>
         </div>
         </div>
         </div>
         </header>

</body>
<form method="post">
<h1><span class="blue"></span>Book<span class="blue"></span> <span class="red">Table</span></h1>

<table class="container">
	<thead>
		<tr>
			<th><h1>ID</h1></th>
			<th><h1>Department</h1></th>
			<th><h1>Name</h1></th>
		</tr>
	</thead>
<%
String dep = request.getParameter("Subject");
if(dep.equals("CSE")){
	String  g = dep.toLowerCase();
}
else if(dep.equals("Gaming")){
	String  g = dep.toLowerCase();
}
else if(dep.equals("Mechanical")){
	String  g = dep.toLowerCase();
}
else if(dep.equals("Networking")){
	String  g = dep.toLowerCase();
}
else{
	String  g = dep.toLowerCase();
}

String n = request.getParameter("book");
try{
Connection conn=GetCon.getCon();
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from c3s.book where  department LIKE '%"+dep+"%' and name LIKE '%"+n+"%'");
//PreparedStatement ps = conn.prepareStatement("select id,department,name from c3s.book where department = ? and name=?");    
//ps.setString(1, dep);
//ps.setString(2, n);
//ResultSet rs= ps.executeQuery();

while(rs.next())
{

%> <tbody>
    <tr><td><%=rs.getInt("id") %></td>
    <td><%=rs.getString("department") %></td>
    <td><%=rs.getString("name") %></td></tr>
    </tbody>   
 <%

}
%>
    </table>
    <%
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>
</form>


<footer class="footer bg-light">
   <div class="footer_bg"><!-- start footer -->
	<div class="container">
		<div class="row  footer">
			<div class="copy text-center">
				<p class="link"><span>&#169; All rights reserved | Design by&C3S Private Ltd.;<a href=""> C3S.com</a></span></p>
			</div>
			 <div class="col-lg-6 h-100 text-center text-lg-right my-auto">
            <ul class="list-inline mb-0">
              <li class="list-inline-item mr-3">
                <a href="#">
                  <i class="fa fa-facebook fa-2x fa-fw"></i>
                </a>
              </li>
              <li class="list-inline-item mr-3">
                <a href="#">
                  <i class="fa fa-twitter fa-2x fa-fw"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-instagram fa-2x fa-fw"></i>
                </a>
              </li>
            </ul>
          </div>
		</div>
	</div>
</div> 
</footer>

    <!-- Footer -->
    

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery52/jquery.min.js"></script>
    <script src="vendor/bootstrap50/js/bootstrap.bundle.min.js"></script>

</html> 