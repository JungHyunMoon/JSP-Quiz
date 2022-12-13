<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<!-- 1. 1부터 n까지의 합계를 구하는 함수  -->
	<%! 
		public int getSum(int n) {
			int sum = 0;
			for(int i = 1; i <= n; i++){
				sum+=i;
			}
			return sum;
		}
	%>
	<h2>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h2>
	
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0; i < scores.length; i++){
			sum+=scores[i];
		}
		double average = (double)sum / scores.length;
	%>
	<h2>평균 점수는 <%= average %>입니다.</h2>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		Iterator<String> iterator = scoreList.iterator();
		
		int score = 0;
		while(iterator.hasNext()){
			String iter = iterator.next();
			if(iter.equals("O")){
				score += 100 / scoreList.size();
			}
		}
	%>
	<h2>채점 결과는 <%= score %>입니다.</h2>
	
	<%
		String birthDay = "20010820";
		String year = birthDay.substring(0, 4);
		Integer num = Integer.parseInt(year);
		int age = 2022 - num + 1;
		
	%>
	<h2><%= birthDay %>의 나이는 <%= age %>세 입니다.</h2>
		
	
	
</body>
</html>