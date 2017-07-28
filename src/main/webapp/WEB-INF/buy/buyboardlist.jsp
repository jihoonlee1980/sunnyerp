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
  
  
  
  <!-- Datatables -->
    <link href="${root}/save/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="${root}/save/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="${root}/save/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="${root}/save/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="${root}/save/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
  

		
		
		
		<!-- MeadCo ScriptX --> 

<object id=factory style="display:none" 

classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814" 

codebase="http://www.meadroid.com/scriptx/ScriptX.cab#Version=6,1,429,14"> 

</object> 


<script type="text/javascript">
		var fnPrint = function() {
			var strFeature = "";
			strFeature += "width=100%, height=100%, all=no";

			 window.print();
			 wondow.close();
			/* var objWin = window.open('', 'print', strFeature);
			objWin.document.write("<table width='100%' border='1'>");
			objWin.document.write("<tr>");
			objWin.document.write("<td>");
			objWin.document.write(selectA.value);
			objWin.document.write("</td>");
			objWin.document.write("<td>");
			objWin.document.write(selectB.value);
			objWin.document.write("</td>");
			objWin.document.write("<td>");
			objWin.document.write(selectC.value);
			objWin.document.write("</td>");
			objWin.document.write("<td>");
			objWin.document.write(selectD.value);
			objWin.document.write("</td>");
			objWin.document.write("</tr>");
			objWin.document.write("</table>");
			objWin.document.close();

			objWin.print();
			objWin.close(); */
			
			
			
		};
	</script>



 <script type="text/javascript">


 function printWindow() { 

	 factory.printing.header = "This is MeadCo" 

	 factory.printing.footer = "Printing by ScriptX 5.x" 

	 factory.printing.portrait = false 

	 factory.printing.leftMargin = 1.0 

	 factory.printing.topMargin = 1.0 

	 factory.printing.rightMargin = 1.0 

	 factory.printing.bottomMargin = 1.0 

	 factory.printing.Print(false, window) 

	 } 



</script>



 <link href="${root}/save/dist/flatpickr.min.css" rel="stylesheet" type="text/css">
   <script src="${root}/save/dist/flatpickr.min.js"></script>


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
                      <li><a href="${root}/mypage/list.do">마이페이지</a></li>
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
                    <li><a href="${root}/mypage/list.do"> Profile</a></li>
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
		
<br>	
		
	  </c:if>	
	  
	  </center>
	  
<br>

	  
	   <center>
	  
	
	  
	  
	  <div style="width: 60%;text-align: center;">
	  	<input type="button" class="btn btn-info btn-sm" value="구매발주 등록"
	  	  onclick="location.href='buywriteform.do'">
	  </div>
	  
	   <br>
	  
	<%--   
	  <br><br>
	  
	 
	  
	  <b style="color: gray;"><a target="_blank" href="http://www.google.co.kr/chrome/">구글 크롬(Chrome Download)</a> 
	  <br>  
	  <a target="_blank" href="https://support.apple.com/ko_KR/downloads/safari">
	   사파리(Safari Download)</a> 에서!
	  
	  	<br>최적의 상태를 제공합니다.</b>
	  
	  
	     <br><br><br>
	 
	 
	 
	 
	 
	  
	  
	   <div class="item">
	   
	   
	   


	   
	    <a target="_blank" href="http://192.168.0.16:8081/">
	    
	   
	    <b style="color: orange;">[실시간 모션 스트리밍]<br>
	  <b style="color: blue;">우리회사! 영상보기(▼)</b></b>
	  
	  
	
	 
	  <br><br><br>
	   
                           
                                <img src="${root}/save/resources/img/slide/cctv1.png" alt="" width="100" height="100"></a>
                            </div>
	
	
	  
	  <br><br> --%>
	  
	  
	  
	  <!-- <script>

var agent = navigator.userAgent.toLowerCase(); //현재 브라우저 정보를 소문자로 받아온다.

if(agent.indexOf("windows nt 5.1") >= 0) // OS 식별

 alert("Windows XP");

else if(agent.indexOf("windows nt 6.0") >=0)

 alert("Windows Vista");

else if(agent.indexOf("windows nt 6.1") >= 0)

 alert("Windows 7");

else if(agent.indexOf("windows nt 6.3") >= 0) // windows 10

 alert("windows 10");

else if(agent.indexOf("windows phone 8.1") >= 0)

 alert("Windows Phone 8.1");

