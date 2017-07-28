<!DOCTYPE html>

<%@page import="vendor.model.VendorDto"%>
<%@page import="vendor.model.VendorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
		
		   
		   
		</script>
		
		
		<script type="text/javascript">
		
		
		function check(f)
		{
			if(f.gender.value==''){
				alert("성별을 선택해 주세요");
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
			/* 
			if(f.f_id.value==''){
				alert("파일을 선택해 주세요");
				return false;
			} */
			 
			/* if(f.menu4.value==''){
				alert("태그를 선택해 주세요");
				return false;
			}  */
			
			/* if(f.content.value==''){
				alert("내용을 입력해 주세요");
				return false;
			} */
			
		}
		
		
		
	</script>
	
	
		<script type="text/javascript">
		
		
		
		(function( factory ){
			if ( typeof define === 'function' && define.amd ) {
				// AMD
				define( ['jquery', 'datatables.net', 'datatables.net-buttons'], function ( $ ) {
					return factory( $, window, document );
				} );
			}
			else if ( typeof exports === 'object' ) {
				// CommonJS
				module.exports = function (root, $) {
					if ( ! root ) {
						root = window;
					}

					if ( ! $ || ! $.fn.dataTable ) {
						$ = require('datatables.net')(root, $).$;
					}

					if ( ! $.fn.dataTable.Buttons ) {
						require('datatables.net-buttons')(root, $);
					}

					return factory( $, root, root.document );
				};
			}
			else {
				// Browser
				factory( jQuery, window, document );
			}
		}(function( $, window, document, undefined ) {
		'use strict';
		var DataTable = $.fn.dataTable;


		var _link = document.createElement( 'a' );

		/**
		 * Convert a `link` tag's URL from a relative to an absolute address so it will
		 * work correctly in the popup window which has no base URL.
		 *
		 * @param  {node}     el Element to convert
		 */
		var _relToAbs = function( el ) {
			var url;
			var clone = $(el).clone()[0];
			var linkHost;

			if ( clone.nodeName.toLowerCase() === 'link' ) {
				_link.href = clone.href;
				linkHost = _link.host;

				// IE doesn't have a trailing slash on the host
				// Chrome has it on the pathname
				if ( linkHost.indexOf('/') === -1 && _link.pathname.indexOf('/') !== 0) {
					linkHost += '/';
				}

				clone.href = _link.protocol+"//"+linkHost+_link.pathname+_link.search;
			}

			return clone.outerHTML;
		};


		DataTable.ext.buttons.print = {
			className: 'buttons-print',

			text: function ( dt ) {
				return dt.i18n( 'buttons.print', 'Print' );
			},

			action: function ( e, dt, button, config ) {
				var data = dt.buttons.exportData( config.exportOptions );
				var addRow = function ( d, tag ) {
					var str = '<tr>';

					for ( var i=0, ien=d.length ; i<ien ; i++ ) {
						str += '<'+tag+'>'+d[i]+'</'+tag+'>';
					}

					return str + '</tr>';
				};

				// Construct a table for printing
				var html = '<table class="'+dt.table().node().className+'">';

				if ( config.header ) {
					html += '<thead>'+ addRow( data.header, 'th' ) +'</thead>';
				}

				html += '<tbody>';
				for ( var i=0, ien=data.body.length ; i<ien ; i++ ) {
					html += addRow( data.body[i], 'td' );
				}
				html += '</tbody>';

				if ( config.footer && data.footer ) {
					html += '<tfoot>'+ addRow( data.footer, 'th' ) +'</tfoot>';
				}

				// Open a new window for the printable table
				var win = window.open( '', '' );
				var title = config.title;

				if ( typeof title === 'function' ) {
					title = title();
				}

				if ( title.indexOf( '*' ) !== -1 ) {
					title= title.replace( '*', $('title').text() );
				}

				win.document.close();

				// Inject the title and also a copy of the style and link tags from this
				// document so the table can retain its base styling. Note that we have
				// to use string manipulation as IE won't allow elements to be created
				// in the host document and then appended to the new window.
				var head = '<title>'+title+'</title>';
				$('style, link').each( function () {
					head += _relToAbs( this );
				} );

				//$(win.document.head).html( head );
				win.document.head.innerHTML = head; // Work around for Edge

				// Inject the table and other surrounding information
				win.document.body.innerHTML =
					'<h1>'+title+'</h1>'+
					'<div>'+config.message+'</div>'+
					html;
				// $(win.document.body).html(
				// 	'<h1>'+title+'</h1>'+
				// 	'<div>'+config.message+'</div>'+
				// 	html
				// );

				if ( config.customize ) {
					config.customize( win );
				}

				setTimeout( function () {
					if ( config.autoPrint ) {
						win.print(); // blocking - so close will not
						win.close(); // execute until this is done
					}
				}, 250 );
			},

			title: '*',

			message: '',

			exportOptions: {},

			header: true,

			footer: false,

			autoPrint: true,

			customize: null
		};


		return DataTable.Buttons;
		}));
		
		
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
                  <%--   <img src="${root}/save/favicon.png" alt=""> --%>${sessionScope.m_nick}
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
              href="${root}/loginform.do"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
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

<br><br>


	
	
	<center>
	
		<table style="margin: 0 auto;" class="table table-bordered">
		
		<center>
		
		
		<br><br>
		
		<tr>
		<td align="center">작성일자(Date)</td>
				<td align="center">
		
		<b style="color: gray;">
					 <fmt:formatDate value="${dto.gaipday}" pattern="yyyy-MM-dd HH:mm:ss"/></b>
		</td></tr>
	
		
		<tr>
		<td align="center">등록자(Id&Name)</td>
				<td align="center">
		
		<b style="color: gray;">${dto.id}&nbsp;[${sessionScope.m_nick}]</b>
		</td></tr>
		
	
		
		<tr>
		<td align="center">협력사명(Companyname)</td>
				<td align="center">
		
		<b style="color: gray;">${dto.companyname}</b>
		
		</td></tr>
		
	
		
					<%-- <tr>
					<td align="center">성별(Gender)</td>
					<td align="center">
		
					<b style="color: gray;">${dto.gender}</b>
		
					</td>
					</tr> --%>
		
	
		
		
				<tr>
				<td align="center">협력사주소(Address)</td>
				<td align="center">
	    
				<b style="color: gray;">${dto.address}</b>
		
		
				</td>
				</tr>
	
			
			
	    
				<tr>
				<td align="center">전화번호(Phone)</td>
				<td align="center">
	
					<b style="color: gray;">${dto.phone}</b><br>
					
					</td>
					</tr>
					
				
					
					
					<%-- <tr>
					<td align="center">이메일(Email)</td>
				<td align="center">
					
					<b style="color: gray;">${dto.email}</b><br>
					
					</td></tr> --%>
			
				
					
					
				<%-- 	<tr>
					<td align="center">직급(Grade)</td>
				<td align="center">
					
					<b style="color: gray;">${dto.grade}</b><br>
					</td></tr> --%>
					
					
				<tr>
					<td align="center">팩스번호(Fax)</td>
				<td align="center">
					
					<b style="color: gray;">${dto.faxno}</b><br>
					
					
					</td></tr>
					
					
					<tr>
					<td align="center">이메일(Email)</td>
				<td align="center">
					
					<b style="color: gray;">${dto.email}</b><br>
					
					
					</td></tr>
				
				
					
					
					<tr>
					<td align="center">사업자등록번호(Companyno)</td>
				<td align="center">
					
					<b style="color: gray;">${dto.companyno}</b><br>
					
					
					</td></tr>
					
					
					<tr>
					<td align="center">공급처(sellvendor)</td>
				<td align="center">
					
					<b style="color: gray;">${dto.sellvendor}</b><br>
					
					
					</td></tr>
					
					
					<tr>
					<td align="center">발주처(buyvendor)</td>
				<td align="center">
					
					<b style="color: gray;">${dto.buyvendor}</b><br>
					
					
					</td></tr>
					
					
					<tr>
					<td align="center">수급처(productvendor)</td>
				<td align="center">
					
					<b style="color: gray;">${dto.productvendor}</b><br>
					
					
					</td></tr>
					
			
	
					
				<%-- <hr>
				
				
					<b style="color: black;">조회&nbsp;<b style="color: red;">[${dto.readcount}]</b></b>
					 --%>
				
					
		
				
				<br>
				
				  
	    
	<%-- 		<pre style="padding-left: 10px;font-size: 10pt;white-space:pre-wrap;
 word-wrap:break-word;">	
				${dto.content}</pre>
				
				
					
			
				
				<br> --%>
				
				
				
				<center>	
				
				
				
					
					  <c:forTokens var="im" items="${dto.filename}" delims=",">
					  
					  
				
					  
					  <!-- 이미지인지 일반 업로드 파일인지 구하기 -->
					  <!-- 파일명중에서 . 이후의 문자열을 얻음 -->			
					  <c:set var="ext" value="${fn:substringAfter(im,'.')}"/>
						
						
						
						
						<c:if test="${ext=='jpg' || ext=='JPG'|| ext=='gif'|| ext=='GIF'
							|| ext=='png'|| ext=='PNG' || ext=='MP4' || ext=='jpeg' || ext=='JPEG'}">
							<img src="${root}/save/${im}" style="max-width: 280px;max-height:280px;">
							  	<br><br>		
							  	
							  	
							  						  	
						</c:if>	
						
	</center>


