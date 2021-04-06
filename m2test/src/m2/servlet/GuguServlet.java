package m2.servlet;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import m2.model2.GuguService;

//c controlvar
@WebServlet("/mvc/gugu2")
public class GuguServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 요청 분석
		int dan = Integer.parseInt(request.getParameter("dan"));
		System.out.println(dan+"<--dan GuguServlet.doGet()");
		
		//2.요청 처리 요구
		GuguService service = new GuguService();
		ArrayList<String> list = service.getGugudan(dan);
		
		//html을 다른 곳에서 하도록 위임 - 포워드 : request response model 넘김
		//3. 출력을 위임(요청&응답을 포워딩 + 모델값(list))
		request.setAttribute("list", list);// setAttribute(String, Object); Object는 모든 참조 타입 가능
		//꺼낼 때는 강제 타입변환으로 ArrayList로 바꿔줌
		RequestDispatcher rd = request.getRequestDispatcher("/mvc/gugu2.jsp");
		rd.forward(request, response);
		//list 넘기는 방법? 1. session으로 넘김 - 그런데 계속 존재 2. 추가로 데이터를 더 넣음(list를 request에 넣음)
	}

}
