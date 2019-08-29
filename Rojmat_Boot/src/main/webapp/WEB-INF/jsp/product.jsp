<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Product</title>	
	<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="<c:url value="/resources/css/product.css"/>" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.9.0/jquery.validate.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>
<body>
	<!-- Navigation Bar -->	
	<jsp:include page="userheader.jsp"/>	
	<h1 style="text-align:center;">Products Details</h1>
	<div class="container">
		<div class="row">
			<form:form action="${pageContext.request.contextPath}/product/saveProduct" method="POST" id="myForm" modelAttribute="command">
			<div class="col-md-5">
				<h3>Product</h3>
				<div class="form-group">
					<form:label path="pid">Product Id :</form:label>
					<form:input path="pid" id="pid" value="${product.pid}" class="form-control" autocomplete="off" placeholder="Product Id" readonly="true"/>
					<small id="productidhk"></small>
				</div>
				<div class="form-group">
					<form:label path="name">Product Name :</form:label>
					<form:input path="name" id="name" value="${product.name}" class="form-control" autocomplete="off" placeholder="Product Name"/>
					<small id="namechk"></small>
				</div>
				<div class="form-group">
					<form:label path="hsncode">HSN Code :</form:label>
					<form:input path="hsncode" id="hsncode" value="${product.hsncode}" class="form-control" autocomplete="off" placeholder="HSN Code"/>
					<small id="hsncodechk"></small>
				</div>
				<div class="form-group">
					<form:label path="price">Price :</form:label>
					<form:input path="price" id="price" value="${product.price}" class="form-control" autocomplete="off" placeholder="Price"/>
					<small id="pricechk"></small>
				</div>
				<div class="form-group">
					<form:label path="category.cid">Product Category: </form:label>
					<form:select path="category.cid" cssStyle="width:150px;" id="category" name="category">
					<option value="" selected="selected">Select a Type</option>
					<c:forEach items="${categories}" var="category">
						<option value="${category.cid}">${category.categoryname}</option>
					</c:forEach>
					<small id="categorychk"></small>
					</form:select>
				</div>
				<div class="form-group">
					<form:label path="unit.unitid">Unit: </form:label>
					<form:select path="unit.unitid" cssStyle="width:150px;" id="unit" name="unit">
					<small id="unitchk"></small>
					<option value="-1">Select a Type</option>
					<c:forEach items="${units}" var="unit">
						<option value="${unit.unitid}">${unit.unitname}</option>
					</c:forEach>
				</form:select>
				</div>
				<div class="form-group">
					<form:label path="gst.gstid">GST: </form:label>
					<form:select path="gst.gstid" cssStyle="width:150px;" id="gst" name="gst">
					<small id="gstchk"></small>
					<option value="-1" selected="selected">Select a Type</option>
					<c:forEach items="${gsts}" var="gst">
						<option value="${gst.gstid}">${gst.percentage}</option>
					</c:forEach>
				</form:select>
				</div>
				<input type="submit" class="btn btn-primary" id="savebtn" value="Save"/>
			</div>
			</form:form>
			<div class="col-md-6">
				<h3>Product List</h3>
				<c:if test="${!empty products }">
					<table id="tbid" class="table table-striped display table-hover" style="width:100%;">
						<thead>
							<tr>
								<th>Pid</th>
								<th>Name</th>
								<th>HSN Code</th>
								<th>Price</th>
								<th>Category</th>
								<th>Unit</th>
								<th>GST</th>
								<th>Actions</th>
							</tr>
						</thead>
						<c:forEach items="${products}" var="product">
							<tr>
								<td><c:out value="${product.pid}"/></td>
								<td><c:out value="${product.name}"/></td>
								<td><c:out value="${product.hsncode}"/></td>
								<td><c:out value="${product.price}"/></td>
								<td><c:out value="${product.category.categoryname}"/></td>
								<td><c:out value="${product.unit.unitname}"/></td>
								<td><c:out value="${product.gst.percentage}"/></td>
								<td><a href="editProduct?pid=${product.pid}">Edit</a> | <a href="deleteProduct?pid=${product.pid}">Delete</a></td>
							</tr>
						</c:forEach>	
					</table>
				</c:if>
			</div>
		</div>
	</div>
	<script src="<c:url value="/resources/js/product.js"/>"></script>
</body>
</html>