<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz06</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</head>
<body>
	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
	    	"저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});	
	
		Iterator<String> iter = goodsList.iterator();
	%>
	
	<div class="container">
		<h2 class="text-center">장보기 목록</h2>
		<table class="table text-center">
			<thead>
				<tr>
					<th>번호</th>					
					<th>품목</th>					
				</tr>
			</thead>
			<%			
				int i = 1;
				while (iter.hasNext()){
				String goods = iter.next();
			%>
			<tbody>
				<tr>
					<th>
						<%= i %>	
					</th>
					<td>
						<%= goods %>	
					</td>
				</tr>
			<%
				i++;
				}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>