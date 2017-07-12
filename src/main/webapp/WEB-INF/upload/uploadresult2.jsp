<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		
	</head> 
	<body>
		<h3>업로드 결과</h3>
		작성자 : ${writer }<br>
		제 목 : ${title }<br><br>
		업로드이미지<br>
		<c:forTokens var="a" items="${filename}" delims=",">
			<img src="../save/${a}" style="max-width: 300px;">
			&nbsp;&nbsp;
		</c:forTokens>
		<br><br>
		<a href="uploadform2.do">다중이미지 업로드</a>		
	</body>
</html>










