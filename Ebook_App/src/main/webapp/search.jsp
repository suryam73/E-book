<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.BookDAOImpl"%>
<%@ page import="com.entity.BookDtls"%>
<%@ page import="java.util.List"%>

<%@ page import="com.entity.User"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Recent Book</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">

.crd-oh:hover{
background-color:#fcf7f7;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-3">
	<%
User u=(User)session.getAttribute("userobj");
%>		
			
		<%
		String ch=request.getParameter("ch");
		BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list2 =dao2.getBookBySerch(ch);
		for(BookDtls b: list2){
		%>
			<div class="col-md-3">
				<div class="card crd-oh mt-2">
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
			
		
		</div>
	</div>
</body>
</html>