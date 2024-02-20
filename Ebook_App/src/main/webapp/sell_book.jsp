<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell book</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">

						<form action="add_old_book" method="post"
							enctype="multipart/form-data">
							<input type="hidden" value="${userobj.email}" name="user">
							<h4 class="text-center text-primary p-1">Sell Book</h4>
							
							<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
							
							
							<div class="form-group">
								<label for="bname">Book Name</label> <input name="bname"
									type="text" class="form-control" id="bname">
							</div>

							<div class="form-group">
								<label for="author">Author Name</label> <input name="author"
									type="text" class="form-control" id="author">
							</div>

							<div class="form-group">
								<label for="price">Price</label> <input name="price"
									type="number" class="form-control" id="price">
							</div>

							<div class="form-group">
								<label for="bimg">Upload Photo</label> <input name="bimg"
									type="file" class="form-control-file" id="bimg">
							</div>

							<button type="submit" class="btn btn-primary">Add</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>