<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02 - GET METHOD</title>
</head>
<body>

	<%
		String type = request.getParameter("type");
		Date now = new Date();
		String test;
		SimpleDateFormat sdf = null;

		if(type.equals("time")){			
			sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
		} else if (type.equals("date")){			
			sdf = new SimpleDateFormat("현재 날짜는 yyyy년 MM월 dd일 입니다.");
		}
		test = sdf.format(now);
		
	%>

	<div class="container">
		<h2><%= test %></h2>
	</div>
	
</body>
</html>