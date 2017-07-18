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
	
	
	
	
	
	 <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="${root}/loginform.do" class="site_title"><i class="fa fa-pie-chart"></i> <span>SunnyErp</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="${root}/save/favicon.png" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>${sessionScope.m_level}</span>
              
                <h2>${sessionScope.m_id_}&nbsp;&nbsp;<!-- <a style="color:lime"> -->[${sessionScope.m_nick}]</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
               <%--  <i class="fa fa-home"></i><a href="${root}/joinForm.do"><h3>회원가입</h3></a> --%>
                <ul class="nav side-menu">
                
                	 <li><a><i class="fa fa-user"></i> 회원정보<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    	<li><a href="${root}/joinForm.do">회원가입</a></li>
                      <li><a href="${root}/admin/list.do">관리자페이지</a></li>
                      <li><a href="${root}/admin/list.do">마이페이지</a></li>
                      <%-- <li><a href="${root}/save/index3.html">Dashboard3</a></li> --%>
                    </ul>
                  </li>
                  
                  <li><a><i class="fa fa-desktop"></i> 공통정보<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${root}/company/list.do">회사정보</a></li>
                      <li><a href="${root}/personal/list.do">사원정보</a></li>
                      <li><a href="${root}/vendor/list.do">협력사정보</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> 구매발주 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${root}/buy/buywriteform.do">구매발주입력</a></li>
                      <li><a href="${root}/buy/list.do">구매발주현황</a></li>
                     <%--  <li><a href="${root}/save/form_validation.html">Form Validation</a></li>
                      <li><a href="${root}/save/form_wizards.html">Form Wizard</a></li>
                      <li><a href="${root}/save/form_upload.html">Form Upload</a></li>
                      <li><a href="${root}/save/form_buttons.html">Form Buttons</a></li> --%>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-gears"></i> 생산제조 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${root}/product/productwriteform.do">생산제조입력</a></li>
                      <li><a href="${root}/product/list.do">생산제조현황</a></li>
                      <%-- <li><a href="${root}/save/typography.html">Typography</a></li>
                      <li><a href="${root}/save/icons.html">Icons</a></li>
                      <li><a href="${root}/save/glyphicons.html">Glyphicons</a></li>
                      <li><a href="${root}/save/widgets.html">Widgets</a></li>
                      <li><a href="${root}/save/invoice.html">Invoice</a></li>
                      <li><a href="${root}/save/inbox.html">Inbox</a></li>
                      <li><a href="${root}/save/calendar.html">Calendar</a></li> --%>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> 자재명세서(BOM) <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${root}/bom/bomwriteform.do">BOM입력</a></li>
                      <li><a href="${root}/bom/list.do">BOM현황</a></li>
                     <%--  <li><a href="${root}/save/tables_dynamic.html">Table Dynamic</a></li> --%>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> 단가관리 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${root}/cost/costwriteform.do">단가입력</a></li>
                      <li><a href="${root}/cost/list.do">단가현황</a></li>
                      <%-- <li><a href="${root}/save/morisjs.html">Moris JS</a></li>
                      <li><a href="${root}/save/echarts.html">ECharts</a></li>
                      <li><a href="${root}/save/other_charts.html">Other Charts</a></li> --%>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-truck"></i>엽업출고출하 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${root}/delivery/deliverywriteform.do">출고출하입력</a></li>
                      <li><a href="${root}/delivery/list.do">출고출하현황</a></li>
                      <li><a href="${root}/delivery/transactionlist.do">거래명세표</a></li>
                    </ul>
                  </li>
                    <li><a><i class="fa fa-home"></i>재고창고 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${root}/stock/stockwriteform.do">재고입력</a></li>
                      <li><a href="${root}/stock/list.do">재고창고현황</a></li>
                      <li><a href="${root}/stock/investigationwriteform.do">재고조사실사</a></li>
                    </ul>
                  </li>
                  
                   <li><a><i class="fa fa-external-link"></i>바로가기<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
             <!--  <div class="sidebar-footer hidden-small"> -->
               <!-- <li><a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a></li> -->
              <li><a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
             	&nbsp;&nbsp; 전체화면</a></li>
             <!--  <li><a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a></li> -->
              <li><a data-toggle="tooltip" data-placement="top" title="Logout"
              href="${root}/main.do">
              <!-- <input type="button" value="logout" style="color: gray" class="btn" onclick="location.href='logout.do'"> -->
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
             	&nbsp;&nbsp; 로그아웃</a></li>
           <!--  </div> -->
            </ul>
                  </li>
                  
                  
                </ul>
             
            
