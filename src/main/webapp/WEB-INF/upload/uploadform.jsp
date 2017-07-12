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
		<h3>스프링 파일 업로드</h3>
		<form action="upload.do" method="post" enctype="multipart/form-data">
			작성자 : <input type="text" class="form-control" name="writer"
			  				style=" width: 100px;"><br>
			  				
			제 목 : <input type="text" class="form-control" name="title"
			  				style=" width: 150px;"><br>
			이미지 : <input type="file" name="upfile" class="form-control"
			                style=" width: 300px;"><br><br>

			<input type="submit" value="파일 업로드" class="btn btn-info btn-sm"
			style="width: 100px;">			                
			                  				
		</form>
	</body>
</html>