else if(agent.indexOf("windows PHONE 10.0") >= 0)

 alert("Windows Phone 10.0");

else if(agent.indexOf("android") >= 0 )

 alert("Android");

else if(agent.indexOf("iphone") >= 0 )

 alert("IPhone");

else if(agent.indexOf("ipad") >= 0 )

 alert("IPad");

else if(agent.indexOf("ipod") >= 0 )

 alert("IPod");

else if(agent.indexOf("mac") >= 0 )

 alert("mac");

else

 alert(agent);




if(agent.indexOf("msie 7") >= 0) // 브라우저 식별

 alert("IE 7");

else if(agent.indexOf("msie 8") >= 0)

 alert("IE 8");

else if(agent.indexOf("msie 9") >= 0)

 alert("IE 9");

else if(agent.indexOf("msie 10") >= 0) // IE 10

 if(agent.indexOf("Touch") >= 0) // IE10 on a machine with touch-capable hardware

  alert("IE 10 on Touch");

 else

  alert("IE 10");

else if(agent.indexOf("rv:11.0") >= 0)

 alert("IE 11");

else if(agent.indexOf("edge/12.0") >= 0)

 alert("Spartan");

else if(agent.indexOf("chrome") >= 0)

 alert("Chrome");

else if(agent.indexOf("safari") >= 0)

 alert("Safari");

else if(agent.indexOf("firefox") >= 0)

 alert("Firefox");

else if(agent.indexOf("opera") >= 0)

 alert("Opera");

else

 alert(agent);




if(agent.indexOf("win64") >= 0) // 처리방식 식별

 alert("64bit")

else if(agent.indexOf("wow64") >= 0)

 alert("32-bit IE on 64-bit");

else if(agent.indexOf("arm") >= 0)

 alert("Windows RT");

else

 alert("32bit");




