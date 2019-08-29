<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>GST</title>	
		<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="<c:url value="/resources/css/gst.css"/>" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>
<body>
	<!-- Navigation Bar -->	
	<jsp:include page="userheader.jsp"/>	
	<h1 style="text-align:center;">GST Details</h1>
	<div class="container">
		<div class="row">
			<form:form action="${pageContext.request.contextPath}/gst/saveGst" method="POST" id="myForm" modelAttribute="command">
			<div class="col-md-5">
				<h3>Add GST</h3>
				<div class="form-group">
					<form:label path="gstid">cid :</form:label>
					<form:input path="gstid" id="gstid" value="${gst.gstid}" class="form-control" autocomplete="off" placeholder="GST Id" readonly="true"/>
					<small id="gstidhk"></small>
				</div>
				<div class="form-group">
					<form:label path="percentage">Percentage :</form:label>
					<form:input path="percentage" id="percentage" value="${gst.percentage}" class="form-control" autocomplete="off" placeholder="Percentage"/>
					<small id="percentagechk"></small>
				</div>
				<button class="btn btn-primary" id="savebtn">Save</button>
			</div>
			</form:form>
			<div class="col-md-6">
				<h3>GST List</h3>
				<c:if test="${!empty gsts }">
					<table id="tbid" class="table table-striped display table-hover" style="width:100%;">
						<thead>
							<tr>
								<th>GST ID</th>
								<th>Percentage</th>
								<th>Actions</th>
							</tr>
						</thead>
						<c:forEach items="${gsts}" var="gst">
							<tr>
								<td><c:out value="${gst.gstid}"/></td>
								<td><c:out value="${gst.percentage}"/></td>
								<td><a href="editGst?gstid=${gst.gstid}">Edit</a> | <a href="deleteGst?gstid=${gst.gstid}">Delete</a></td>
							</tr>
						</c:forEach>	
					</table>
				</c:if>
			</div>
		</div>
	</div>
	<script src="<c:url value="/resources/js/gst.js"/>"></script>
</body>
</html>