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


<html>
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
	





		<script type="text/javascript">
		var idx=0;
		function addFileForm(){
		    
		    var tb1 = document.getElementById("file_table");
		    if(9 >= tb1.rows.length) {
		     var idx = getObj().parentElement.rowIndex + 1;
		     //alert(idx);
		     $("#cnt").val(idx);
		     var trow= tb1.insertRow(idx);
		     var uploadOBJ="<tr><td bgcolor='#fff0f5'>이미지</td><td>"+
		    	 "<input name='upfile' type='file' id='f_id'> <input type=\"button\" class=\"btn btn-success btn-sm\" value=\"추가\" OnClick=\"javascript:addFileForm();\" /> <input type=\"button\" class=\"btn btn-info btn-sm\" value=\"삭제\" OnClick=\"javascript:deleteRow();\" />"+
		    	 "</td></tr>";
		     trow.innerHTML = uploadOBJ;
		    } else {
		     alert("문서파일은 10개 이상 접수할 수  없습니다.");
		     return;
		    }
		   }
		   
		   function getObj()
		   {
		       var obj = event.srcElement
		       while (obj.tagName !='TD') //TD가 나올때까지의 Object추출
		       {
		           obj = obj.parentElement
		       }
		       return obj
		   }
		   
		   function deleteRow(){
		    var tb1 = document.getElementById("file_table");
		   
		    var idx = getObj().parentElement.rowIndex;
		   
		    if(tb1.rows.length-1 !=0){
		     var tRow = tb1.deleteRow(idx);
		    }else{
		      document.getElementById('f_id').select();
		         document.selection.clear();
		    }
		   }
		
		   
		   
		   
		 //category1 변경시 이메일주소를 category로 보냄
		 //직접입력인 경우에는 category 의 기존값을 지우고 포커스 보내기

		 $(function(){

		 $("#category1").change(function(){
		 	if($(this).val()==" "){
		 		$("#category").val("");
		 		$("#category").focus();
		 	}else{
		 		$("#category").val($(this).val());
		 	}
		 });

		 });
		   
		 
		 
		//gender1 변경시 이메일주소를 gender로 보냄
		 //직접입력인 경우에는 gender 의 기존값을 지우고 포커스 보내기

		 $(function(){

		 $("#gender1").change(function(){
		 	if($(this).val()==" "){
		 		$("#gender").val("");
		 		$("#gender").focus();
		 	}else{
		 		$("#gender").val($(this).val());
		 	}
		 });

		 });
		
		
		
		//grade1 변경시 이메일주소를 grade로 보냄
		 //직접입력인 경우에는 grade 의 기존값을 지우고 포커스 보내기

		 $(function(){

		 $("#grade1").change(function(){
		 	if($(this).val()==" "){
		 		$("#grade").val("");
		 		$("#grade").focus();
		 	}else{
		 		$("#grade").val($(this).val());
		 	}
		 });

		 });
		
		
		
		
		//department1 변경시 이메일주소를 department로 보냄
		 //직접입력인 경우에는 department 의 기존값을 지우고 포커스 보내기

		 $(function(){

		 $("#department1").change(function(){
		 	if($(this).val()==" "){
		 		$("#department").val("");
		 		$("#department").focus();
		 	}else{
		 		$("#department").val($(this).val());
		 	}
		 });

		 });
		
		
		//work1 변경시 이메일주소를 work로 보냄
		 //직접입력인 경우에는 work 의 기존값을 지우고 포커스 보내기

		 $(function(){

		 $("#work1").change(function(){
		 	if($(this).val()==" "){
		 		$("#work").val("");
		 		$("#work").focus();
		 	}else{
		 		$("#work").val($(this).val());
		 	}
		 });

		 });
		
		   
		   
		</script>
		
		
		
		<script type="text/javascript">
	function check(f){
		// 아이디 길이 체크
		var id = f.id.value;
		if(id.length<5 || id.length>12){
			alert("아이디는 5~12글자로 만들어 주세요")
			return false;
		}
		// 아이디에 공백 포함 여부 확인
		if(id.indexOf(' ')>=0){
			alert("아이디에 공백이 포함되어 있습니다\n다시 입력해 주세요");
			return false;
		}
		// 알파벳과 숫자만 허용
		for(var i = 0; i<id.length; i++){
			var ch = id.charAt(i);
			if(!(ch>='a'&&ch<='z' || ch>='A'&&ch<='Z' || ch>='0'&&ch<='9')){
				alert("알파벳과 숫자로만 입력해 주세요");
				return false;
			}
		}
	}
