<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Home Page</title>
	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
		}
	/*--Navigation ----*/
		#nav-bar{
			position: sticky;
			top: 0;
			z-index: 10;
		}
		.navbar-brand {
			height: 40px;
			padding-left: 30px;
		}
		.navbar-nav li {
			padding: 0 10px;
		}
		.navbar-nav li a {
			float: right;
			text-align: left;
		}
		#nav-bar ul li a:hover {
			color: #007bff!important;
		}
		.navbar {
			background-color: #fff;
			border-bottom:1px solid gray;
		}
		.navbar-toggler {
			border: none!important;
		}
		.nav-link {
			color: #555!important;
			font-weight: 600;
			font-size: 16px;
		}
		#slider {
			width: 100%;
			height: 80%;
		}
		.carousel-caption {
			top: 50%;
			transform: translateY(-50%);
			bottom: initial!important;
		}
		.carousel-caption h5 {
			color: orange;
			font-size: 42px;
		}
		/*-----------About---------------------*/
		#about {
			padding-top: 50px;
			padding-bottom: 50px;
		    color: #555;
		}
		#about .btn {
			margin-top: 20px;
			margin-bottom: 30px;
		}
		.about-content {
			padding-top: 20px;
		}
		.skil-bar {
			margin-bottom: 6px;
			font-weight: 600;
		}
		.progress-bar {
			border-radius: 16px;
		}
		.progress {
			border-radius: 16px !important;
			margin-bottom: 15px;
		}
		/*-----------Services ---------------------*/
		#services {
			background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url("${pageContext.request.contextPath}/resources/images/services.jpg");
			background-size: cover;
			background-position: center;
			color: #efefef !important;
			background-attachment: fixed;
			padding-top: 50px;
			padding-bottom: 50px;
		}
		#services h1 {
			text-align: center;
			color: #efefef !important;
			padding-bottom: 10px;
		}
		#services h1::after {
			content: '';
			background: #efefef;
			display: block;
			height: 3px;
			width: 170px;
			margin: 20px auto 5px;
		}
		.services {
			margin-top: 40px;
		}
		.icon {
			font-size: 40px;
			margin: 20px auto;
			padding: 20px;
			height: 80px;
			width: 80px;
			border: 1px solid #fff;
			border-radius: 50%;
		}
		#services p {
			font-size: 14px;
			margin-top: 20px;
			color: #ccc;
		}
		.services .col-md-3:hover {
			background-color: #007bff;
			cursor: pointer;
			transition: 1.5s;
		}
		/*--------------- testimonials -------------------*/
		#testimonials {
			padding-top: 50px;
			padding-bottom: 50px;
		}
		#testimonials h1 {
			text-align: center;
			padding-bottom: 10px;
		}
		#testimonials h1::after {
			content: '';
			background: #007bff;
			display: block;
			height: 3px;
			width: 170px;
			margin: 20px auto 5px;
		}
		#testimonials .row {
			margin-top: 30px;
		}
		.col-md-4 {
			margin: 40px auto;
		}
		.profile {
			padding: 70px 10px 10px;
			background-color: #efefef;
			width: 300px;
		}
		.user {
			width: 120px;
			height: 120px;
			border-radius: 50%;
		}
		.profile img {
			top: -60px;
			position: absolute;
			left: calc(87% - 60%);
			border: 10px solid #fff;
		}
		.profile h3 {
			font-size: 20px;
			margin-top: 15px;
			color: #007bff;
		}
		#testimonials span {
			font-size: 14px;
			color: #333;
		}
		blockquote {
			font-size: 16px;
			line-height: 30px;
		}
		blockquote::before {
			content: '\93';
			font-size: 50px;
			color: #007bff;
			position: relative;
			line-height: 20px;
			bottom: -15px;
			right: 5px;
		}
		blockquote::after {
			content: '\94';
			font-size: 50px;
			color: #007bff;
			position: relative;
			line-height: 10px;
			bottom: -15px;
			left: 5px;
		}
		.profile:hover {
			box-shadow: 0 0 15px 5px rgba(0,0,0,0.2);
			cursor: pointer;
			transition: 0.5s;
		}
		/*******************Registration **********************/
		#register {
			background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url("${pageContext.request.contextPath}/resources/images/register.jpg");
			background-size: cover;
			background-attachment: fixed;
			padding-top: 60px;
			padding-bottom: 50px;
			color: #efefef !important;
			
		}
		#register h1 {
			font-size: 40px;
			color: #efefef !important;
			margin-top: 150px;
		}
		#register h3 {
			font-size: 25px;
			color: #efefef !important;
			margin-top: 20px;
		}
		.fa-pencil {
			font-size: 35px;
			color: #efefef !important;
			float: right;
			margin-top: 20px;
		}
		.col-md-5 {
			margin-top: 20px;
			box-shadow: -1px 1px 60px 10px black;
			background: rgba(0,0,0,0.4)
		}
		.label {
			font-weight: normal;
			margin-top: 10px;
			color: #efefef !important;
			font-size: 16px; 
		}
		#shopname {
			background: transparent;
			border-radius: 0px;
			border: 0px;
			border-bottom: 1px solid white;
			font-size: 18px;
			margin-top: 5px;
			height: 40px;
			color: #efefef !important;
			margin-left: 10px;
		}
		#name {
			background: transparent;
			border-radius: 0px;
			border: 0px;
			border-bottom: 1px solid white;
			font-size: 18px;
			margin-top: 5px;
			height: 40px;
			color: #efefef !important;
			margin-left: 10px;
		}
		#email {
			background: transparent;
			border-radius: 0px;
			border: 0px;
			border-bottom: 1px solid white;
			font-size: 18px;
			margin-top: 5px;
			height: 40px;
			color: #efefef !important;
			margin-left: 10px;
		}
		#passid {
			background: transparent;
			border-radius: 0px;
			border: 0px;
			border-bottom: 1px solid white;
			font-size: 18px;
			margin-top: 5px;
			height: 40px;
			color: #efefef !important;
			margin-left: 10px;
		}
		#mobileno {
			background: transparent;
			border-radius: 0px;
			border: 0px;
			border-bottom: 1px solid white;
			font-size: 18px;
			margin-top: 5px;
			height: 40px;
			color: #efefef !important;
			margin-left: 10px;
		}
		#address {
			background: transparent;
			border-radius: 0px;
			border: 0px;
			border-bottom: 1px solid white;
			font-size: 18px;
			margin-top: 5px;
			height: 40px;
			color: #efefef !important;
			margin-left: 10px;
		}
		.btn-info {
			margin-top: 15px;
			font-size: 16px;
			width: 80px;
			margin-bottom: 20px;
		}
		.btn-warning {
			margin-top: 15px;
			font-size: 16px;
			width: 80px;
			margin-left: 10px;
			margin-bottom: 20px;
		}
		/*******************Contact **********************/
		#contact {
			background: #efefef;
			padding-top: 40px;
			padding-bottom: 40px;
			color: #777;
		}
		#contact h1 {
			text-align: center;
			padding-bottom: 10px;
		}
		#contact h1::after {
			content: '';
			background: #007bff;
			display: block;
			height: 3px;
			width: 170px;
			margin: 20px auto 5px;
		}
		.contact-form {
			padding: 15px;
		}
		#shopname1 {
			border-radius: 10px !important;
			border: none !important;
		}
		#personname1 {
			border-radius: 10px !important;
			border: none !important;
		}
		#email1 {
			border-radius: 10px !important;
			border: none !important;
		}
		#mobile1 {
			border-radius: 10px !important;
			border: none !important;
		}
		#message {
			border-radius: 10px !important;
			border: none !important;
		}
		::placeholder {
			color: #999 !important;
		}
		.follow {
			background: #fff;
			padding: 10px;
			margin: 15px;
		}
		.contact-info .fa {
			margin: 10px;
			color: #007bff;
			font-weight: bold;
		}
		.follow {
			border-radius: 10px;
		}
		/*-----------footer ----------------------*/
		#footer {
			background: orange;
			color: #fff;
			padding: 12px;
			height: 45px;	
		}
		.fa-heart-o {
			margin: 3px;
			color: red;
		}
		.carousel-item {
			height: 580px;
			width: 800px;
		}
		/****************Login *****************/
		.modal-footer {
			height: 75px;
		}
		#loginpopup {
			width: 500px;
		}
	</style>
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 	<link href="<c:url value="/resources/css/home.css"/>" rel="stylesheet" type="text/css" />
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
 	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<!-- Slider -->
	<div id="slider">
	<div id="headerSlider" class="carousel slide" data-ride="carousel">
	  <ol class="carousel-indicators">
	    <li data-target="headerSlider" data-slide-to="0" class="active"></li>
	    <li data-target="headerSlider" data-slide-to="1"></li>
	    <li data-target="headerSlider" data-slide-to="2"></li>
	  </ol>
  	  <div class="carousel-inner">
      	<div class="carousel-item active">
      	<img src="<c:url value="/resources/images/slider1.jpg"/>" class="d-block w-100">
      	<div class="carousel-caption">
      	</div>
      </div>
      <div class="carousel-item">
      <img src="<c:url value="/resources/images/slider2.jpg"/>" class="d-block w-100">
      	<div class="carousel-caption">
      	</div>
      </div>
      <div class="carousel-item">
      <img src="<c:url value="/resources/images/slider3.jpg"/>" class="d-block w-100">
      	<div class="carousel-caption">
      	</div>
      </div>
      <div class="carousel-item">
      <img src="<c:url value="/resources/images/slider4.jpg"/>" class="d-block w-100">
      	<div class="carousel-caption">
      	</div>
      </div>
      <div class="carousel-item">
      <img src="<c:url value="/resources/images/slider5.jpg"/>" class="d-block w-100">
      	<div class="carousel-caption">
      	</div>
      </div>
      <div class="carousel-item">
      <img src="<c:url value="/resources/images/slider6.jpg"/>" class="d-block w-100">
      	<div class="carousel-caption">
      	</div>
      </div>
      <div class="carousel-item">
      <img src="<c:url value="/resources/images/slider7.jpg"/>" class="d-block w-100">
      	<div class="carousel-caption">
      	</div>
      </div>
      <div class="carousel-item">
      <img src="<c:url value="/resources/images/slider8.jpg"/>" class="d-block w-100">
      	<div class="carousel-caption">
      	</div>
      </div>
      <div class="carousel-item">
      <img src="<c:url value="/resources/images/slider9.jpg"/>" class="d-block w-100">
      	<div class="carousel-caption">
      	</div>
      </div>
      <div class="carousel-item">
      <img src="<c:url value="/resources/images/slider10.jpg"/>" class="d-block w-100">
      	<div class="carousel-caption">
      	</div>
      </div>
      <div class="carousel-item">
      <img src="<c:url value="/resources/images/cycle.jpg"/>" class="d-block w-100">
      	<div class="carousel-caption">
      	</div>
      </div>
     </div>
  	 <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
     	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
    	<span class="sr-only">Previous</span>
  	 </a>
  	 <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
     	<span class="sr-only">Next</span>
  	 </a>
	</div>
   </div>
   
   <!-- About Section -->
   <section id="about">
   	<div class="container">
   		<div class="row">
   			<div class="col-md-6">
   				<h2>About Us</h2>
   				<div class="about-content">
   					We are Created Rojmat based web application. We have provide service related Daily Accounting.
   					Every Retalier and wholesaler will manage your own account data easily. we will eliminate all
   					paper work. We will provide service of Rojmat, product management, build invoice, monthly and
   					yearly report generate, easily find overall monthly and yearly benefit income. We have also eliminate
   					a time complexity with easy to work and save all data life time into your account you can see your data
   					of monthly and yearly based.
   				</div>
   				<button type="button" class="btn btn-primary">Read more>></button>
   			</div>
   			<div class="col-md-6 skil-bar">
   				<p>Manage Account</p>
   				<div class="progress">
   					<div class="progress-bar" style="width: 90%;">90%</div>
   				</div>
   				<p>Productive</p>
   				<div class="progress">
   					<div class="progress-bar" style="width: 80%;">80%</div>
   				</div>
   				<p>Report Generate</p>
   				<div class="progress">
   					<div class="progress-bar" style="width: 75%;">75%</div>
   				</div>
   				<p>Invoice</p>
   				<div class="progress">
   					<div class="progress-bar" style="width: 70%;">70%</div>
   				</div>
   			</div>
   		</div>
   	</div>
   </section>
   <!-- Services -->
   <section id="services">
   		<div class="container">
   			<h1>Our Services</h1>
   			<div class="row services">
   				<div class="col-md-3 text-center">
   					<div class="icon">
   						<i class="fa fa-desktop"></i>
   					</div>
   					<h3>Rojmat</h3>
   					<p>We are Created Rojmat based web application.
   					We have provide service related Daily Accounting.
   					Every Retailer will manage your own
   				    account data easily.</p>
   				</div>
   				<div class="col-md-3 text-center">
   					<div class="icon">
   						<i class="fa fa-tablet"></i>
   					</div>
   					<h3>Daily Account</h3>
   					<p>We will eliminate all paper work. We will provide 
   					service of Rojmat, product management, build invoice,
   				     monthly and yearly report generate, Quick find benefits</p>
   				</div>
   				<div class="col-md-3 text-center">
   					<div class="icon">
   						<i class="fa fa-line-chart"></i>
   					</div>
   					<h3>Report Generated</h3>
   					<p>Customer can Generate report as per your requirement
   					just like monthly, Quarterly, yearly and also randomly 
   					within selected date you can generate user friendly report.</p>
   				</div>
   				<div class="col-md-3 text-center">
   					<div class="icon">
   						<i class="fa fa-pencil"></i>
   					</div>
   					<h3>Invoice</h3>
   					<p>We are provide product management with all details
   					Customer can build invoice for there retailers which 
   					is more powerful.</p>
   				</div>
   			</div>
   		</div>
   </section>	
   <!-- testimonials  -->
   <section id="testimonials">
   		<div class="container">
   			<h1>Testimonials</h1>
   			<p class="text-center">Subscribe to Our Web Application</p>
   			<div class="row">
   				<div class="col-md-4 text-center">
   					<div class="profile">
   					<img src="<c:url value="/resources/images/c5.jpg"/>" class="user">
   					<blockquote>I am Java Developer. I has been developed 
   					this web Application for business purpose. This website
   				    is user-friendly and Accounting Based</blockquote>	
   				    	<h3>Rajesh <span>Co-Founder at-Rojmat</span></h3>
   					</div>
   				</div>
   				<div class="col-md-4 text-center">
   					<div class="profile">
   					<img src="<c:url value="/resources/images/c4.jpg"/>" class="user">
   					<blockquote>He is Automation Engineer. I has been Tested 
   					this web Application for business purpose. This website
   				    is user-friendly and Accounting Based</blockquote>	
   				    	<h3>Tushar <span>Manager at-Rojmat</span></h3>
   					</div>
   				</div>
   				<div class="col-md-4 text-center">
   					<div class="profile">
   					<img src="<c:url value="/resources/images/c3.jpg"/>" class="user">
   					<blockquote>He is Sales Manager. I has been sales 
   					our product with reasonable pricing. All Accounts is 
   					maintain by this person.</blockquote>	
   				    	<h3>Nilesh <span>Director at-Rojmat</span></h3>
   					</div>
   				</div>
   			</div>
   		</div>
   </section>
   <section id="register">
   		<div class="container">
   			<div class="row">
   				<div class="col-md-7">
   					<h1 class="text-left">Registration</h1>
   					<p class="text-left">We can provide to create your account with filling this form.
   					Every Retailer have to submit all required field and used our services. We will 
   					take charges for creating and accessing annual fees Rs.500 per user. We are provide 
   					lot of features for rojmat which you are write on rojmat book.</p>
   				</div>
   				
   				<div class="col-md-5">
   					<div class="row">
   						<div class="col-md-6">
   							<h3 class="text-left">Registration Form</h3>
   						</div>
   						<div class="col-md-6">
   							<i class="fa fa-pencil"></i>
   						</div>
   					</div>	
   					<hr>
   					<form commandName="userData" action="${pageContext.request.contextPath}/user/register" method="POST">
   					<div class="row">
   						<label class="label col-md-2 control-label">Shop_Name:</label>
   						<div class="col-md-10">
   							<input type="text" class="form-control" id="shopname" name="shopname" placeholder="Shop Name" autocomplete="off"/>
   							<small id="shopnamechk"></small>
   						</div>
   					</div>
   					<div class="row">
   						<label class="label col-md-2 control-label">Name:</label>
   						<div class="col-md-10">
   							<input type="text" class="form-control" name="name" id="name" placeholder="Your Name" autocomplete="off"/>
   							<small id="namechk"></small>
   						</div>
   					</div>
   					<div class="row">
   						<label class="label col-md-2 control-label">Email:</label>
   						<div class="col-md-10">
   							<input type="email" class="form-control" id="email" name="email" placeholder="Email" autocomplete="off"/>
   							<small id="emailchk"></small>
   						</div>
   					</div>
					<div class="row">
 						<label class="label col-md-2 control-label">Password:</label>
   						<div class="col-md-10">
 							<input type="password" class="form-control" name="password" id="passid" placeholder="Password" autocomplete="off"/>
 							<small id="passwordchk"></small>
   						</div>
   					</div>
   					<div class="row">
   						<label class="label col-md-2 control-label">Mobile_No:</label>
   						<div class="col-md-10">
   							<input type="text" class="form-control" name="mobile" id="mobileno" placeholder="Mobile" autocomplete="off"/>
   							<small id="mobilnochk"></small>
   						</div>
   					</div>
					<div class="row">
						<label class="label col-md-2 control-label">Address:</label>
   						<div class="col-md-10">
  							<textarea rows="3" class="form-control" id="address" name="address" placeholder="Address" autocomplete="off"></textarea>
  							<small id="addresschk"></small>
 						</div>
   					</div>
   					<button type="submit" id="btnSave" class="btn btn-info">Register</button>
   					<button type="reset" id="btnCancle" class="btn btn-warning">Cancle</button>
   				</div>
   				</form>
   			</div>
   		</div>
   </section>
   <!-- Get in Touch -->
    <jsp:include page="footer.jsp"/>
   <!-- Log In Popup -->
   <section id="loginpopup">
   		<div class="container">
   			<div class="modal fade" id="loginmodal" >
   				<div class="modal-dialog modal-dialog-centered">
   					<div class="modal-content">
   						<form commandName="userData" action="${pageContext.request.contextPath}/user/login" method="POST">
   						<div class="modal-header">
   							<h3 class="text-center">Login</h3>
   				 				<button type="button" class="close" id="btnClose" data-dismiss="modal"> &times;</button>
   						</div>
   						<div class="modal-body">
   								<div class="form-group">
   									<label><i class="fa fa-envelope fa-1x"></i>Email</label>
   									<input type="text" id="emaillog" name="email" class="form-control" placeholder="Email" autocomplete="on"/>
   									<small id="emailloginchk"></small>
   								</div>
   								<div class="form-group">
   									<label><i class="fa fa-lock fa-1x"></i>Password</label>
   									<input type="password" id="passlog" name="password" class="form-control" placeholder="Password" autocomplete="off"/>
   									<small id="passwordloginchk"></small>
   								</div>
   								<div>
									<p style="color:red;">${failed}</p>
								</div> 
   						</div>
   						<div class="modal-footer">
   							<button type="submit" id="btnLogin" class="btn btn-info">Login</button>
   							<button type="reset" class="btn btn-warning">Reset</button>
   						</div>
   					</div>
   					</form>
   				</div>
   			</div>
   		</div>
   </section>
   <!-- Footer - info -->
   <section id="footer">
   		<div class="container text-center">
   			<p>Made With <i class="fa fa-heart-o"></i>by Rajesh Bhushan</p>
   		</div>
   </section>
   <!-- Footer End -->
   <script src="<c:url value="/resources/js/smooth-scroll.js"/>"></script>
   <script src="<c:url value="/resources/js/register.js"/>"></script>
   <script src="<c:url value="/resources/js/contact.js"/>"></script>
   <script src="<c:url value="/resources/js/login.js"/>"></script>
   <script>
		var scroll = new SmoothScroll('a[href*="#"]');
	</script>
</body>
<!--password validation Regex /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}/ -->
</html>
