<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Category</title>	
		<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="<c:url value="/resources/css/category.css"/>" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>
<body>
	<!-- Navigation Bar -->	
	<jsp:include page="userheader.jsp"/>	
	<h1 style="text-align:center;">Category</h1>
	<div class="container">
		<div class="row">
			<form:form action="${pageContext.request.contextPath}/category/saveCategory" method="POST" id="myForm" modelAttribute="command">
			<div class="col-md-5">
				<h3>Add Category</h3>
				<div class="form-group">
					<form:label path="cid">cid :</form:label>
					<form:input path="cid" id="cid" value="${category.cid}" class="form-control" autocomplete="off" placeholder="Category Id" readonly="true"/>
					<small id="cidchk"></small>
				</div>
				<div class="form-group">
					<form:label path="categoryname">Category Name :</form:label>
					<form:input path="categoryname" id="categoryname" value="${category.categoryname}" class="form-control" autocomplete="off" placeholder="Category Name"/>
					<small id="categorynamechk"></small>
				</div>
				<button class="btn btn-primary" id="savebtn">Save</button>
			</div>
			</form:form>
			<div class="col-md-6">
				<h3>Category List</h3>
				<c:if test="${!empty categories }">
					<table id="tbid" class="table table-striped display table-hover" style="width:100%;">
						<thead>
							<tr>
								<th>Category ID</th>
								<th>Category Name</th>
								<th>Actions</th>
							</tr>
						</thead>
						<c:forEach items="${categories}" var="category">
							<tr>
								<td><c:out value="${category.cid}"/></td>
								<td><c:out value="${category.categoryname}"/></td>
								<td><a href="editCategory?cid=${category.cid}">Edit</a> | <a href="deleteCategory?cid=${category.cid}">Delete</a></td>
							</tr>
						</c:forEach>	
					</table>
				</c:if>
			</div>
		</div>
	</div>
	<script src="<c:url value="/resources/js/category.js"/>"></script>
</body>
</html>