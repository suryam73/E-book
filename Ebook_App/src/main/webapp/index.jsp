<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
    <%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.BookDAOImpl"%>
<%@ page import="com.entity.BookDtls"%>
<%@ page import="com.entity.User"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBOOk</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
background: url("img/b.jpg");
height: 50vh;
width: 100%;
background-size: cover;
background-repeat: no-repeat;

}
.crd-oh:hover{
background-color:#fcf7f7;
}
</style>
</head>
<body  style="background-color:#f7f7f7;">
<%@include file="all_component/navbar.jsp"%>
<%
User u=(User)session.getAttribute("userobj");
%>

<div class="container-fluid back-img">
<h2 class="text-center text-white p-4"><i class="fas fa-book mr-2"></i>EBook Management System</h2>
</div>


<!-- Start Recent Book -->
	<div class="container">
	<h3 class="text-center">Recent Book</h3>
		<div class="row">
		<%
		BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list2 =dao2.getRecentBooks();
		for(BookDtls b: list2){
		%>
			<div class="col-md-3">
				<div class="card crd-oh">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px" class="img-thumblin">
							<p><%=b.getBookName() %></p>
							<p><%=b.getAuthor() %></p>
							
							<%if(b.getBookCategory().equals("Old")) 
							{%>
							<p>Categories: <%=b.getBookCategory() %></p>
								<div class="row justify-content-center">
								<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm mL-1 ">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1 "><%=b.getPrice() %></a>
							</div>
							<%}else{%>
								<p>Categories: <%=b.getBookCategory() %></p>
							<div class="row justify-content-center">
							
							<%if(u==null){
							%>
							
							<a href="login.jsp" class="btn btn-danger btn-sm mr-1"><i class="fas fa-cart-plus mr-1"></i>Add Cart</a>
								
							<% } else{%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm mr-1"><i class="fas fa-cart-plus mr-1"></i>Add Cart</a>
								
							<%} %>
							
								<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm mL-1 ">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1 "><%=b.getPrice() %></a>
							</div>
							<%}
							%>
							
							
							
					</div>
				</div>
			</div>
		<% 
		}
		%>
		
		</div><br>
		<div class="text-center mt-1">
				<a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
				</div>
		</div>
			
	<!-- End Recent Book -->
	<hr>
	<!-- Start New Book -->
	<div class="container">
	<h3 class="text-center">New Book</h3>
		<div class="row">
		
		<%
		BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list =dao.getNewBook();
		for(BookDtls b: list){
		%>
		<div class="col-md-3 ">
				<div class="card crd-oh">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px" class="img-thumblin">
							<p><%=b.getBookName() %></p>
							<p><%=b.getAuthor() %></p>
							<p>Categories:<%=b.getBookCategory() %></p>
							<div class="row ">
							
							<%if(u==null){
							%>
							
							<a href="login.jsp" class="btn btn-danger btn-sm mr-1"><i class="fas fa-cart-plus mr-1"></i>Add Cart</a>
								
							<% } else{%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm mr-1"><i class="fas fa-cart-plus mr-1"></i>Add Cart</a>
								
							<%} %>
							
							
								<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm mL-1 ">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1 "><%=b.getPrice()%></i></a>
							</div>
					</div>
				</div>
			</div>
		<% 
		}
		%>
			
	
		</div><br>
		<div class="text-center mt-1">
				<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
				</div>
		</div>
			
	<!-- End New Book -->
	<hr>
	<!-- Start Old Book -->
	<div class="container">
	<h3 class="text-center">Old Book</h3>
		<div class="row">
			<%
		BookDAOImpl dao3=new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list3 =dao3.getOldBooks();
		for(BookDtls b: list3){
		%>
			<div class="col-md-3">
				<div class="card crd-oh">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 150px; height: 200px" class="img-thumblin">
							<p><%=b.getBookName() %></p>
							<p><%=b.getAuthor() %></p>
							<p><%=b.getBookCategory() %></p>
							<div class="row ">
								<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5 ">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1 "><%=b.getPrice()%></i></a>
							</div>
							
							
							
					</div>
				</div>
			</div>
		<% 
		}
		%>
		
			
		
		</div><br>
		<div class="text-center mt-1">
				<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
				</div>
		</div>
			
	<!-- End Old Book -->
	<%@include file="all_component/footer.jsp"%>
</body>
</html>