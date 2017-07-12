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
		<form action="update.do" method="post">
		 	<table style="400px;" class="table table-bordered">
		 		<caption><b>게시판 글수정</b></caption>
		 		<tr>
		 			<th width="100" bgcolor="#fff1f6">작성자</th>
		 			<td>
		 				<input type="text" name="writer" style="width: 100px;"
		 				 class="form-control" value="${dto.writer}">
		 			</td>
		 		</tr>
		 		
		 		<tr>
		 			<th width="100" bgcolor="#fff1f6">제 목</th>
		 			<td>
		 				<input type="text" name="subject"
		 				 class="form-control" value="${dto.subject}">
		 			</td>
		 		</tr>
		 		<tr>
		 			<th width="100" bgcolor="#fff1f6">내 용</th>
		 			<td>
		 				<textarea rows="5" cols="30" class="form-control"
		 				  name="content">${dto.content}</textarea>
		 			</td>
		 		</tr>
		 		<tr>		 					 			
		 			<td colspan="2" bgcolor="#fff1f6" style="text-align: center;">
		 				<!-- hidden -->
		 				
		 				<input type="hidden" name="num" value="${dto.num}">
		 				<input type="hidden" name="pageNum" value="${pageNum}">
		 				
		 				<input type="submit" value="글수정" class="btn btn-info btn-sm"
		 				  style="width: 100px;">
		 				<input type="button" value="이전" class="btn btn-info btn-sm"
		 				  style="width: 100px;"
		 				  onclick="history.go(-2)">   
		 				<input type="button" value="목록" class="btn btn-info btn-sm"
		 				  style="width: 100px;"
		 				  onclick="location.href='list.do?pageNum=${pageNum}'">  
		 			</td>
		 		</tr>
		 	</table>
		 
		 </form>
	</body>
</html>