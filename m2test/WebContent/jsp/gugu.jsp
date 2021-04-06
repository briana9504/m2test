<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jsp방식 구구단</h1>
	<div>안녕하세요</div>
	<div>집 작업 테스트</div>
	<!-- jap방식은 재사용하기 힘들고 코딩이 지저분해보임 -->
	<%
		int dan = Integer.parseInt(request.getParameter("dan"));
		//Integer 클래스 이름 : int와 비슷하지만 참조타입이다. 
		//parseInt: static 매서드 - 객체를 안만들고 클래스이름과 매서드 이름만으로 호출 할 수 있어서 - integer -> int 로 바꾸는것을 언박싱이라고 함(참조타입->기본타입)
		//request : 클라이언트의 http 요청 정보를 저장한 객체(클래스) - static 아님 servlet에 매개변수에 있음
		//getParameter: request의 메소드 리턴타입(String), name이란 이름으로 지정된 파라미터에 할당된 값을 리턴한다.지정된 이름의 파라미터가 없으면 null을 리턴한다.
		System.out.println(dan+"<--dan");//dan 넘어왔는지 안 넘어왔는지 디버깅
		
		for(int i=1; i<10; i++) {
	%>
			<div><%=dan%>*<%=i %>=<%=dan*i %></div>
	<%		
		}
	%>

</body>
</html>