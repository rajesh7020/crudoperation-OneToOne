<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Payment</title>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
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
			text-align: right;
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
		@media screen and (min-width: 768px) {
		.dropdown:hover .dropdown-menu, .btn-group:hover .dropdown-menu{
			display: block;
		}
		.dropdown-menu{
			margin-top: 0;
			position: relative;
		}
		.dropdown-toggle{
			margin-bottom: 2px;
		}
		.dropdown-toggle::after{
			display: none;
		}
		.navbar .dropdown-toggle, .nav-tabs .dropdown-toggle{
			margin-bottom: 0;
		}
		.dropdown-menu a {
			font-size: 15px;
			font-weight: 16px;
			border: 2px;
			border-radius: 12px;
			align-content: left;
		}
	</style>
</head>
<body>
	<!-- Navigation Bar -->		
<section id="nav-bar">
	<nav class="navbar navbar-expand-lg navbar-light">
 	<a class="navbar-brand" href="#"><img alt="" src=""></a>
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    	<span class="navbar-toggler-icon"></span>
  	</button>
  	<div class="collapse navbar-collapse" id="navbarNav">
    	<ul class="navbar-nav ml-auto">
      	<li class="nav-item">
        	<a class="nav-link" href="${pageContext.request.contextPath}/user/useraccount">Rojmat</a>
      	</li>
      	<li class="nav-item dropdown">
        	<a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link">Products <b class="caret"></b></a>
            <ul class="dropdown-menu">
	            <li><a href="${pageContext.request.contextPath}/category/addCategory">Category</a></li>
	            <li><a href="${pageContext.request.contextPath}/product/addProduct">Product</a></li>
	            <li class="divider"></li>
	            <li><a href="${pageContext.request.contextPath}/unit/addUnit">Unit</a></li>
	            <li><a href="${pageContext.request.contextPath}/gst/addGst">GST</a></li>
            </ul>
        </li>
      	<li class="nav-item dropdown">
        	<a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link">Payment <b class="caret"></b></a>
            <ul class="dropdown-menu">
	            <li><a href="${pageContext.request.contextPath}/paymentt/paytype">Payment Mode</a></li>
	            <li class="divider"></li>
	            <li><a href="${pageContext.request.contextPath}/sales/addsales">Sales Payment</a></li>
	            <li><a href="${pageContext.request.contextPath}/purchase/addpurchasepay">Purchase Payment</a></li>
            </ul>
        </li>
        <li class="nav-item dropdown">
        	<a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link">Ledger<b class="caret"></b></a>
            <ul class="dropdown-menu">
	            <li><a href="${pageContext.request.contextPath}/cust/addcustomer">Customer</a></li>
	            <li><a href="${pageContext.request.contextPath}/sup/addsupplier">Supplier</a></li>
	            <li class="divider"></li>
	            <li><a href="${pageContext.request.contextPath}/state/addstate">States</a></li>
            </ul>
        </li>
      	<li class="nav-item">
        	<a class="nav-link" href="${pageContext.request.contextPath}/user/invoicehome">Invoice</a>
      	</li>
      	<li class="nav-item">
        	<a class="nav-link" href="${pageContext.request.contextPath}/user/userprofilehome">User Profile</a>
      	</li>
       	<li class="nav-item">
        	<a class="nav-link" href="${pageContext.request.contextPath}/">LogOut</a>
      	</li>
    </ul>
  </div>
</nav>
</section>		
	<h1 style="text-align:center;">Payment</h1>
	
</body>
</html>