</div>
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
           
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    
                     <%-- <c:forEach var="a" items="${list}">
                    
                    <img src="${root}/save/${a.filename}">
                    
                    </c:forEach> --%>
                    
                     ${sessionScope.m_nick}
                     
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="${root}/personal/list.do"> Profile</a></li>
                    <!-- <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li> -->
                  <!--   <div class="count green"> -->
                    <li><a data-toggle="tooltip" data-placement="top" title="Logout" onclick="location.href='logout.do'" 
              href="${root}/logout.do"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="${root}/save/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="${root}/save/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="${root}/save/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="${root}/save/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
	  
	
	<br><br><br><br><br>
	  
	  
	  
	  <c:if test="${sessionScope.m_id_==null}">
	  
	  <center>
		
			
				<b style="color:lime;">로그인(Login)을 해주세요.</b>
				
			
			<br><br>
			
					<input type="submit" class="btn" style="color: black" value="LOGIN" onclick="location.href='${root}/loginform.do'">
						<input type="button" class="btn" style="color: black" value="JOIN" onclick="location.href='${root}/joinForm.do'">
					
			<br><br>
			
			 <%-- <img class="img-responsive" src="${root}/save/ico/favicon6.png" alt="logo">
			
			
			<br><br> --%>
		
		</center>


</c:if>




<center>
	
	

	
	<c:if test="${totalCount>0}">
		<a style="color: gray;">총</a> <b style="color: red;">${totalCount}</b><a style="color: gray;"> 개의 데이타가 있습니다.</a>
		
<br><br>	
		
	  </c:if>	
	  
	  </center>
	  
<br>

	  
	<%--    <center>
	  
	
	  
	  
	  <div style="width: 60%;text-align: center;">
	  	<input type="button" class="btn btn-info btn-sm" value="프로필 등록(수정)"
	  	  onclick="location.href='personalwriteform.do'">
	  </div>
	  
	  
	  
	
	
	  
	  </center> --%>
	  