<center>

<%-- <video width="300" height="200" controls="controls">
       <source src="${root}/save/${im}" type="video/mp4">
     
     </video> --%>
     
     
     
      <%--  <img class="img-responsive" src="${root}/save/${im}" width="300" height="200"> --%>
 
     
     
     </center>
     
  		
				<center>	
										  
				 </c:forTokens>					
			
			
			<%-- <c:if test="${sessionScope.m_id_.equals(dto.writer)}"> --%>
	
			<c:if test="${dto.filename!='no'}">					
			<tr>
			<td align="center">협력사사진(Image)</td>
				<td align="center">
				
				
					
					 <c:forTokens var="im" items="${dto.filename}" delims=",">					 
					  	 <a style="cursor: pointer;" href="download?clip=${im}">다운로드 : ${im}</a><br>
					 </c:forTokens>	
					 
			
					 
				 	
				</td>
			</tr>
			
			
			</center>
			
			<br>
			
			<center>
			
			</c:if>
			
				<%-- </c:if>	  --%>
				
		<%-- <tr>
				<td colspan="2">
					<b>조회 ${dto.readcount}</b>
					&nbsp;&nbsp;
					<answer>
				    	<a style="cursor: pointer;color: black;">댓글 ${dto.answer}</a><br>
				    </answer>	
				    
					<myanswer>
					<!-- 댓글 출력 -->
					<c:forEach var="a" items="${list}">
						<c:forEach var="sp" begin="1" end="${a.re_level}">
							&nbsp;&nbsp; <!-- level 1당 빈칸 두칸-->
						</c:forEach>
						<!-- 레벨이 0보다 크면 리플 이미지 출력 -->
						<c:if test="${a.re_level>0}">
							<img src="../image/re.gif">
						</c:if>
						${a.nick} : ${a.content}&nbsp;
						<span style="font-size: 9pt;color: gray;">
							<fmt:formatDate value="${a.writeday}" pattern="yyyy-MM-dd HH:mm"/>
							&nbsp;
							<reply><a style="cursor: pointer;" pk="${a.pk}">답글</a></reply>
							<replyform>
								<!-- 댓글 입력폼 -->
								<form action="answer.do" method="post" 
								class="form-inline"  style="margin-left: 30px;">
								  <div class="form-group">
								   <input type="text" name="nick" value=""
									  required="required" style="width: 80px;"
									  placeholder="닉네임"
									  class="form-control">
									
									<input type="text" name="content" style="width: 250px;"
									required="required" placeholder="댓글내용입력"
									 class="form-control" >
								
									<input type="password" name="pass" size="4" 
									required="required" placeholder="비밀번호"
									class="form-control" style="width: 80px;">  
									
									<!-- hidden -->
									<!--  방명록의 어떤글에 대한 댓글인지 알아야하므로 -->
									<input type="hidden" name="num" value="${dto.num}">
									<!-- 댓글 추가후 보던 페이지로 가야하므로 -->
									<input type="hidden" name="pageNum" value="${pageNum}">
									<input type="hidden" name="aPage" value="${aPage}">
									<input type="hidden" name="pk" class="pk">
									<input type="submit" value="답글" style="width: 60px;"
									  class="btn btn-danger btn-sm">
								  </div>	
								</form>
							</replyform>	
							&nbsp;
							<a href="javascript:answerupdate(${dto.num},${pageNum},${aPage},${a.pk})" style="cursor: pointer;">
								<img src="../image/cut.png" width="17"/></a>
							&nbsp;
							<a href="javascript:answerdel(${dto.num},${pageNum},${aPage},${a.pk})"
							 style="cursor: pointer;">
								<img src="../image/del.jpg" width="13"/></a>						
						</span>
						<br>
					</c:forEach>
					<!-- 페이징 -->
					<div style="margin-left: 200px;">
					<c:if test="${totalCount>perPage}">	
						<!-- 이전 -->
						<c:if test="${startPage>1}">
							<a href="content.do?num=${dto.num}&pageNum=${pageNum}&aPage=${startPage-1}"
								 style="color: black;"><b>Prev</b></a>
						</c:if>		
						&nbsp;		
						<c:forEach var="pg" begin="${startPage}" end="${endPage}">
						    <c:if test="${pg==aPage}">
								<a href="content.do?num=${dto.num}&pageNum=${pageNum}&aPage=${pg}"
								 style="color: red;"><b>${pg}</b></a>
							</c:if>
							<c:if test="${pg!=aPage}">
								<a href="content.do?num=${dto.num}&pageNum=${pageNum}&aPage=${pg}"
								 style="color: black;"><b>${pg}</b></a>
							</c:if>
							&nbsp;
						</c:forEach>	
						<!-- 다음 -->
						<c:if test="${endPage<totalPage}">
							<a href="content.do?num=${dto.num}&pageNum=${pageNum}&aPage=${endPage+1}"
								 style="color: black;"><b>Next</b></a>
						</c:if>
					</c:if>	
					</div>			
					<!-- 새글 댓글 입력폼 -->
					<form action="answer.do" method="post" class="form-inline">
					  <div class="form-group">
					   <input type="text" name="nick" value=""
						  required="required" style="width: 80px;"
						  placeholder="닉네임"
						  class="form-control">
						
						<input type="text" name="content" style="width: 250px;"
						required="required" placeholder="댓글내용입력"
						 class="form-control" >
					
						<input type="password" name="pass" size="4" 
						required="required" placeholder="비밀번호"
						class="form-control" style="width: 80px;">  
						
						<!-- hidden -->
						<!--  방명록의 어떤글에 대한 댓글인지 알아야하므로 -->
						<input type="hidden" name="num" value="${dto.num}">
						<!-- 댓글 추가후 보던 페이지로 가야하므로 -->
						<input type="hidden" name="pageNum" value="${pageNum}">
						
						<input type="submit" value="메모" style="width: 60px;"
						  class="btn btn-danger btn-sm">
					  </div>	
					</form>
									
					</myanswer>
				</td>
			</tr>	 --%>	
			
			
			
			<%--  <c:forEach var="a" items="${list}">
	  	   
	  	   
	  	  
	  	   
	  	   	 <tr>
	  	   	 	
	  	   	 	
	  	   	 
	  	   	 	
	  	   	 	<td style="text-align: center;"><b style="color: blue;">${a.writer}</b></td>
	  	   	 	
	  	   	 	<td style="text-align: center;color: orange;">
	  	   	 		<fmt:formatDate value="${a.gaipday}" pattern="yyyy-MM-dd hh:mm:ss"/>
	  	   	 	</td>
	  	   	 	<pre style="padding-left: 10px;font-size: 10pt;white-space:pre-wrap;
 word-wrap:break-word;"><b style="color: black;">[${a.content}]</b></pre></td>
	  	   	 	</td>
	  	   	 </tr>
	  	   </c:forEach> --%>
			
			

