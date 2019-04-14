<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FlightSearch</title>
<link href="<c:url value="/resources/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/mdb.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/fontawesome.min.css" />"
	rel="stylesheet">
</head>
<header>
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark green scrolling-navbar">
		<a class="navbar-brand" href="<c:url value="/" />"><strong>FlightSearch</strong></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="<c:url value="/" />">Home <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item">
                    <a class="nav-link" href="<c:url value="/flights"/>">Search Flights</a>
                </li>
				<li class="nav-item active"><a class="nav-link"
					href="<c:url value="#"/>">Sign In</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="/register"/>">Sign Up?</a></li>
			</ul>
		</div>
	</nav>
</header>
<body>
	<div class="container" style="margin-top: 4.2em">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="container-fluid">
					<!-- Card -->
					<div class="card">
						<!-- Card image -->
						<div class="view overlay">
							<img class="card-img-top"
								src="<c:url value="/resources/imgs/login_user.png" />"
								alt="Card image cap" height="405px" width="80px">
						</div>
						<!-- Card content -->
						<div class="card-body">
							<!-- Title -->
							<h4 class="h3-responsive card-title">Login</h4>
							<!-- Text -->
							<form:form method="POST" modelAttribute="loginForm" >
								<form:input type="email" placeholder="Username"
									class="form-control mb-4" path="username"></form:input>
								<form:input type="password" placeholder="Password"
									class="form-control mb-4" path="password"></form:input>
								<input type="submit" class="btn btn-success" value="Login"
									action="<c:url value="/login"/>">
							</form:form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
</body>
</html>