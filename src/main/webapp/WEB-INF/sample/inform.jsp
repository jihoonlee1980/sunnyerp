<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="root" value="<%=request.getContextPath() %>"/>

<html>
	<head>
		<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SongWriting</title>
    <link href="${root}/save/" rel="stylesheet">
    <link href="${root}/save/css/font-awesome.min.css" rel="stylesheet">
	<link href="${root}/save/css/main.css" rel="stylesheet">
	<link href="${root}/save/css/animate.css" rel="stylesheet">	
	<link href="${root}/save/css/responsive.css" rel="stylesheet">

    <!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${root}/save/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${root}/save/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${root}/save/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${root}/save/ico/apple-touch-icon-57-precomposed.png">
	</head> 
	<body>
	
	
	
	
	
	<!-- <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
	
	<center>
	
	<img class="img-responsive" src="${root}/save/images/slider/bg3.jpg" alt="logo">
	
	
	</center>
	
	<br>
	
		<form action="read.do" method="post">
		 	<table style="400px;" class="table table-bordered">
		 		<caption><b>게시판 글쓰기</b></caption>
		 		<tr>
		 			<th width="100" bgcolor="#fff1f6">작성자</th>
		 			<td>
		 				<input type="text" name="writer" style="width: 100px;"
		 				 class="form-control">
		 			</td>
		 		</tr>
		 		<tr>
		 			<th width="100" bgcolor="#fff1f6">비밀번호</th>
		 			<td>
		 				<input type="password" name="pass" style="width: 100px;"
		 				 class="form-control">
		 			</td>
		 		</tr>
		 		<tr>
		 			<th width="100" bgcolor="#fff1f6">제 목</th>
		 			<td>
		 				<input type="text" name="subject"
		 				 class="form-control">
		 			</td>
		 		</tr>
		 		<tr>
		 			<th width="100" bgcolor="#fff1f6">내 용</th>
		 			<td>
		 				<textarea rows="5" cols="30" class="form-control"
		 				  name="content"></textarea>
		 			</td>
		 		</tr>
		 		<tr>		 			
		 			<td colspan="2" bgcolor="#fff1f6" style="text-align: center;">
		 				<input type="submit" value="글쓰기" class="btn btn-info btn-sm"
		 				  style="width: 100px;">
		 			</td>
		 		</tr>
		 	</table>
		 
		 </form>
	</body>
</html>