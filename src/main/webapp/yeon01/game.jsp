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

	<div class="contatiner my-5">
	
	<%
		request.setCharacterEncoding("UTF-8");
		String[] names = request.getParameterValues("name");
		
		int randomsu = (int)(Math.random()*names.length);
	
		String winner = "";
		String[] nowin = new String[names.length-1];
		int x = 0;
		
		for(int i = 0; i<names.length; i++){
			if(randomsu == i){
				winner = names[i];
			}else{
				nowin[x] = names[i];
				x++;
			}
		}
		


	%>
	
		<div class="container my-5">
			<div style="padding: 10% 30%;" class="text-center">
				<h1><%=winner %></h1>
				<h4>You are chosen! Congratulations;)</h4>
			</div>
			<div class="text-center my-3">
			<%
				for(int i = 0; i < x; i++){
					%>
						<h6><%=nowin[i] %> : pass</h6>
					<% } %>
			
			</div>
			<div class="my-5 text-center">
				<a href="input.html"><button type="button" class="btn btn-outline-warning">Regame;)</button></a>
			</div>
		</div>
		
	
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>