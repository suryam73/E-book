<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add books page</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp" />
	</c:if>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">


						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>



						<form action="../add_books" method="post"
							enctype="multipart/form-data">
							<h4 class="text-center">Add Book</h4>
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
								<label for="categories">Book Categories</label> <select
									name="categories" class="form-control" id="categories">
									<option selected disabled>--Select--</option>
									<option value="New">New Book</option>
								</select>
							</div>

							<div class="form-group">
								<label for="status">Book Status</label> <select name="status"
									class="form-control" id="status">
									<option selected disabled>--Select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
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
