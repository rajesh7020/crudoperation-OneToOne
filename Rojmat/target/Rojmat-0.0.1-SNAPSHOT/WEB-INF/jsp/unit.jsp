<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Unit</title>	
		<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="<c:url value="/resources/css/unit.css"/>" rel="stylesheet" type="text/css" />
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
	<h1 style="text-align:center;">Unit Management</h1>
	<div class="container">
		<div class="row">
			<form:form action="${pageContext.request.contextPath}/unit/saveUnit" method="POST" id="myForm" modelAttribute="command">
			<div class="col-md-5">
				<h3>Add Unit</h3>
				<div class="form-group">
					<form:label path="unitid">Unit Id :</form:label>
					<form:input path="unitid" id="unitid" value="${unit.unitid}" class="form-control" autocomplete="off" placeholder="Unit Id" readonly="true"/>
					<small id="unitidchk"></small>
				</div>
				<div class="form-group">
					<form:label path="unitname">Unit :</form:label>
					<form:input path="unitname" id="unitname" value="${unit.unitname}" class="form-control" autocomplete="off" placeholder="Unit Name"/>
					<small id="unitnamechk"></small>
				</div>
				<button class="btn btn-primary" id="savebtn">Save</button>
			</div>
			</form:form>
			<div class="col-md-6">
				<h3>Unit List</h3>
				<c:if test="${!empty units }">
					<table id="tbid" class="table table-striped display table-hover" style="width:100%;">
						<thead>
							<tr>
								<th>Unit ID</th>
								<th>Unit Name</th>
								<th>Actions</th>
							</tr>
						</thead>
						<c:forEach items="${units}" var="unit">
							<tr>
								<td><c:out value="${unit.unitid}"/></td>
								<td><c:out value="${unit.unitname}"/></td>
								<td><a href="editUnit?unitid=${unit.unitid}">Edit</a> | <a href="deleteUnit?unitid=${unit.unitid}">Delete</a></td>
							</tr>
						</c:forEach>	
					</table>
				</c:if>
			</div>
		</div>
	</div>
	<script src="<c:url value="/resources/js/unit.js"/>"></script>
</body>
</html>