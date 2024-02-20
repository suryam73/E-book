<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.BookDAOImpl"%>
<%@ page import="com.entity.BookDtls"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Edit Book Page</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						
							<h4 class="text-center">Edit Book</h4>

							

				
							<%
							int id = Integer.parseInt(request.getParameter("id"));
							BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());	
							BookDtls b = dao.getBookById(id);
							%>
							<form action="../editbooks" method="post">
							<input type="hidden" name="id" value="<%=b.getBookId()%>">
							<div class="form-group">
								<label for="bname">Book Name</label> <input name="bname"
									type="text" class="form-control" id="bname"
									value="<%=b.getBookName()%>">
							</div>

							<div class="form-group">
								<label for="author">Author Name</label> <input name="author"
									type="text" class="form-control" 
									value="<%=b.getAuthor()%>">
							</div>

							<div class="form-group">
								<label for="price">Price</label> <input name="price"
									type="number" class="form-control" 
									value="<%=b.getPrice()%>">
							</div>

							<div class="form-group">
								<label for="status">Book Status</label> <select name="status"
									class="form-control" >
									<%
									if ("Active".equals(b.getStatus())) {
									%>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									<%
									} else {
									%>
									<option value="Active">Active</option>
									<%
									}
									%>
								</select>
							</div>
							

							<button type="submit" class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>