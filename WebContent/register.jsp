<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> ȸ������ </h1>
<hr>

<form action="registerProc.jsp">
	<label for="id"> ���̵� : </label>
	<input type="text" name="id" id="id"><br>
	
	<label for="pwd"> ��й�ȣ : </label>
	<input type="password" name="pwd" id="pwd"><br>
	
	<label for="name"> �̸� : </label>
	<input type="text" name="name" id="name"><br>
	
	<label for="gender"> ���� : </label>
	<input type="radio" name="gender" id="gender" value="m">����
	<input type="radio" name="gender" id="gender" value="f">����<br>
	
	<label for="age"> ���� : </label>
	<input type="text" name="age" id="age"><br>
		
	<label for="addr"> �ּ� : </label>
	<input type="text" name="addr" id="addr"><br>
	
	<input type="submit" value="����">
</form>

</body>
</html>