<!-- 	
	<br><br> -->
	  
	  
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
	  	
	  	
	  	
	  	<c:if test="${sessionScope.m_id_=='admin'}">
	  	
	  	
	  	<c:if test="${totalCount>0}">
	  	   <c:forEach var="a" items="${list}">
	  	   
	  	   
	  	   <br><br>
	  	
	  	   	 <tr>
	  	   	 	<b style="color: brown;">No. ${no}</b><br>
	  	   	 	<c:set value="${no-1}" var="no"/>
	  	   	 	<%-- <b style="color: orange;">${a.category}</b><br> --%>
	  	   	 	<br>
	  	   	 	
	  	   	 	
	  	   	 	<a href="content.do?num=${a.num}&pageNum=${currentPage}">
	  	   	 	
	  	   	 	아이디 : <b style="color:gray">${a.m_id}</b><br>
	  	   	 	
	  	   	 	<!-- <span style="color: gray;text-overflow:ellipsis;overflow: hidden;
				 white-space: nowrap;display: block;max-width: 200px;"> -->
	  	   	 	
	  	   	 		
	  	   	 		
	  	   	 		
	  	   	 		
	  	   	 		
	  	   	 	<!-- 	</span> -->
	  	   	 		
	  	   	 		<center>
                                	
     						<br><br>	
     							<%-- 	<video width=300" height="200" controls="controls">
       <source src="${root}/save/${a.filename}" type="video/mp4">
     
     </video> --%>
     				<%--  <img src="${root}/save/${a.filename}" width="100" height="100"> --%>
     				
	  	   	 		
	  	   	 		
	  	   	 		</a>
	  	   	 		
	  	   	 <!-- <br><br><br> -->
	  	   	 
	  	   	 
	  	   	 	등록(수정)일자 :
	  	   	 		<b style="color:gray"><fmt:formatDate value="${a.gaipday}" pattern="yyyy-MM-dd HH:mm:ss"/></b>
	  	   	 
	  	   	 	<br><br><br>
	  	   	 
	  	   	 	이름 :<b style="color:gray"> ${a.m_nick}</b><br>
	  	   	 	
	  	   	 	
	  	   	 		 <br><br>
	  	   	 		 
	  	   	 		 
	  	   	 	핸드폰 : <b style="color:gray">${a.m_hp}</b><br>
	  	   	 	
	  	   	 	
	  	   	 		 <br><br>	
	  	   	 		 
	  	   	 		 
	  	   	 	이메일 : <b style="color:gray">${a.m_email}</b><br>
	  	   	 	
	  	   	 	
	  	   	 		 <br><br>	 
	  	   	 		 
	  	   	 		 
	  	   	 	주소 : <b style="color:gray">${a.m_address}</b><br>
	  	   	 	
	  	   	 	
	  	   	 		 <br><br>	 
	  	   	 		 	 	 
	  	   	 
	  	   	 		 
	  	   	 	
	  	   	 	<%-- 직급 : <b style="color:gray">${a.grade}</b><br>
	  	   	 	
	  	   	 	
	  	   	 		 <br><br>	 
	  	   	 		 
	  	   	 	
	  	   	 	
	  	   	 	부서 : <b style="color:gray">${a.department}</b><br>
	  	   	 	
	  	   	 	
	  	   	 		 <br><br>	 --%> 
	  	   	 		 
	  	   	 	<!-- <hr class="small">
	  	   	 	
	  	   	 	
	  	   	 		<br><br> -->
	  	   	 		
	  	   	 <%-- 	<b style="color: black;">조회&nbsp;<b style="color: red;">[${a.readcount}]</b></b><br>	
	  	   	 		
	  	   	 	<br> --%>
	  	   	 	
	  	   	
	  	   </c:forEach>
	  	   <br>
	  	   
	  	</c:if>
	  </table>
	
	  
	  </center>
	  
	  </c:if>
	  
	  
	 	<%--  <center> 
	  
	  <br>
	  
	  <div style="width: 60%;text-align: center;">
	  	<input type="button" class="btn btn-warning btn-sm" value="프로필수정"
	  	  onclick="location.href='personalwriteform.do'">
	  </div>

	  
	  </center> --%>
	  
	  

	  
	  <center>

<a id="to-top" href="#top" class="btn btn-dark btn-lg">
				<i class="fa fa-chevron-up fa-fw fa-1x"></i></a>


</center>



<br><br><br><br>

	  
	  
      <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- FullCalendar -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/fullcalendar/dist/fullcalendar.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
    
    
    
     
    
    

    <!-- jQuery -->
    <script src="${root}/save/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${root}/save/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="${root}/save/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${root}/save/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="${root}/save/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="${root}/save/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="${root}/save/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="${root}/save/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="${root}/save/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="${root}/save/vendors/Flot/jquery.flot.js"></script>
    <script src="${root}/save/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="${root}/save/vendors/Flot/jquery.flot.time.js"></script>
    <script src="${root}/save/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="${root}/save/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="${root}/save/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="${root}/save/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="${root}/save/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="${root}/save/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="${root}/save/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="${root}/save/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="${root}/save/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="${root}/save/vendors/moment/min/moment.min.js"></script>
    <script src="${root}/save/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="${root}/save/build/js/custom.min.js"></script>
	  
	  	
	</body>
</html>