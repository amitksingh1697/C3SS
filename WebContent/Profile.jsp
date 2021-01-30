<!DOCTYPE HTML>
<%@page import="com.c3s.GetCon"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.lang.*"%>
<%@ page language="java" import="java.text.*"%>
<%@ page language="java" import="java.util.Date"%>
<%@ page language="java" import="java.text.SimpleDateFormat"%>
<html>
<head>
<title>	Profile</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min3.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap3.css" rel='stylesheet' type='text/css' />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<!-- start plugins -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap3.js"></script>
<script type="text/javascript" src="js/bootstrap.min3.js"></script>
<!-- start slider -->
<link href="css/slider2.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
<script type="text/javascript" src="js/jquery.cslider.js"></script>
	<script type="text/javascript">
			$(function() {

				$('#da-slider').cslider({
					autoplay : true,
					bgincrement : 450
				});

			});
		</script>
<!-- Owl Carousel Assets -->
<link href="css/owl.carousel.css" rel="stylesheet">
<script src="js/owl.carousel3.js"></script>
		<script>
			$(document).ready(function() {

				$("#owl-demo").owlCarousel({
					items : 4,
					lazyLoad : true,
					autoPlay : true,
					navigation : true,
					navigationText : ["", ""],
					rewindNav : false,
					scrollPerPage : false,
					pagination : false,
					paginationNumbers : false,
				});

			});
		</script>
		<!-- //Owl Carousel Assets -->
<!----font-Awesome----->
   	<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
</head>




<body>
<div class="header_bg">
<div class="container">
	<div class="row header">
		<div class="logo navbar-left">
			<h1><a href="index.html">C3S.com </a></h1>
		</div>
		<div class="h_search navbar-right">
			<form>
				<input type="text" class="text" value="Enter text here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter text here';}">
				<input type="submit" value="search">
			</form>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
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
		        <li class="active"><a href="index.html">Home</a></li>
		        <li><a href="technology.html">Technologies</a></li>
		        <li><a href="curiosity.html">Curiosity</a></li>
		        <li><a href="contact.html">Contact</a></li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		    <!-- start soc_icons -->
		</nav>
		<div class="soc_icons navbar-right">
			<ul class="list-unstyled text-center">
			    <li><a href="login.html"><i class="fa fa-user-circle-o" ></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
			</ul>	
		</div>
	</div>
</div>
<div class="slider_bg"><!-- start slider -->
	<div class="container">
		<div id="da-slider" class="da-slider text-center">
			<div class="da-slide">
				<h2>Hey <%String username= (String) session.getAttribute("userId");  out.print(username); %> </h2>
				<p><b> Welcome at C3S</b>
				<span class="hide_text"> We are happy to have you on-board.
				<br> C3S Classroom is a free web service developed by C3s Private Ltd for schools and students that aims to simplify creating, distributing,teaching and grading assignments in a paperless way.</span></p>
				<h3 class="da-link"><a href="#" class="fa-btn btn-1 btn-1e">View More</a></h3>
			</div>
			<div class="da-slide"><% 
		     String email= (String) session.getAttribute("email");
			 String topic="";
			 String date="";
			 String inst="";
			 String time="";
			 String classe="";
			 Connection con = GetCon.getCon();
			 Statement stmt=con.createStatement();
				ResultSet rs1=stmt.executeQuery("select Topic from studentcallot where Email='"+email+"'");
				while(rs1.next()){
			     topic = rs1.getString(1);
			     
			     }
				ResultSet rs2=stmt.executeQuery("select InstructorName,Timing,Time,Classroom from classes where Topic='"+topic+"'");
				while(rs2.next()){
				 inst =rs2.getString("InstructorName");
				 date =rs2.getString("Timing");
				 time =rs2.getString("Time");
				 classe = rs2.getString("Classroom");
				 
				}
				%>
			  
				<h2>Classes</h2>
				<p> Your Class Scheduled for <b><%out.print(topic);%></b> on <b><%out.print(date);%></b> at <b><%out.print(time);%></b>. 
                        
               
				<span class="hide_text">
				Your Instructor name is <b><%out.print(inst);%></b>
				Your Class in room no <b><%out.print(classe);%></b>
						</span></p>
				<h3 class="da-link"><a href="#" class="fa-btn btn-1 btn-1e">view more</a></h3>
			</div>
			<div class="da-slide">
				<h2>Welcome:</h2>
				<p><b><%
                       username= (String) session.getAttribute("userId");
                        out.print(username);
                    %> at C3S</b>
				<span class="hide_text"> We are happy to have you on-board.
				<br> C3S Classroom is a free web service developed by C3s Private Ltd for schools and students that aims to simplify creating, distributing,teaching and grading assignments in a paperless way.</span></p>
				<h3 class="da-link"><a href="#" class="fa-btn btn-1 btn-1e">view more</a></h3>
			</div>
			<div class="da-slide">
				<h2>Enjoy Services at Free</h2>
				<p>Trusted by thousands of venues around the world, C3S.com is the smartest way to manage your facilities.
				<span class="hide_text"> It consists of multiple teachers and faculty accounts along with their payment status
						The system helps in effectively managing and scheduling batches of students as per their courses and exam priorities.</span></p>
				<h3 class="da-link"><a href="#" class="fa-btn btn-1 btn-1e">view more</a></h3>
			</div>
	   </div>
	</div>
