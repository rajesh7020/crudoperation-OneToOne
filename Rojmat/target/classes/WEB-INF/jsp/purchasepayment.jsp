<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Purchase Payment</title>	
		<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="<c:url value="/resources/css/salespurchasepayment.css"/>" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>
<body>
	<!-- Navigation Bar -->	
	<jsp:include page="userheader.jsp"/>	
	<div class="container">
		<div class="row">
			<h3>Add Purchase Payment</h3>
			<form:form action="${pageContext.request.contextPath}/purchase/savepurchasepayment" method="POST" id="myForm" modelAttribute="command">
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="pid">Product Id :</form:label>
					<form:input path="pid" id="pid" value="${purchasePayment.pid}" class="form-control" autocomplete="off" placeholder="Product Id" readonly="true"/>
					<small id="purchasepayidhk"></small>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="invoiceDate">Invoice Date :</form:label>
					<form:input path="invoiceDate" id="invoiceDate" value="${purchasePayment.invoiceDate}" class="form-control" autocomplete="off" placeholder="Invoice Date"/>
					<small id="invoicedatechk"></small>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="invoiceNo">Invoice No :</form:label>
					<form:input path="invoiceNo" id="invoiceNo" value="${purchasePayment.invoiceNo}" class="form-control" autocomplete="off" placeholder="Invoice No"/>
					<small id="invoicenochk"></small>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="paymentdate">Payment Date :</form:label>
					<form:input path="paymentdate" id="paymentdate" value="${purchasePayment.paymentdate}" class="form-control" autocomplete="off" placeholder="Payment Date"/>
					<small id="invoicenochk"></small>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="partyName">Party Name :</form:label>
					<form:input path="partyName" id="partyName" value="${purchasePayment.partyName}" class="form-control" autocomplete="off" placeholder="Party Name"/>
					<small id="partynamechk"></small>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="invoiceAmount">Invoice Amount :</form:label>
					<form:input path="invoiceAmount" id="invoiceAmount" value="${purchasePayment.invoiceAmount}" class="form-control" autocomplete="off" placeholder="Invoice Amount"/>
					<small id="invoiceamountchk"></small>
				</div>
			</div>	
			<div class="col-md-4">
				<div class="form-group">
					<form:label path="paidAmount">Paid Amount :</form:label>
					<form:input path="paidAmount" id="paidAmount" value="${purchasePayment.paidAmount}" class="form-control" autocomplete="off" placeholder="Paid Amount"/>
					<small id="paidamountchk"></small>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="unpaidAmount">Un-Paid/Balance Amount :</form:label>
					<form:input path="unpaidAmount" id="unpaidAmount" value="${purchasePayment.unpaidAmount}" class="form-control" autocomplete="off" placeholder="Paid Amount"/>
					<small id="paidamountchk"></small>
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group">
					<form:label path="paymenttype.payid">Payment Mode: </form:label>
					<form:select path="paymenttype.payid" cssStyle="width:150px;" id="paymenttype" name="paymenttype">
					<small id="paytypechk"></small>
					<option value="-1">Select a Type</option>
					<c:forEach items="${paymenttypes}" var="paymenttype">
						<option value="${paymenttype.payid}">${paymenttype.paymentMode}</option>
					</c:forEach>
				</form:select>
				</div>
			</div>
			<div class="col-md-4">	
				<div class="form-group">
					<form:label path="chequeNoOrTransactionId">Cheque No/Transaction Id :</form:label>
					<form:input path="chequeNoOrTransactionId" id="chequeNoOrTransactionId" value="${purchasePayment.chequeNoOrTransactionId}" class="form-control" autocomplete="off" placeholder="Cheque No/Transaction Id"/>
					<small id="chequeortranchk"></small>
				</div>
			</div>	
				<button class="btn btn-primary" id="savebtn">Save</button>
			</form:form>
		</div>
		<div class="row1">
			<div class="col-md-12">
				<h3>Purchase Payment List</h3>
				<c:if test="${!empty purchasePayments }">
					<table id="tbid" class="table table-striped display table-hover" style="width:100%;">
						<thead>
							<tr>
								<th>Pid</th>
								<th>Invoice Date</th>
								<th>Payment Date</th>
								<th>Party Name</th>
								<th>Invoice Amount</th>
								<th>Paid Amount</th>
								<th>Un-Paid Amount</th>
								<th>Payment Mode</th>
								<th>Cheque No/Transaction Id</th>
								<th>Actions</th>
							</tr>
						</thead>
						<c:forEach items="${purchasePayments}" var="purchasePayment">
							<tr>
								<td><c:out value="${purchasePayment.pid}"/></td>
								<td><c:out value="${purchasePayment.invoiceDate}"/></td>
								<td><c:out value="${purchasePayment.paymentdate}"/></td>
								<td><c:out value="${purchasePayment.partyName}"/></td>
								<td><c:out value="${purchasePayment.invoiceAmount}"/></td>
								<td><c:out value="${purchasePayment.paidAmount}"/></td>
								<td><c:out value="${purchasePayment.unpaidAmount}"/></td>
								<td><c:out value="${purchasePayment.paymenttype.paymentMode}"/></td>
								<td><c:out value="${purchasePayment.chequeNoOrTransactionId}"/></td>
								<td><a href="editpurchasepayment?pid=${purchasePayment.pid}">Edit</a> | <a href="deletepurchasepayment?pid=${purchasePayment.pid}">Delete</a></td>
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