</script> -->
	  
	 <!--  <embed src="http://192.168.0.13:8081/" width="250" height="200"></embed></a>
	  
	  
	  <iframe src="http://192.168.0.13:8081/" width="300" height="300"></iframe>
	  
	  <br><br> -->
	  
	  </center>
	  
	
	  
	  
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
	  
	<c:if test="${sessionScope.m_id_==sessionScope.m_id_}">
	  

	  
	  <center>
	  
	  <table id="file_table" class="table table-striped table-bordered dataTable no-footer dtr-inline" role="grid" aria-describedby="datatable-buttons_info">
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
	  	
	  	
	  
	  	   
	  	   
	  	 
	  	   
	  	   
	  	   <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                  <%--   <center>
                    <h2>구매발주 <small>구매발주입력</small></h2>
                    </center> --%>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"></a>
                        <!-- <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul> -->
                      </li>
                     <!--  <li><a class="close-link"><i class="fa fa-close"></i></a> -->
                   
                    </ul>
                    <div class="clearfix"></div>
                  </div>
		
		
		<center>
		 <div class="x_content">
                 <!--    <p class="text-muted font-13 m-b-30">
                      The Buttons extension for DataTables provides a common set of options, API methods and styling to display buttons on a page that will interact with a DataTable. The core library provides the based framework upon which plug-ins can built.
                    </p> -->
		
		<div id="datatable-buttons_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
		<div class="dt-buttons btn-group">
		<a class="btn btn-default buttons-copy buttons-html5 btn-sm" tabindex="0" aria-controls="datatable-buttons" href="#"><span>Copy</span></a>
		<a class="btn btn-default buttons-csv buttons-html5 btn-sm" tabindex="0" aria-controls="datatable-buttons" href="#"><span>CSV</span></a>
		<a class="btn btn-default buttons-print btn-sm" tabindex="0" aria-controls="datatable-buttons" onclick="fnPrint()"><span>Print</span></a>
		<!-- <div id="datatable-buttons_filter" class="dataTables_filter">
		<label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="datatable-buttons"></label></div> -->
		<!-- <table id="datatable-buttons" class="table table-striped table-bordered dataTable no-footer dtr-inline" role="grid" aria-describedby="datatable-buttons_info" style="width: 1031px;"> -->
                     <!--  <thead>
                        <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 158px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">Name</th>
                        <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 251px;" aria-label="Position: activate to sort column ascending">Position</th></tr>
                      </thead> -->
  

          </div>     
          
          <br>
          
           <center>
          
           <div id="datatable-buttons_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="datatable-buttons"></label></div> 
                 
                 
                 <br><br>
                 
                 *[PC]환경에서 가능.
                 
                 <br><br>
                 
             </center>    
                   
                   
              </div>
              
             
            
          <!--  <div id="datatable-buttons_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="datatable-buttons"></label></div>  -->
             </center>      
		
		  <div class="table-responsive">
		
		
		<table id="file_table" class="table table-striped jambo_table bulk_action" role="grid" aria-describedby="datatable-buttons_info">
 		<!-- <table id="file_table" class="table table-bordered"> -->
 		
 		
 		
 		<!-- <div class="col-sm-6"><div class="dataTables_length" id="datatable-checkbox_length"><label>Show <select name="datatable-checkbox_length" aria-controls="datatable-checkbox" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div>
 		<div class="dataTables_length" id="datatable-checkbox_length"><label>Show <select name="datatable-checkbox_length" aria-controls="datatable-checkbox" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div> -->
 	
 		<!-- <label>Show <select name="datatable-checkbox_length" aria-controls="datatable-checkbox" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label> 	 -->	
 	
 	
 		<!-- 
 		</div>
 		</div> -->
 		
 		
 		<!-- <select name="datatable-checkbox_length" aria-controls="datatable-checkbox" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> -->
 		
 		
 		
 		
 		
 		<center>
 		<thead>
                        <tr class="even pointer">
                     
                     	  
						 <th style="text-align: center;" class="sorting_asc" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"  aria-sort="ascending" aria-label="Name: activate to sort column descending">
						
						 <input type="checkbox" id="check-all" class="flat" name="table_records">
						 
						 </th>
                     
                  
                     
                       <th style="text-align: center;" class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"  aria-label="Position: activate to sort column ascending">No</th>
                      <!--   <th style="text-align: center;" class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"  aria-label="Position: activate to sort column ascending">등록자</th> -->
                        <th style="text-align: center;" class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"  aria-label="Position: activate to sort column ascending">품목코드</th>
                        <!-- <th style="text-align: center;" class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"  aria-label="Position: activate to sort column ascending">발주품명</th> -->
                       <!--  <th style="text-align: center;" class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"  aria-label="Position: activate to sort column ascending">발주수량</th> -->
                        <th style="text-align: center;" class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"  aria-label="Position: activate to sort column ascending">등록일자</th>                     
                       <!--  <th style="text-align: center;" class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1"  aria-label="Position: activate to sort column ascending">첨부파일</th>                      -->
                        </tr>
                      </thead>
 		</center>
 		
 		
 			<c:if test="${totalCount>0}">
	  	   <c:forEach var="a" items="${list}">
 		
 		 <tbody>
	  	   
	  	   
	  	
	  	   	 <tr>
	  	   	 
	  	   	 
	  	   	 
	  	   	 <td style="text-align: center;"><b style="color: brown;">
							<input type="checkbox" id="check-all" class="flat" name="table_records">
						  </b>
						  
						  </td>
	  	   	 
	  	   	 
	  	   	 
	  	   	 	<td style="text-align: center;"><b style="color: brown;">${no}</b></td>
	  	   	 	<c:set value="${no-1}" var="no"/>
	  	   	 	<%-- <b style="color: orange;">${a.category}</b><br> --%>
	  	   	 
	  	   	 	
	  	   	 	
	  	   	 	
	  	   	 	
	  	   	 <%-- 	<td style="text-align: center;">
	  	   	 	 <b style="color:gray">${a.id}&nbsp;[${sessionScope.m_nick}]</b></td> --%>
	  	   	 	
	  	   	 	<!-- <span style="color: gray;text-overflow:ellipsis;overflow: hidden;
				 white-space: nowrap;display: block;max-width: 200px;"> -->
	  	   	 	
	  	   	 		
	  	   	 
	  	   	
	  	   	<td style="text-align: center;">
	  	   	<a href="content.do?num=${a.num}&pageNum=${currentPage}">
	  	   	 
	  	   	 	<!-- <b style="color:navy"> --> ${a.buycodeno}
	  	   	 	
	  	   	 	</a>
	  	   	 	</td>
	  	   	 	
	  	   	 	
	  	   	 	
	  	   	 	<%-- <td style="text-align: center;">
	  	   
	  	   	 <a href="content.do?num=${a.num}&pageNum=${currentPage}">
	  	   	 	<!-- <b style="color:blue;"> --> ${a.buygoods}
	  	   	 	</a>
	  	   	
	  	   	 	</td> --%>
	  	   	 	
	  	   	 	
	  	   	 	
	  	   	 	<%-- <td style="text-align: right;">
	  	   
	  	   	 
	  	   	 	
	  	   	 	<b style="color:brown">
	  	   	 	
	  	   	 	
	  	   	 	<fmt:formatNumber value="${a.buycount}" pattern="#,###.##"/>
	  	   	 	 
	  	   	 	 
	  	   	 	 </b>
	  	   	 	
	  	   	 	
	  	   	 	</td> --%>
	  	   	 		
	  	   	 		 
	  	   	 	
	  	   	 	<td style="text-align: center;">	 
	  	   	 		 
	  	   	 		 	
	  	   	 		<b style="color:gray"><fmt:formatDate value="${a.gaipday}" pattern="yyyy-MM-dd HH:mm:ss"/></b>
	  	   	 		 </td>
	  	   	 	
	  	   	 		 
	  	   	 		 
	  	   	 <%-- 	<td style="text-align: center;">	 
	  	   	 		 
	  	   	 		 	
	  	   	 		<b style="color:blue"> ${a.filename}</b>
	  	   	 		 </td>	  --%>
	  	   	 
	  	   	 
	  	   	
	  	   </c:forEach>
	  	
	  	   
	  	</c:if>
	   </tbody>
      </table>  
      </div>
      
   <!--    <div class="dataTables_paginate paging_simple_numbers" id="datatable-buttons_paginate"><ul class="pagination"><li class="paginate_button previous" id="datatable-buttons_previous"><a href="#" aria-controls="datatable-buttons" data-dt-idx="0" tabindex="0">Previous</a></li><li class="paginate_button "><a href="#" aria-controls="datatable-buttons" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="datatable-buttons" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button active"><a href="#" aria-controls="datatable-buttons" data-dt-idx="3" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="datatable-buttons" data-dt-idx="4" tabindex="0">4</a></li><li class="paginate_button "><a href="#" aria-controls="datatable-buttons" data-dt-idx="5" tabindex="0">5</a></li><li class="paginate_button "><a href="#" aria-controls="datatable-buttons" data-dt-idx="6" tabindex="0">6</a></li><li class="paginate_button next" id="datatable-buttons_next"><a href="#" aria-controls="datatable-buttons" data-dt-idx="7" tabindex="0">Next</a></li></ul></div>
       -->
      </div>
      </div>
   </div>
	  
	  </c:if>
	  
	  
	 	<%--  <center> 
	  
	  <br>
	  
	  <div style="width: 60%;text-align: center;">
	  	<input type="button" class="btn btn-warning btn-sm" value="프로필수정"
	  	  onclick="location.href='personalwriteform.do'">
	  </div>

	  
	  </center> --%>
	  



	  <br><br>

	  
	  <center>

