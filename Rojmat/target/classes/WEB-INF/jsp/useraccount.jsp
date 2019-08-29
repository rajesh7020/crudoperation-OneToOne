<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Accounting</title>	
	<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="<c:url value="/resources/css/dashboard.css"/>" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
		$('#tblcreditdebit').DataTable({
			"paging": true, 
		    "order": [0, 'desc'],
		});
	</script>
</head>
<body> 
<!-- Navigation Bar -->	
	<jsp:include page="userheader.jsp"/>	
	<h1>Rojmat (Daily Account)</h1><br/>
	<strong>${email}</strong><br/><strong>${userid}</strong><strong>${shopname}</strong>
	<div class="container">
		<div class="row">
			<form:form action="${pageContext.request.contextPath}/user/useraccount" method="POST" id="myForm" modelAttribute="command">
			<div class="col-md-5">
				<h3>Credit Account</h3>
				<div class="form-group">
					<form:label path="openingbalance">Opening Balance :</form:label>
					<form:input path="openingbalance" id="openingBalance" class="form-control" autocomplete="off" placeholder="Opening Balance"/>
					<small id="openingBalancechk"></small>
				</div>
				<div class="form-group">
					<form:label path="debittotalplusdrawertotal">Debit Total + Drawer Total :</form:label>
					<form:input path="debittotalplusdrawertotal" id="debitplusdrawertotal" class="form-control" autocomplete="off"/>
					<small id="debitplusdrawertotalchk"></small>
				</div>
				<div class="form-group">
					<form:label path="todaybusiness">Today Business :</form:label>
					<form:input path="todaybusiness" id="todaybusiness" class="form-control" autocomplete="off"/>
					<small id="todaybusinesschk"></small>
				</div>
				<%-- <div class="form-group">
					<form:label path="date">Date :</form:label>
					<form:input path="date" id="date" value="${user.date}" class="form-control" autocomplete="off"/>
					<small id="datechk"></small>
				</div> --%>
				<button class="btn btn-primary" id="savebtn">Save</button>
				<button class="btn btn-warning" id="savebtn" type="reset">Reset</button>
			</div>
			<div class="col-md-6">
			<h3>Debit Account</h3>
			<input type="button" class="btn btn-primary" value="Add Row" id="addRow"/>&nbsp;&nbsp;
			<input type="button" class="btn btn-danger" id="deleteRow" value="Delete"/><br>
				<table class="table table-hover table-bordered" id="tableid">
					<thead>
						<tr>
							<th>Select</th>
							<th>Amount</th>
							<th>Description</th>
						</tr>
					</thead>
					<tbody>
					</tbody> 
				</table>
				<div class="form-group">
					<form:label path="debittotal">Debit Total:</form:label>
					<form:input path="debittotal" id="debittotal" class="form-control" autocomplete="off"/>
					<small id="debittotalchk"></small>
				</div>
				<div class="form-group">
					<form:label path="drawertotal">Drawer Total :</form:label>
					<form:input path="drawertotal" id="drawertotal" class="form-control" autocomplete="off"/>
					<small id="drawertotalchk"></small>
				</div>
			</div>
			</form:form>
		</div>
			<div class="col-md-12">
				<h3>Credit Debit Account List</h3>
				<c:if test="${!empty creditdebitlist }">
					<table id="tblcreditdebit" class="table table-striped display table-hover" style="width:100%;">
						<thead>
							<tr>
								<th>cid</th>
								<th>Opening Balance</th>
								<th>Debit Total</th>
								<th>Drawer Total</th>
								<th>Debit + drawer</th>
								<th>Today Business</th>
								<th>Date</th>
								<th>Actions</th>
							</tr>
						</thead>
						<c:forEach items="${creditdebitlist}" var="credit">
							<tbody>
							<tr>
								<td><c:out value="${credit.cid}"/></td>
								<td><c:out value="${credit.openingbalance}"/></td>
								<td><c:out value="${credit.debittotal}"/></td>
								<td><c:out value="${credit.drawertotal}"/></td>
								<td><c:out value="${credit.debittotalplusdrawertotal}"/></td>
								<td><c:out value="${credit.todaybusiness}"/></td>
								<td><c:out value="${credit.date}"/></td>
								<td><a href="#" class="btn btn-danger">Delete</a> | <a href="#" class="btn btn-warning">More</a></td>
							</tr>
							</tbody>
						</c:forEach>	
					</table>
				</c:if>
			</div>
		</div>
		<%-- <jsp:include page="userfooter.jsp"/> --%>
	<!-- select distinct credit.cid, credit.openingbalance, credit.debittotal, credit.drawertotal, credit.debittotalplusdrawertotal, credit.todaybusiness, debit.did, debit.amount, debit.description from Credit credit Left Join Debit debit on credit.cid= debit.did; -->
	<script src="<c:url value="/resources/js/dashboard.js"/>"></script>
</body>
</html>