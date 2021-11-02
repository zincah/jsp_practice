<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
<style>
	body{
		font-family: Courier New;
		background-color: #5F4541;
		color: beige;
	}
</style>
</head>
<body>

	<div class="container my-5">
		<div style="padding:10% 30%">
			<form method="post" action="game.jsp">
				<div class="text-center my-5">
					<h4>pls put your names below :)</h4>
				</div>
			
			<%
				int su = Integer.parseInt(request.getParameter("su"));
			
				for(int i = 0; i < su; i++){
					%>
					<div class="input-group mb-5">
						  <span class="input-group-text" id="inputGroup-sizing-default" style="background-color:#554543; color: beige;">Name</span>
						  <input type="text" name="name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" style="background-color:#bea79179">
					</div>
				<%	
				}
		
			%>
				<div class="text-end my-5">
					<button class="btn btn-outline-warning">Join</button>
					<a href="input.html"><button type="button" class="btn btn-outline-secondary">Back</button></a>
				</div>
			</form>
		</div>
	</div>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>