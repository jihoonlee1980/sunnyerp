<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>댓글 목록</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		
	</head> 
	<body>
	<b style="font-size: 17pt;">
		제목:${subject}&nbsp;(작성자:${writer})		
	</b>
	<hr color="gray" size="5">
	<b>총 ${totalCount} 의 댓글이 있습니다</b><br><br>
	<c:forEach var="a" items="${list}">
		<c:forEach var="sp" begin="1" end="${a.re_level}">
			&nbsp;&nbsp; <!-- level 1당 빈칸 두칸-->
		</c:forEach>
		<!-- 레벨이 0보다 크면 리플 이미지 출력 -->
		<c:if test="${a.re_level>0}">
			<img src="../image/re.gif">
		</c:if>
		${a.nick} : ${a.content}&nbsp;
		<span style="font-size: 9pt;color: gray;">
			<fmt:formatDate value="${a.writeday}" pattern="yyyy-MM-dd HH:mm"/>
		</span>
		<br>
	</c:forEach>	
	
	</body>
</html>







