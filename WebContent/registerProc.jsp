<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %> <!-- JDBC 클래스는 java.sql 패키지에 포함되어 있기 때문에 반드시 임포트해야 함 -->

<%
	// 0. 요청 처리
	String id = request.getParameter("id");
	// out.print(id);
	String pass = request.getParameter("pwd");
	
	// 1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2. 데이터베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
	
	// 3. SQL문 실행
	String sql = "insert into member values('" + id + "','" + pass + "','홍길동',20,'1','서울시','2015-04-17')";
	Statement stmt = con.createStatement();
	int result = stmt.executeUpdate(sql);
	
	out.print(result);
	
	// 4. 데이터베이스와 연결 끊음
	stmt.close();
	con.close();
	
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>