<%-- <c:if test="${sessionScope.m_id_==null}">




<center>
		
			
				<b style="color:lime;">댓글을 작성하시려면,
				<br>로그인(Login)을 해주세요.</b>
				
			
			<br><br>
			
					<input type="submit" class="btn" style="color: black" value="LOGIN" onclick="location.href='${root}/loginform.do'">
						<input type="button" class="btn" style="color: black" value="JOIN" onclick="location.href='${root}/joinForm.do'">
					
			<br><br>
			
			 <img class="img-responsive" src="${root}/save/ico/favicon12.png" alt="logo">
			
			
			<br><br>
		
		</center>


</c:if>






 <c:if test="${sessionScope.m_id_.equals(sessionScope.m_id_)}">

			
			
			<tr>					  		  		
	  			<td align="center" colspan="2">	
	  			 <form action="answer.do" method="post" class="form-inline">
	  				<!-- <img src="resources/img/smart.png" style="width:70px;"
	  				align="left"> -->
	  				
	  				
	  				
	  				<b style="color: gray;">
	  				<input type="text" name="content" id="content" style="width: 250px;"
						required="required" placeholder="댓글을 입력해 주세요."
						 class="form-control" ></b>
	  				
	  				<!-- hidden -->
	  				<input type="hidden" name="name" value="<%=name%>">
	  				<input type="hidden" name="id" value="<%=id%>">
	  				<input type="hidden" name="num" value="<%=dto.getNum()%>">
	  				<input type="hidden" name="go" value="<%=go%>">	  				
	  			
	  			
	  				<br>
	  				
	  				
	  				
	  				
	  				
	  				<!-- hidden -->
									<!--  방명록의 어떤글에 대한 댓글인지 알아야하므로 -->
									<input type="hidden" name="num" value="${dto.num}">
									<input type="hidden" name="m_id" value="${sessionScope.m_id_}">
									<input type="hidden" name="m_nick" value="${m_nick}">
									<input type="hidden" name="writer" value="${dto.writer}">
								
									
									<!-- 댓글 추가후 보던 페이지로 가야하므로 -->
									<input type="hidden" name="pageNum" value="${pageNum}">
									<input type="hidden" name="aPage" value="${aPage}">
									<input type="hidden" name="num" class="num">
									<!-- <input type="submit" value="답글" style="width: 60px;"
									  class="btn btn-danger btn-sm"> -->
	  				
	  			 <input type="submit" value="등록" class="btn btn-success">
			
			
			</form> 
	  			</td>	  			
	  		</tr>	
				
			</c:if> --%>


			
			
			<%-- <c:if test="${totalCount==0}">
	  		<td style="text-align: center;" colspan="5">
	  			<b style="color: gray;">등록된 게시물이 없습니다.</b>
	  		</td>	  		
	  	</c:if> --%>
	  	<%-- <c:if test="${totalCount>0}"> --%>
	  	  
	  <%-- 	</c:if> --%>
				
				<%-- [${myadto.content}] --%>
		
			<!-- <tr>
			<td align="center"><b style="color: gray;">실행</b></td>
				<td align="center"> -->
					<input type="button" value="글쓰기"  class="btn btn-primary"
					 onclick="location.href='vendorwriteform.do'">
					 <input type="button" value="목록"  class="btn btn-warning btn-sm"
					 onclick="location.href='list.do?pageNum=${pageNum}'"> 
					 
					 
					<c:if test="${sessionScope.m_id_==dto.id}">
					 
					<%--  <c:if test="${sessionScope.m_id_.equals(sessionScope.m_id_)}"> --%>
					 
					 <input type="button" value="수정"  class="btn btn-info btn-sm"
					 onclick="location.href='vendorboardupdatepassform.do?num=${dto.num}&pageNum=${pageNum}'">
					 <input type="button" value="삭제"  class="btn btn-danger btn-sm"
					 onclick="location.href='vendorboarddeletepassform.do?num=${dto.num}&pageNum=${pageNum}'">
					  </c:if>
				<!-- </td>
				
			</tr> -->
			
			
			<br><br><br>
			</center>
		
		
		</table>
		
		
		</center>
		
		
		<br><br>
		
		
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
		
		
	</body>
</html>