</div><!-- end slider -->
<div class="main_bg"><!-- start main -->
	<div class="container">
		<div class="main row">
			<div class="col-md-3 images_1_of_4 text-center">
				<span class="bg"><i class="fa fa-globe"></i></span>
				<h4><a href="#">Classes and Notice</a></h4>
				<p class="para">Here you can download the scheduled information regarding classes, assignments and tests.</p>
				<a href="Classes.jsp" class="fa-btn btn-1 btn-1e">read more</a>
			</div>
			<div class="col-md-3 images_1_of_4 bg1 text-center">
				<span class="bg"><i class="fa fa-laptop"></i></span>
				<h4><a href="assignment.html">Assignment and Review Score</a></h4>
				<p class="para">Portal to apply for the assignments and tests.Will also provide in test scores..</p>
				<a href="assignment.html" class="fa-btn btn-1 btn-1e">read more</a>
			</div>
			
			<div class="col-md-3 images_1_of_4 bg1 text-center">
				<span class="bg"><i class="fa fa-book"></i></span>
				<h4><a href="Books.html">Books</a></h4>
				<p class="para">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
				<a href="Books.html" class="fa-btn btn-1 btn-1e">read more</a>
			</div>
			<div class="col-md-3 images_1_of_4 bg1 text-center">
				<span class="bg"><i class="fa fa-map"></i></span>
				<h4><a href="#">Sample Paper</a></h4>
				<p class="para">Here you can get your access to the extra facility provided by the institution "C3S.COM"</p>
				<a href="Sample_Paper.html" class="fa-btn btn-1 btn-1e">read more</a>
			</div>		
		</div>
	</div>
</div><!-- end main -->
<div class="main_btm"><!-- start main_btm -->
	<div class="container">
		<div class="main row">
			<div class="col-md-6 content_left">
				<img src="images/37.jpg" alt="" class="img-responsive">
				<img src="images/39.jpg" alt="" class="img-responsive">
			</div>
			<div class="col-md-6 content_right">
				<h4>Virtual Classroom 
				<span>A virtual classroom is a teaching and learning environment where participants can interact, communicate, 
				view and discuss presentations, and engage with learning resources while working in groups, all in an online setting.  
				</span>  The medium is often through a video conferencing application that allows multiple users to be connected at the same time through the Internet, 
				which allows users from virtually anywhere to participate.</h4>
				<p class="para"> There is no concrete definition of what a virtual classroom is,
				but the most logical one is simply that it is an online classroom environment facilitated via specialized video conferencing applications. 
				The participants, of course, include one or multiple instructors and students. 
				However, a classroom or class does not always need an active instructor to supervise students; in this setting, 
				they can proceed at their own pace, with the instructor only around to evaluate the students; sometimes there is no instructor at all. 
				This type of virtual classroom is called an unsupervised virtual classroom, 
				which is characterized by ready-made learning materials that students can follow without the aid of an instructor, 
				essentially a self-paced tutorial course where the exams can be automated after every activity. 
				This is the most common form of virtual classroom, where students just read a PowerPoint presentation or watch a video tutorial. 
				This makes YouTube, by association, the most widely used virtual classroom thus far (even if it is not considered as one). </p>
				<a href="single-page.html" class="fa-btn btn-1 btn-1e">read more</a>
			</div>
		</div>
				<!----start-img-cursual---->
					<div id="owl-demo" class="owl-carousel text-center">
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/101.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#">Thomas Jefferson</a></h4>
								<p>
									I find that the harder I work, the more luck I seem to have. 
								</p>
							</div>
						</div>
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/102.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#">John Maxwell</a></h4>
								<p>
									 There are two kinds of people in this world: those who want to get things done and those who donâ€™t want to make mistakes.
								</p>
							</div>
						</div>
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/103.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#">Zig Ziglar</a></h4>
								<p>
									On There are no traffic jams on the extra mile.
								</p>
							</div>
						</div>
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/105.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#">Vidal Sassoon</a></h4>
								<p>
									The only place where success comes before work is in the dictionary.
								</p>
							</div>
						</div>
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/104.png" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#">Jim Rohn</a></h4>
								<p>
									Donâ€™t wish it were easier; wish you were better.
								</p>
							</div>
						</div>
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/106.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#">Michael Jordan</a></h4>
								<p>
                                 Iâ€™ve failed over and over and over again in my life. And that is why I succeed. 
								</p>
							</div>
						</div>
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/107.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#">Henry Ford</a></h4>
								<p>
									Failure is the opportunity to begin again more intelligently.
								</p>
							</div>
						</div>
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/108.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">	
								<h4><a href="#">Maria D. Robinson</a></h4>
								<p>
									Infinite striving to be the best is Manâ€™s duty; it is its own reward. Everything else is in Godâ€™s hands.
								</p>
							</div>
						</div>

					</div>
					<!----//End-img-cursual---->
	</div>
</div>
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