<a id="to-top" href="#top" class="btn btn-dark btn-lg">
				<i class="fa fa-chevron-up fa-fw fa-1x"></i></a>


</center>



<br><br><br>

	  
	  
   <%--    <!-- jQuery -->
    <script src="${root}/save/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${root}/save/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="${root}/save/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${root}/save/vendors/nprogress/nprogress.js"></script>
    <!-- FullCalendar -->
    <script src="${root}/save/vendors/moment/min/moment.min.js"></script>
    <script src="${root}/save/vendors/fullcalendar/dist/fullcalendar.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="${root}/save/build/js/custom.min.js"></script> --%>
    
    
    
     
    
    

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
	  
	  
	  
	   <!-- jQuery -->
   <%--  <script src="${root}/save/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${root}/save/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="${root}/save/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${root}/save/vendors/nprogress/nprogress.js"></script>
    <!-- FullCalendar -->
    <script src="${root}/save/vendors/moment/min/moment.min.js"></script>
    <script src="${root}/save/vendors/fullcalendar/dist/fullcalendar.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="${root}/save/build/js/custom.min.js"></script>  --%>
	  
	  
	<%--  <!-- jQuery -->
    <script src="${root}/save/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${root}/save/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="${root}/save/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${root}/save/vendors/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="${root}/save/vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="${root}/save/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="${root}/save/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="${root}/save/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="${root}/save/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="${root}/save/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="${root}/save/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="${root}/save/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="${root}/save/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="${root}/save/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="${root}/save/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="${root}/save/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="${root}/save/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="${root}/save/vendors/jszip/dist/jszip.min.js"></script>
    <script src="${root}/save/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="${root}/save/vendors/pdfmake/build/vfs_fonts.js"></script> --%>
	  
	  	
	</body>
</html>