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
<%
	String name = (String)session.getAttribute("username");
	if(name!= null){
		String cssClass = " d-none ";
		String notCssClass = " ";
	}else {
		String cssClass = " ";
		String notCssClass = "d-none";
	}
%>
<header>
  		<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark scrolling-navbar">
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
                    <a class="nav-link active" href="<c:url value="#"/>">Search Flights</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link ${cssClass}" href="<c:url value="/login"/>">Sign In</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${cssClass}" href="<c:url value="/register"/>">Sign Up?</a>
                </li>
            </ul>
            <span class="nav-text text-white ${notcssClass} }"><%= name%></span>
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