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
	<jsp:include page="userheader.jsp"/>	
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