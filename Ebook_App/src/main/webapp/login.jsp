<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Login</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body  style="background-color:#f0f1f2;">
 
<div class="text-center"><h3 class="text-primary p-2" style="font-size:30px;">Welcome Back!</h3>
<p>Enter your personal Email & password to use all of site features</p></div>
<div class="container p-4 ">
		<div class="row mt-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center">Login</h4>
					
					<c:if test="${not empty failedMsg }">	
		    		<p class="text-center text-danger">${failedMsg}</p>
		    		<c:remove var="failedMsg" scope="session"/>
		    		</c:if>
					
					<c:if test="${not empty succMsg }">	
		    		<p class="text-center text-success">${succMsg}</p>
		    		<c:remove var="succMsg" scope="session"/>
		    		</c:if>
					<form action="login" method="post">
					
					  <div class="form-group">
					    <label for="exampleInputEmail1">Email address</label>
					    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required="required">
					    </div>
					   
					  <div class="form-group">
					    <label for="exampleInputPassword1">Password</label>
					    <input type="password" class="form-control" id="exampleInputPassword1" name="password" required="required" >
					  </div>
					
					  <div class="text-center">
					  <button type="submit" class="btn btn-primary">Login</button><br>
					  <a href="register.jsp">Create Account</a>
					  </div>
					</form>
					
					</div>
				</div>
			</div>
		</div>
</div>

</body>
</html>