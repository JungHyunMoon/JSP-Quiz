<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz05</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</head>
<body>
	
	<%!
		public String[] lengthConverter(int num, String[] target){
			String[] result = new String[target.length];
			int n = 0;
			for(String i : target){
				if(i.equals("inch")){
					result[n] = num / 2.54 + "in";
					n++;
				} else if(i.equals("yard")){
					result[n] = num / 91.44 + "yd";
					n++;
				} else if(i.equals("feet")){
					result[n] = num / 30.48 + "ft";
					n++;
				} else if(i.equals("meter")){
					result[n] = num / 100.0 + "m";
					n++;
				}
			}
			return result;
		}
	%>

	<%
		int num = Integer.parseInt(request.getParameter("num"));
		String[] targetArr = request.getParameterValues("target");
	%>
	
	<div class="container">
		<h2>길이 변환 결과</h2>
		<strong><%=num%>cm</strong>
		<hr>
		<strong>
			<%
				if(targetArr != null){
					String[] converted = lengthConverter(num, targetArr);
					for(String i : converted){
						out.print(i + "<br>");
					}					
				}
			%>
		</strong>
	</div>

	
</body>
</html>