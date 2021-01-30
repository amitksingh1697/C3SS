<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"%>
<%@page import="com.c3s.GetCon"%>
<html lang="en">
<head>
	<title>Classroom Register</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon3.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap1/css/bootstrap.min4.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0.3/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic3/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate4.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers1/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css1/animsition.min4.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select3/select2.min5.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker5.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/noui/nouislider.min5.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util3.css">
	<link rel="stylesheet" type="text/css" href="css/main3.css">
<!--===============================================================================================-->
		
</head>
<body>

<%

String name = (String)session.getAttribute("userId");
System.out.print(name);
String email=(String) session.getAttribute("email");
String m=session.getAttribute("contact").toString();



%>
	<div class="container-contact100">
		<div class="wrap-contact100">
			<form action="CRProcess.jsp" method=post class="contact100-form validate-form">
				<span class="contact100-form-title">
					Classroom Register
				</span>

				<div class="wrap-input100 validate-input bg1" data-validate="Please Type Your Name">
					<span class="label-input100">FULL NAME *</span>
					<input class="input100" type="text" name="name"  value=<%=(String)session.getAttribute("userId")%> readonly>
				</div>
				
                
                
				<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter Your Email (e@a.x)">
					<span class="label-input100">Email *</span>
					<input class="input100" type="text" name="email"  value=<%=email %> readonly>
				</div>
				

               
				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Contact</span>
					<input class="input100" type="text" name="contact"  value=<%=m %> readonly>
				</div>
				
			
                
				<div class="wrap-input100 input100-select bg1">
					<span class="label-input100">Select Instructor*</span>
					<div>
						<select class="js-select2" name="service" id="service">
							<option>Please chooses</option>
								<%
									Connection c=GetCon.getCon();
							   		Statement stmt=c.createStatement();
							   		ResultSet rs=stmt.executeQuery("select * from classes");
							   		while(rs.next())
							   		{
							  	%>
										<option><%=rs.getString(2)%></option>
							   	<%
							   		}
								%>	
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				
				
				
				<div class="w-full dis-none js-show-service">
				<div class="wrap-input100 input100-select bg1">
					<span class="label-input100">Select Course*</span>
					<div>
						<select class="js-select2" name="course" id="service">
							<option>Please chooses</option>
								<%
									Connection c1=GetCon.getCon();
							   		Statement stmt1=c1.createStatement();
							   		ResultSet rs1=stmt1.executeQuery("select * from classes");
							   		while(rs1.next())
							   		{
							  	%>
										<option><%=rs1.getString(6)%></option>
							   	<%
							   		}
								%>	
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				</div>
				



				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						<span>
							Submit
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>



<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.11.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js1/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap1/js/popper.js"></script>
	<script src="vendor/bootstrap1/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select3/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});


			$(".js-select2").each(function(){
				$(this).on('select2:close', function (e){
					if($(this).val() == "Please chooses") {
						$('.js-show-service').slideUp();
					}
					else {
						$('.js-show-service').slideUp();
						$('.js-show-service').slideDown();
					}
				});
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min1.js"></script>
	<script src="vendor/daterangepicker/daterangepicker1.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime1.js"></script>
<!--===============================================================================================-->
	<script src="vendor/noui/nouislider.min.js"></script>
	<script>
	    var filterBar = document.getElementById('filter-bar');

	    noUiSlider.create(filterBar, {
	        start: [ 1500, 3900 ],
	        connect: true,
	        range: {
	            'min': 1500,
	            'max': 7500
	        }
	    });

	    var skipValues = [
	    document.getElementById('value-lower'),
	    document.getElementById('value-upper')
	    ];

	    filterBar.noUiSlider.on('update', function( values, handle ) {
	        skipValues[handle].innerHTML = Math.round(values[handle]);
	        $('.contact100-form-range-value input[name="from-value"]').val($('#value-lower').html());
	        $('.contact100-form-range-value input[name="to-value"]').val($('#value-upper').html());
	    });
	</script>
<!--===============================================================================================-->
	<script src="js/main3.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
