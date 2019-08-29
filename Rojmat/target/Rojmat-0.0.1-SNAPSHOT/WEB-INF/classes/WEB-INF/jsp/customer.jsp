<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="<c:url value="/resources/css/customer.css"/>" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
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
        	<a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link">Products</a>
            <ul class="dropdown-menu">
	            <li><a href="${pageContext.request.contextPath}/category/addCategory">Category</a></li>
	            <li><a href="${pageContext.request.contextPath}/product/addProduct">Product</a></li>
	            <li class="divider"></li>
	            <li><a href="${pageContext.request.contextPath}/unit/addUnit">Unit</a></li>
	            <li><a href="${pageContext.request.contextPath}/gst/addGst">GST</a></li>
            </ul>
        </li>
      	<li class="nav-item dropdown">
        	<a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link">Payment</a>
            <ul class="dropdown-menu">
	            <li><a href="${pageContext.request.contextPath}/paymentt/paytype">Payment Mode</a></li>
	            <li class="divider"></li>
	            <li><a href="${pageContext.request.contextPath}/sales/addsales">Sales Payment</a></li>
	            <li><a href="${pageContext.request.contextPath}/purchase/addpurchasepay">Purchase Payment</a></li>
            </ul>
        </li>
        <li class="nav-item dropdown">
        	<a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link">Ledger</a>
            <ul class="dropdown-menu">
	            <li><a href="${pageContext.request.contextPath}/cust/addcustomer">Customer</a></li>
	            <li><a href="${pageContext.request.contextPath}/supp/addsupplier">Supplier</a></li>
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
	<div class="container">
		<div class="row">
			<h3>Add/Edit Customer</h3>
			<form:form action="${pageContext.request.contextPath}/cust/savecustomer" method="POST" id="myForm" modelAttribute="command">
			<div class="col-md-4">
				<div class="form-group">
					<form:label path="custid">Customer Id :</form:label>
					<form:input path="custid" id="custid" value="${customer.custid}" class="form-control" autocomplete="off" placeholder="Customer Id" readonly="true"/>
					<small id="custidchk"></small>
				</div>
			</div>	
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="customername">Customer Name :</form:label>
					<form:input path="customername" id="customername" value="${customer.customername}" class="form-control" autocomplete="off" placeholder="Customer Name"/>
					<small id="customernamechk"></small>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="gstinno">GSTIN :</form:label>
					<form:input path="gstinno" id="gstinno" value="${customer.gstinno}" class="form-control" autocomplete="off" placeholder="GSTIN NO"/>
					<small id="gstinnochk"></small>
				</div>
			</div>	
			<div class="col-md-4">
				<div class="form-group">
					<form:label path="panno">PAN :</form:label>
					<form:input path="panno" id="panno" value="${customer.panno}" class="form-control" autocomplete="off" placeholder="PAN NO"/>
					<small id="pannochk"></small>			
				</div>
			</div>	
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="address">Address :</form:label>
					<form:input path="address" id="address" value="${customer.address}" class="form-control" autocomplete="off" placeholder="Address"/>
					<small id="addresschk"></small>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="pincode">PinCode :</form:label>
					<form:input path="pincode" id="pincode" value="${customer.pincode}" class="form-control" autocomplete="off" placeholder="Category Name"/>
					<small id="pincodechk"></small>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="state.stateid">State: </form:label>
					<form:select path="state.stateid" cssStyle="width:150px;" id="state" name="state" class="form-control">
					<option value="" selected="selected">-Select-</option>
					<c:forEach items="${states}" var="state">
						<option value="${state.stateid}">${state.statename}</option>
					</c:forEach>
					<small id="statechk"></small>
					</form:select>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="city">City :</form:label>
					<form:input path="city" id="city" value="${customer.city}" class="form-control" autocomplete="off" placeholder="City"/>
					<small id="citychk"></small>
				</div>
			</div>	
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="mobileno">Mobile :</form:label>
					<form:input path="mobileno" id="mobileno" value="${customer.mobileno}" class="form-control" autocomplete="off" placeholder="Mobile"/>
					<small id="mobilnochk"></small>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="email">Email :</form:label>
					<form:input path="email" id="email" value="${customer.email}" class="form-control" autocomplete="off" placeholder="Email"/>
					<small id="emailchk"></small>
				</div>
			</div>	
				<button class="btn btn-primary" id="savebtn">Save</button>
			</form:form>
		</div>
		<div class="row1">
			<div class="col-md-12">
				<h3>Customer List</h3>
				<c:if test="${!empty customers }">
					<table id="tbid" class="table table-striped display table-hover" style="width:100%;">
						<thead>
							<tr>
								<th>Cid</th>
								<th>Customer Name</th>							
								<th>GSTIN</th>
								<th>PAN</th>
								<th>Address</th>
								<th>Pincode</th>
								<th>State</th>
								<th>City</th>
								<th>Mobile</th>
								<th>Email</th>
								<th>Actions</th>
							</tr>
						</thead>
						<c:forEach items="${customers}" var="customer">
							<tr>
								<td><c:out value="${customer.custid}"/></td>
								<td><c:out value="${customer.customername}"/></td>
								<td><c:out value="${customer.gstinno}"/></td>
								<td><c:out value="${customer.panno}"/></td>								
								<td><c:out value="${customer.address}"/></td>
								<td><c:out value="${customer.pincode}"/></td>
								<td><c:out value="${customer.state.statename}"/></td>
								<td><c:out value="${customer.city}"/></td>
								<td><c:out value="${customer.mobileno}"/></td>
								<td><c:out value="${customer.email}"/></td>
								<td><a href="editcustomer?custid=${customer.custid}">Edit</a> | <a href="deletecustomer?custid=${customer.custid}">Delete</a></td>
							</tr>
						</c:forEach>	
					</table>
				</c:if>
			</div>
		</div>
	</div>
	<script src="<c:url value="/resources/js/customer.js"/>"></script>
</body>
</html>