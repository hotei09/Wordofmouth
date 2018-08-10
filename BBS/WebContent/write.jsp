<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<meta name = "viewport" content = "width=device-width,initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>Word of Mouth</title>
</head>
<body>
		<%
			String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		%>

<nav class="navbar navbar-default">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
		data-target="#bs-example-navbar-collapse-1" aria-expanded="false" >
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="main.jsp"> Word of Mouth </a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	<ul class="nav navbar-nav">
	<li><a href="main.jsp">Main</a></li>
	<li class = "active"><a href="bbs.jsp">Board</a></li>
	</ul>
	<%
		if(userID == null){
	 %>
	 			<ul class="nav navbar-nav navbar-right">
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
		aria-haspopup="true" aria-expended="false">connect<span class="caret"></span></a>
		<ul class="dropdown-menu">
		<li><a href="login.jsp">Login</a></li>
		<li ><a href="join.jsp">Join</a></li>
		</ul> 
		</li>
		</ul>
			
	<%
		} else {
	%>
				<ul class="nav navbar-nav navbar-right">
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
		aria-haspopup="true" aria-expended="false">Configuration<span class="caret"></span></a>
		<ul class="dropdown-menu">
		<li><a href="logoutAction.jsp">Logout</a></li>
		</ul>
		</li>
		</ul>
	<%
		}
	 %>
		</div>
		</nav>

	<div class="container">
		<div class ="row">
		<form method="post" action="writeAction.jsp">
		<table class="table table-striped" style="text-align: center; border: 1px-solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center;">WriteForm</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" placeholder="Subject" name="bbsTitle" maxlength="50"></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="Infomation" name="bbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
					</tr>
				</tbody>
			</table>
					<input type="submit" class="btn btn-primary pull-right" value="Write">
		</form>
			
		</div>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>﻿
<script src="js/bootstrap.js"></script>
</body>
</html>