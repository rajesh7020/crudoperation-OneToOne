<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>States</title>	
		<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="<c:url value="/resources/css/states.css"/>" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>
<body>
	<!-- Navigation Bar -->	
	<jsp:include page="userheader.jsp"/>	
	<h1 style="text-align:center;">State Manage</h1>
	<div class="container">
		<div class="row">
			<form:form action="${pageContext.request.contextPath}/state/savestate" method="POST" id="myForm" modelAttribute="command">
			<div class="col-md-5">
				<h3>Add States</h3>
				<div class="form-group">
					<form:label path="stateid">State Id :</form:label>
					<form:input path="stateid" id="stateid" value="${state.stateid}" class="form-control" autocomplete="off" placeholder="State Id" readonly="true"/>
					<small id="stateidchk"></small>
				</div>
				<div class="form-group">
					<form:label path="statename">Unit :</form:label>
					<form:input path="statename" id="statename" value="${state.statename}" class="form-control" autocomplete="off" placeholder="State Name"/>
					<small id="statenamechk"></small>
				</div>
				<button class="btn btn-primary" id="savebtn">Save</button>
			</div>
			</form:form>
			<div class="col-md-6">
				<h3>States List</h3>
				<c:if test="${!empty states }">
					<table id="tbid" class="table table-striped display table-hover" style="width:100%;">
						<thead>
							<tr>
								<th>State ID</th>
								<th>State Name</th>
								<th>Actions</th>
							</tr>
						</thead>
						<c:forEach items="${states}" var="state">
							<tr>
								<td><c:out value="${state.stateid}"/></td>
								<td><c:out value="${state.statename}"/></td>
								<td><a href="editstate?stateid=${state.stateid}">Edit</a> | <a href="deletestate?stateid=${state.stateid}">Delete</a></td>
							</tr>
						</c:forEach>	
					</table>
				</c:if>
			</div>
		</div>
	</div>
	<script src="<c:url value="/resources/js/states.js"/>"></script>
</body>
</html>