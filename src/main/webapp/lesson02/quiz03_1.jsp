<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz03</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</head>
<body>
	<%!
		public double getBMI(int height, int weight) {
			double BMI = weight / ((height / 100.0) * (height / 100.0));
			return BMI;
		}
	
		public String getResult(double n){
			if(n <= 20) {
				return "저체중";
			} else if(n <= 25){
				return "정상";
			} else if(n <= 30) {
				return "과체중";
			} else{
				return "비만";
			}
		}
	%>
	
	<%
		int height = Integer.parseInt(request.getParameter("height"));
		int weight = Integer.parseInt(request.getParameter("weight"));
		
		double BMIscore = getBMI(height, weight);
		String result = getResult(BMIscore);
	%>
	
	<div class="container">
		<h2>BMI 측정 결과</h2>
		<h1>당신은 <span class="text-info"><%= result %></span> 입니다.</h1>
		<small>BMI 수치: <%= BMIscore %></small>
	</div>
</body>
</html>