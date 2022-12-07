package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex02")
public class UrlMappingEx02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// Servlet : 자바 + html
		// 1 ~ 10 까지의 합계
		
		int sum = 0;
		for(int i = 0; i < 10; i++) {
			sum += 1;
		}
		// println 줄바꿈 안먹힘
		out.print("<html><head><title>합계</title></head><body>");
		out.print("합계:<strong>" + sum + "</strong>");
		out.print("</body></html>");
	}
}
