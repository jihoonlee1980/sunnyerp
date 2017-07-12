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
	
	<img class="img-responsive" src="${root}/save/images/slider/bg1.jpg" alt="logo">
	
	
	</center>
	
	<br>
	
	  <c:if test="${totalCount>0}">
		<b>총 <span style="color: red;">${totalCount}</span>개의 데이타가 있습니다</b>
		<br>
	  </c:if>	
	  <table class="table table-bordered table-hover" style="width: 80%;">
	  	<tr style="text-align: center; background: #fff0f5;">
	  		<td width="50" >번호</td>
	  		<td width="350" >제 목</td>
	  		<td width="80" >작성자</td>
	  		<td width="50" >조회</td>
	  		<td width="100" >작성일</td>
	  	</tr>
	  	<c:if test="${totalCount==0}">
	  		<td style="text-align: center;" colspan="5">
	  			<b>등록된 게시물이 없습	니다</b>
	  		</td>	  		
	  	</c:if>
	  	<c:if test="${totalCount>0}">
	  	   <c:forEach var="a" items="${list}">
	  	   	 <tr>
	  	   	 	<td style="text-align: center;">${no}</td>
	  	   	 	<c:set value="${no-1}" var="no"/>
	  	   	 	<td>
	  	   	 		<a href="content.do?num=${a.num}&pageNum=${currentPage}&key=lst">${a.subject}</a>
	  	   	 		&nbsp;
	  	   	 		<!-- 댓글이 있을 경우에만 출력 -->
	  	   	 		<c:if test="${a.answer>0}">
	  	   	 			<a href="javascript:answeropen(${a.num})" style="color: red;cursor: pointer;">
	  	   	 			[${a.answer}]</a>
	  	   	 		</c:if>
	  	   	 		
	  	   	 	</td>
	  	   	 	<td style="text-align: center;">${a.writer}</td>
	  	   	 	<td style="text-align: center;">${a.readcount}</td>
	  	   	 	<td style="text-align: center;">
	  	   	 		<fmt:formatDate value="${a.writeday}" pattern="yyyy-MM-dd"/>
	  	   	 	</td>
	  	   	 </tr>
	  	   </c:forEach>
	  	</c:if>
	  </table>
	  <div style="width: 80%;text-align: center;">
	  	<ul class="pagination">
	  		<!-- 이전 -->
	  		<c:if test="${startPage>1}">
		  		<li>
		  			<a href="list.do?pageNum=${startPage-1}">◀</a>
		  		</li>
	  		</c:if>	
	  		<c:forEach var="pg" begin="${startPage}" end="${endPage}">
	  			<c:if test="${currentPage==pg}">
	  				<li>
	  					<a href="list.do?pageNum=${pg}" style="color: red;font-weight: bold;">${pg}</a>
	  				</li>
	  			</c:if>
	  			<c:if test="${currentPage!=pg}">
		  			<li>
		  				<a href="list.do?pageNum=${pg}" style="color: black;">${pg}</a>
		  			</li>
	  			</c:if>
	  			
	  		</c:forEach>
	  		<!-- 다음 -->	
	  		<c:if test="${endPage<totalPage}">  
		  		<li>
		  			<a href="list.do?pageNum=${endPage+1}">▶</a>
		  		</li>	
	  		</c:if>	
	  	</ul>
	  </div>
	  <div style="width: 80%;text-align: right;">
	  	<input type="button" class="btn btn-primary btn-sm" value="글쓰기"
	  	  onclick="location.href='inform.do'">
	  </div>
	  
	</body>
</html>











