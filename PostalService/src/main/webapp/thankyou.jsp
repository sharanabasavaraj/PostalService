<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank_you page</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/thankyou1.css">
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
#thnk{
	margin-left: 30%;
	margin-top: 50%;
}
#msg{
margin-left: 42%;
}
</style>
</head>
<body>
	 <div>
		<%@include file="header.jsp"%>
	</div>
		
	<div class="col-md-9">
	
		<c:if test="${fn:length(list) gt 0 }">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Parcel Details</h3>
				</div>
				<div class=" table table-hover table-bordered">
					<table class=" table table-bordered">
						<thead>
							<tr>
								<td>Recipient Name</td>
								<td>Type of Parcel</td>
								<td>Parcel Weight</td>
								<td>Ship Date</td>
								<td>Ship Time</td>
								<td>Mode Of Address</td>
								<td>Ship Address</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list }" var="parcel">
								<tr>
									<td><c:out value="${parcel.getName()}"></c:out></td>
									<td><c:out value="${parcel.getpType()}"></c:out></td>
									<td><c:out  value="${parcel.getWeight()}"></c:out></td>
									<td><c:out  value="${parcel.getDate()}"></c:out></td>
									<td><c:out  value="${parcel.getTime()}"></c:out>
									<c:out  value="${parcel.getFormat()}"></c:out></td>
									<td><c:out value="${parcel.getaType()}">:</c:out></td>
									<td><c:out  value="${parcel.getAddress()}"></c:out></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
	
				</div>
			
			</div>
			
		</c:if>
			<h3 id="msg">THANK YOU FOR USING OUR WEBSITE...</h3>
		 <div id="logout" >
			 <a href="login.jsp" class=" pull-right">Logout</a>
		</div> 
	</div>
	<div>
		<%@include file="footer.jsp"%>
	</div>
	
</body>
</html>