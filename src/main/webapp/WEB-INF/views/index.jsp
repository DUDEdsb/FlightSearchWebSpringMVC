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
<link href="<c:url value="/resources/mdb.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/fontawesome.min.css" />"
	rel="stylesheet">
</head>
<header>
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark blue scrolling-navbar">
        <a class="navbar-brand" href="#"><strong>FlightSearch</strong></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/flights"/>">Search Flights</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/login"/>">Sign In</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/register"/>">Sign Up?</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<body>
	<div class="container" style="margin-top:4em">
		<h1 class="h1-responsive">Hello World</h1>
		<button class="btn btn-success">Hello</button>

	</div>
</body>
</html>