</script>
		
		<script type="text/javascript">
		
		
		function check(f)
		{
	
			if(f.id.value==''){
				alert("아이디를 입력해 주세요");
				return false;
			}
			if(f.name.value==''){
				alert("이름을 입력해 주세요");
				return false;
			}
			if(f.gender.value==''){
				alert("성별을 선택해 주세요");
				return false;
			}
			if(f.address.value==''){
				alert("주소를 입력해 주세요");
				return false;
			}
			if(f.hp.value==''){
				alert("핸드폰을 입력해 주세요");
				return false;
			}
			if(f.email.value==''){
				alert("이메일을 입력해 주세요");
				return false;
			}
			if(f.grade.value==''){
				alert("직급을 선택해 주세요");
				return false;
			}
			 
			if(f.department.value==''){
				alert("부서를 선택해 주세요");
				return false;
			} 
			
			if(f.work.value==''){
				alert("재직여부를 선택해 주세요");
				return false;
			}
			 
			
			
		}
		
		
		
	</script>
		
		
		
				
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
			
			 <img class="img-responsive" src="${root}/save/ico/favicon6.png" alt="logo">
			
			
			<br><br>
		
		</center>


</c:if>




<c:if test="${sessionScope.m_id_.equals(sessionScope.m_id_)}">


	
		<form action="personalboardupdatepass.do" enctype="multipart/form-data" method="post">
		
		
		
		
		
 		<table id="personalboardupdatepass" class="table table-bordered">
 		
 	<!-- 	<table id="file_table" class="table table-bordered"> -->
 		
 		 <tr>
 		 	<td align="center"><b style="color: gray;">아이디(Id)</b></td>
 		 	<td align="center">
 		 		<input type="text" name="id" id="id" required="required" class="form-control" 
 		 		value="${sessionScope.m_id_}" readonly="readonly">
 		 	</td>
 		 </tr>
 		 <tr>
 		 	<td align="center"><b style="color: gray;">이름(Name)</b></td>
 		 	<td align="center">
 		 		<input type="text" name="name" id="name" required="required" class="form-control"
 		 		value="${sessionScope.m_nick}" readonly="readonly">
 		 	</td>
 		 </tr>
 		 
 		 
 		 
 		  <!-- <tr>
 		 	<td align="center"><b style="color: gray;">아이디(Id)</b></td>
 		 	<td align="center">
 		 		<input type="text" name="id" id="id" required="required" class="form-control" 
 		 		placeholder="공백없이, 5~12글자 영어+숫자 조합">
 		 	</td>
 		 </tr>
 		 <tr>
 		 	<td align="center"><b style="color: gray;">이름(Name)</b></td>
 		 	<td align="center">
 		 		<input type="text" name="name" id="name" required="required" class="form-control"
 		 		placeholder="한글 ">
 		 	</td>
 		 </tr> -->
 		 
 		 
 		 
 		 <tr>
					<td align="center"><b style="color: gray;">성별(Gender)</b></td>
				<td align="center">
		<input type="text" name="gender" id="gender" class="form-control" required="required" placeholder="직접입력 또는 성별선택"
		value="${personaldto.gender}">
		
			<div class="form-group">
			
			<select name="gender1" id="gender1">
				<option value=" ">직접입력</option>
				<option value="남자">남자</option>
				<option value="여자">여자</option>				
			</select>
		</div>
	</td>
		</tr>
 		 
 		 
 		  <tr>
 		 	<td align="center"><b style="color: gray;">주소(Address)</b></td>
 		 	<td align="center">
 		 		<input type="text" name="address" id="address" required="required" class="form-control"
 		 		placeholder="신주소, 도로명 포함  예 ) 광주광역시 광산구 수등로 94번길 31" value="${personaldto.address}">
 		 	</td>
 		 </tr>
 		 <tr>
 		 	<td align="center"><b style="color: gray;">핸드폰(Hp)</b></td>
 		 	<td align="center">
 		 		<input type="text" name="hp" id="hp" required="required" class="form-control"
 		 		placeholder="-없이,  예 ) 01012345678" value="${personaldto.hp}">
 		 	</td>
 		 </tr>
 		 <tr>
 		 	<td align="center"><b style="color: gray;">이메일(Email)</b></td>
 		 	<td align="center">
 		 		<input type="text" name="email" id="email" required="required" class="form-control"
 		 		placeholder="예) sunnyfactory@factorysunny.com" value="${personaldto.email}">
 		 	</td>
 		 </tr>
 		
 		 
 		 
 		 <tr>
					<td align="center"><b style="color: gray;">직급(Grade)</b></td>
				<td align="center">
		<input type="text" name="grade" id="grade" class="form-control" required="required" placeholder="직접입력 또는 직급선택"
		value="${personaldto.grade}">
		
			<div class="form-group">
			
			<select name="grade1" id="grade1">
				<option value=" ">직접입력</option>
				<option value="회장">회장</option>
				<option value="사장">사장</option>	
				<option value="전무">전무</option>
				<option value="부장">부장</option>
				<option value="차장">차장</option>	
				<option value="과장">과장</option>
				<option value="대리">대리</option>	
				<option value="계장">계장</option>	
				<option value="주임">주임</option>
				<option value="사원">사원</option>
				<option value="인턴">인턴</option>
				<option value="계약">계약</option>
				<option value="일용">일용</option>
				<option value="기타">기타</option>												
			</select>
		</div>
	</td>
		</tr>
		
		
		
		<tr>
					<td align="center"><b style="color: gray;">부서(Department)</b></td>
				<td align="center">
		<input type="text" name="department" id="department" class="form-control" required="required" placeholder="직접입력 또는 부서선택"
		value="${personaldto.department}">
		
			<div class="form-group">
			
			<select name="department1" id="department1">
				<option value=" ">직접입력</option>
				<option value="인사">인사</option>
				<option value="총무">총무</option>	
				<option value="경리">경리</option>
				<option value="회계">회계</option>
				<option value="구매">구매</option>
				<option value="원가">원가</option>				
				<option value="개발">개발</option>
				<option value="금형">금형</option>
				<option value="기술">기술</option>
				<option value="설계">설계</option>
				<option value="품질">품질</option>
				<option value="생산">생산</option>	
				<option value="제조">제조</option>
				<option value="영업">영업</option>	
				<option value="출하">출하</option>												
			</select>
		</div>
	</td>
		</tr>
 		 
 		 
 		  <tr>
					<td align="center"><b style="color: gray;">재직여부(Work)</b></td>
				<td align="center">
		<input type="text" name="work" id="work" class="form-control" required="required" placeholder="직접입력 또는 재직여부선택"
		value="${personaldto.work}">
		
			<div class="form-group">
			
			<select name="work1" id="work1">
				<option value=" ">직접입력</option>
				<option value="재직">재직</option>
				<!-- <option value="휴직">휴직</option> -->
				<option value="퇴직">퇴직</option>				
			</select>
		</div>
	</td>
		</tr>
 		 
 		 
 		 
 		<!-- <tr>
					<td align="center"><b style="color: gray;">분류(Category)</b></td>
				<td align="center">
		<input type="text" name="category" id="category" class="form-control" required="required" placeholder="직접입력 또는 분류선택">
		
			<div class="form-group">
			
			<select name="category1" id="category1">
				<option value=" ">직접입력</option>
				<option value="알림">알림</option>
				<option value="수상">수상</option>
				<option value="신제품">신제품</option>	
				<option value="특허">특허</option>
				<option value="야유회">야유회</option>							
			</select>
		</div>
	</td>
		</tr> -->
		
 		<!--  <tr>
 		 	<td align="center"><b style="color: gray;">내용(Content)</b></td>
 		 	<td align="center">
 		 		<b style="color: gray;"><textarea rows="5" cols="20" name="content" id="content" required="required"></textarea></b>
 		 	</td>
 		 </tr> -->
         <tr>
          <td align="center"><b style="color: gray;">프로필사진(image)</b></td>
          
          <td align="center">
          
           <input name="upfile" type="file" id="f_id" class="form-control" required="required" readonly="readonly">
         
         	<h5><a style="color: black;">
         	<br>1. 업로드는  이미지파일 한정
         	<br>2. 파일제목은 영문으로 
         	<br>3. 특수문자포함 안됨 
         	<br>4. 100M이하 용량<br>
         	<br>파일만 업로드 가능합니다.</a></h5>
         	<h5>
         	<a style="color: blue;">5. 업데이트 시, <br>파일은 기존 파일이 유지됩니다.</a><br>
         	<br><a style="color: red;">6. 파일 변동 시, <br>글삭제 후 재작성 해주세요.</a><br></h5>
         
         		<%-- <input type="submit" value="업로드" class="btn btn-primary">    
         		<input type="button" value="목록"  class="btn btn-warning btn-sm"
					 onclick="location.href='list.do?pageNum=${pageNum}'"> --%>
				<%-- <input type="hidden" name="m_id" value="${sessionScope.m_id_}">	 --%> 
				
         	   <input type="hidden" name="num" value="${num}">
		 				<input type="hidden" name="pageNum" value="${pageNum}">
		 				
		 				
         		<input type="submit" value="업데이트" class="btn btn-primary">    
         		<input type="button" value="목록"  class="btn btn-warning btn-sm"
					 onclick="location.href='list.do?pageNum=${pageNum}'">
				<input type="hidden" name="m_id" value="${sessionScope.m_id_}">	 
         	</td>
         	
         <!--  <td>
            <input name="upfile" type="file" id="f_id" class="form-control">
            <input type="button" class="btn btn-success btn-sm" value="추가" 
            	OnClick="javascript:addFileForm();" />ㄴ
            <input type="button" class="btn btn-info btn-sm" value="삭제" 
            	OnClick="javascript:deleteRow();" />
          </td> -->
         </tr>
         <%-- <tr>
         	<td>
         		<input type="submit" value="업로드" class="btn btn-info">    
         		<input type="button" value="목록"  class="btn btn-warning btn-sm"
					 onclick="location.href='list.do?pageNum=${pageNum}'">
         	</td>
         </tr> --%>
      </table>  
      
      
      
      
</form>


</c:if>






<center>

<a id="to-top" href="#top" class="btn btn-dark btn-lg">
				<i class="fa fa-chevron-up fa-fw fa-1x"></i></a>


</center>

<br><br>


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


	<!-- jQuery -->
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
    <script src="${root}/save/vendors/pdfmake/build/vfs_fonts.js"></script>
	


	</body>
	
	
	
</html>