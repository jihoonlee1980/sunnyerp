<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>댓글 삭제</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<style type="text/css">
		html,body{overflow: hidden;}
		</style>
	</head> 
	<body>
		<form action="answerdel.do" method="post">
		<table class="table table-bordered" style="width: 320px; border:5px inset;">
			<tr height="130">
				<td style="text-align: center;">
					<b>댓글 삭제시 필요한 비밀번호를 입력해주세요</b><br><br>
					비밀번호 : <input type="password" name="pass"
					   style="width: 70px;" autofocus="autofocus"><br><br>
					<!-- hidden -->
					<input type="hidden" name="num" value="${num}">
					<input type="hidden" name="pageNum" value="${pageNum}">
					<input type="hidden" name="aPage" value="${aPage}">
					<input type="hidden" name="pk" value="${pk}">
					
					<input type="submit" value="댓글 삭제" class="btn btn-danger btn-sm">
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>











