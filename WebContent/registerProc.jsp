<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %> <!-- JDBC Ŭ������ java.sql ��Ű���� ���ԵǾ� �ֱ� ������ �ݵ�� ����Ʈ�ؾ� �� -->
<%@ page import = "java.io.*" %>

<%

	// 0. ��û ó��
	request.setCharacterEncoding("UTF-8"); // POST ����϶� �ѱ�ó��
	
	String id = request.getParameter("id");
	// out.print(id);
	String pass = request.getParameter("pwd");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	
	// 1. JDBC ����̹� �ε�
	Class.forName("oracle.jdbc.driver.OracleDriver");

	// 2. �����ͺ��̽��� ����
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jspuserc", "jsp1234");
	
	// 3. SQL�� ����
/* 	1) Statement ��ü �̿� - ��ŷ���ϱ� ������ ��� ����!!!
 	String sql = "insert into member values('" + id + "','" + pass + "','ȫ�浿',20,'1','�����','2015-04-17')";
	Statement stmt = con.createStatement();
	int result = stmt.executeUpdate(sql);
	
	out.print(result); */
	
//  2) PreparedStatement ��ü �̿�
    String sql = "insert into member values(?, ?, ?, ?, ?, ?, default)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	// ���ε� - ?�κ� ä������
	pstmt.setString(1, id);  // ���ڿ��̱⶧���� setString ���
	pstmt.setString(2, pass);
	pstmt.setString(3, name);
	pstmt.setInt(4, Integer.parseInt(age)); // ����ȯ 
	pstmt.setString(5, gender);
	pstmt.setString(6, addr);
	
	int result = pstmt.executeUpdate();
	
	out.print(result);
	
	// 4. �����ͺ��̽��� ���� ����
	// stmt.close();
	pstmt.close();
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