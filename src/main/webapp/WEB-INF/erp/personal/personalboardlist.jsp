<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="root" value="<%=request.getContextPath() %>"/>



<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.awt.Frame"%>
<%@page import="javax.swing.JFrame"%>
<%@page import="java.awt.*"%>
<%@page import="java.awt.event.*"%>
<%@page import="java.net.Socket"%>
<%@page import="javax.swing.*"%>
<%@page import="javax.swing.event.ListSelectionEvent"%>
<%@page import="javax.swing.event.ListSelectionListener"%>
<%@page import="javax.swing.text.Document"%>


<html lang="en">
  <head>
  
  
  
  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

     <link rel="shortcut icon" href="${root}/save/favicon.png">

    <title>SunnyErp</title>
    
    
   
    

    <!-- Bootstrap -->
    <link href="${root}/save/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${root}/save/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${root}/save/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="${root}/save/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="${root}/save/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="${root}/save/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="${root}/save/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${root}/save/build/css/custom.min.css" rel="stylesheet">
    
    
    
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="${root}/save/vendors/Chart.js/dist/Chart.bundle.js"></script>
    <!-- <style>
    canvas {
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
    </style> -->
    
    
     <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>
  <script src="${root}/save/vendors/morris.js"></script>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.js"></script>
  <script src="${root}/save/vendors/morris.js/lib/example.js"></script>
  <link rel="stylesheet" href="${root}/save/vendors/morris.js/lib/example.css">
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.css">
  <link rel="stylesheet" href="${root}/save/vendors/morris.js/morris.css">



</head>
	<body>
	
	
	
	
	
	<!-- <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
	
	 <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand topnav" href="${root}/index.jsp">Sunny Factory<br>
                <!-- <img class="img-responsive" src="resources/img/logos/sunny.png" width="50" height="50" alt=""> --></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
        
            <!-- /.navbar-collapse -->
            
            
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="${root}/index.jsp"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${root}/index.jsp">Home</a>
                    </li>             
                    <li>
                        <a class="page-scroll" href="${root}/index2.jsp">CEO</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${root}/index3.jsp">회사소개</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${root}/index4.jsp">제품소개</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${root}/myboard/list.do">행사소식</a>
                    </li>
                    <!-- <li>
                        <a class="page-scroll" href="layout2.jsp?body=ajax/ajaxchul.jsp">방명록</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="layout2.jsp?body=upboard/boardList.jsp?key=1">제안서</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="layout2.jsp?body=reservation/boardList.jsp?key=1">미팅&견적</a>
                    </li> -->
                    <li>
                        <a class="page-scroll" href="${root}/communitylist.do">공지사항</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${root}/loginform.do">SunnyErp</a>
                    </li>
                   
                    
                </ul>
            </div>
            
            
          
            
            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
            
            
        </div>
        <!-- /.container -->
    </nav>
	
	<br><br><br>
	
	<center>
	
	
	<%-- <img class="img-responsive" src="${root}/save/ico/favicon8.png" alt="logo"> --%>
	<img class="img-responsive" src="${root}/save/images/slider/1600bg3.JPG" alt="logo">
	
	
	<br><br>	
	
	<c:if test="${totalCount>0}">
		<a style="color: gray;">총</a> <b style="color: red;">${totalCount}</b><a style="color: gray;"> 개의 데이타가 있습니다.</a>
		
<br><br>	
		
	  </c:if>	
	  
	  </center>
	  
	
	  
	   <center>
	  
	
	  
	  
	  <div style="width: 60%;text-align: center;">
	  	<input type="button" class="btn btn-info btn-sm" value="글쓰기"
	  	  onclick="location.href='writeform.do'">
	  </div>
	  
	  
	
	  
	  </center>
	  
	  <br>
	  
	  
	  <center>
	  
	  
	  <div style="text-align: center;">
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
	  
	  
	  </center>
	  
	  
	  
	  <br>
	  
	  
	  
	  <center>
	  
	  <table class="table table-bordered table-hover">
	  	<!-- <tr style="text-align: center;">
	  		<td><b style="color: black;">번호</b></td>
	  		<td><b style="color: black;">분류</b></td>
	  		<td><b style="color: black;">제 목</b></td>
	  		<td><b style="color: black;">작성자</b></td>	  		
	  		<td><b style="color: black;">작성일</b></td>
	  	</tr> -->
	  	<c:if test="${totalCount==0}">
	  		<td style="text-align: center;">
	  			<b style="color: gray;">등록된 게시물이 없습니다.</b>
	  		</td>	  		
	  	</c:if>
	  	<c:if test="${totalCount>0}">
	  	   <c:forEach var="a" items="${list}">
	  	   
	  	   <br><br>
	  	   	 <tr>
	  	   	 	<b style="color: brown;">No. ${no}</b><br>
	  	   	 	<c:set value="${no-1}" var="no"/>
	  	   	 	<b style="color: orange;">${a.category}</b><br>
	  	   	 	
	  	   	 	
	  	   	 	<span style="color: blue;text-overflow:ellipsis;overflow: hidden;
				 white-space: nowrap;display: block;max-width: 200px;">
	  	   	 	
	  	   	 		<a href="content.do?num=${a.num}&pageNum=${currentPage}">${a.id}<br>
	  	   	 		
	  	   	 		</span>
	  	   	 		
	  	   	 		<center>
                                	
     							
     							<%-- 	<video width=300" height="200" controls="controls">
       <source src="${root}/save/${a.filename}" type="video/mp4">
     
     </video> --%>
     				 <img src="${root}/save/${a.filename}" width="300" height="300">
     				
	  	   	 		
	  	   	 		
	  	   	 		</a>
	  	   	 		
	  	   	 <br>
	  	   	 
	  	   	 
	  	   	 	<b style="color: blue;">${a.name}</b><br>
	  	   	 	
	  	   	 	
	  	   	 	<b style="color: gray;">
	  	   	 		<fmt:formatDate value="${a.gaipday}" pattern="yyyy-MM-dd HH:mm:ss"/></b>
	  	   	 	
	  	   	 	<br>	
	  	   	 		
	  	   	 <%-- 	<b style="color: black;">조회&nbsp;<b style="color: red;">[${a.readcount}]</b></b><br>	
	  	   	 		
	  	   	 	<br> --%>
	  	   	 	
	  	   	
	  	   </c:forEach>
	  	   <br>
	  	   
	  	</c:if>
	  </table>
	  <br>
	  
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