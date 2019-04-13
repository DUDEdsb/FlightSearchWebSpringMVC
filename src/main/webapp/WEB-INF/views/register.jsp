<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		class="navbar fixed-top navbar-expand-lg navbar-light yellow scrolling-navbar">
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
					href="<c:url value="/login"/>">Sign In</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<c:url value="#"/>">Sign Up?</a></li>
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
								src="<c:url value="/resources/imgs/add-user-ico.jpg" />"
								alt="Card image cap" height="405px" width="80px">
						</div>
						<!-- Card content -->
						<div class="card-body">
							<!-- Title -->
							<h4 class="h3-responsive card-title">Login</h4>
							<!-- Text -->
							<form action="">
								<input type="text" placeholder="Username"
									class="form-control mb-4"> <input type="password"
									placeholder="Password" class="form-control mb-4">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="isAdmin"> <label class="custom-control-label"
										for="isAdmin">Admin?</label>
								</div>
								<input type="submit" class="btn btn-success" value="Register">
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
			<!-- Card -->
		</div>
	</div>
</body>
</html>