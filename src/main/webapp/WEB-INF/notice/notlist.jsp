<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	
	<br><br>	
	
	<center>
		<img class="img-responsive" src="${root}/save/ico/favicon7.png" alt="logo">
	</center>	
		
	<br><br>	
	    
	<center>
	
	<c:if test="${totalCount>0}">
		<a style="color: gray;">총</a> <b style="color: red;">${totalCount}</b><a style="color: gray;"> 개의 데이타가 있습니다.</a>
		<br><br>
		
		
		<img class="img-responsive" src="${root}/save/ico/favicon7.png" alt="logo">
		
		<br><br>
		
	  </c:if>	
	  
	  </center>
	  
	  
	  <br>
	  
	  <center>
	  
	  
	  <div align="center">
		<input type="button"  class="btn btn-primary" onclick="location.href='comuform.do'" value="글쓰기">
	  </div>
	  
	  
	  <br>
	  
	  <div style="width: 70%;text-align: center;">
	  	<ul class="pagination">
	  		<!-- 이전 -->
	  		<c:if test="${startPage>1}">
		  		<li>
		  			<a href="communitylist.do?pageNum=${startPage-1}">◀</a>
		  		</li>
	  		</c:if>	
	  		<c:forEach var="pg" begin="${startPage}" end="${endPage}">
	  			<c:if test="${currentPage==pg}">
	  				<li>
	  					<a href="communitylist.do?pageNum=${pg}" style="color: red;font-weight: bold;">${pg}</a>
	  				</li>
	  			</c:if>
	  			<c:if test="${currentPage!=pg}">
		  			<li>
		  				<a href="communitylist.do?pageNum=${pg}" style="color: black;">${pg}</a>
		  			</li>
	  			</c:if>
	  			
	  		</c:forEach>
	  		<!-- 다음 -->	
	  		<c:if test="${endPage<totalPage}">  
		  		<li>
		  			<a href="communitylist.do?pageNum=${endPage+1}">▶</a>
		  		</li>	
	  		</c:if>	
	  	</ul>
	  </div>
	  	    
</center>


<br>

<center>

 <table class="table">
	  	<tr style="text-align: center;">
	  		<td><b style="color: gray;">번호</b></td>
	  		<td><b style="color: gray;">제 목</b></td>
	  		<td><b style="color: gray;">작성자</b></td>	  		
	  		<td><b style="color: gray;">작성일</b></td>
	  	</tr>
	  	<c:if test="${totalCount==0}">
	  		<td style="text-align: center;" colspan="5">
	  			<b style="color: gray;">등록된 게시물이 없습니다.</b>
	  		</td>	  		
	  	</c:if>
	  	<c:if test="${totalCount>0}">
	  	   <c:forEach var="a" items="${list}">
	  	   	 <tr>
	  	   	 	<td style="text-align: center;"><b style="color: brown;">${no}</b></td>
	  	   	 	<c:set value="${no-1}" var="no"/>
	  	   	 	<td style="text-align: center;color: gray;">
	  	   	 		<a href="comucontent.do?b_seq=${a.b_seq}&pageNum=${currentPage}">${a.b_title}</a>
	  	   	 		
	  	   	 	</td>
	  	   	 	<td style="text-align: center;"><b style="color: blue;">${a.nick}</b></td>
	  	   	 	
	  	   	 	<td style="text-align: center;color: orange;">
	  	   	 		<fmt:formatDate value="${a.b_date}" pattern="yyyy-MM-dd hh:mm:ss"/>
	  	   	 	</td>
	  	   	 </tr>
	  	   </c:forEach>
	  	</c:if>
	  </table>
	  
	</center>  
	  
	  
  <center>

<a id="to-top" href="#top" class="btn btn-dark btn-lg">
				<i class="fa fa-chevron-up fa-fw fa-1x"></i></a>


</center>

<br><br>

	  
	  <script type="text/javascript" src="${root}/save/js/jquery.js"></script>
    <script type="text/javascript" src="${root}/save/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  	<script type="text/javascript" src="${root}/save/js/gmaps.js"></script>
	<script type="text/javascript" src="${root}/save/js/smoothscroll.js"></script>
    <script type="text/javascript" src="${root}/save/js/jquery.parallax.js"></script>
    <script type="text/javascript" src="${root}/save/js/coundown-timer.js"></script>
    <script type="text/javascript" src="${root}/save/js/jquery.scrollTo.js"></script>
    <script type="text/javascript" src="${root}/save/js/jquery.nav.js"></script>
    <script type="text/javascript" src="${root}/save/js/main.js"></script>  	
	  
	  	
	</body>
</html>