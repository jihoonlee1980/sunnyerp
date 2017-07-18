<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="root" value="<%=request.getContextPath() %>"/>


<%@page import="personal.model.PersonalDto"%>

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
    
    
    <style>
    canvas{
      -moz-user-select: none;
      -webkit-user-select: none;
      -ms-user-select: none;
    }
    #chartjs-tooltip {
      opacity: 1;
      position: absolute;
      background: rgba(0, 0, 0, .7);
      color: white;
      border-radius: 3px;
      -webkit-transition: all .1s ease;
      transition: all .1s ease;
      pointer-events: none;
      -webkit-transform: translate(-50%, 0);
      transform: translate(-50%, 0);
    }

    .chartjs-tooltip-key {
      display: inline-block;
      width: 10px;
      height: 10px;
    }
  </style>
    
    
    <script type="text/javascript">



$(function(){
	
	
	flatpickr("#reportrange1, #reportrange2");
	
});


</script>
    
    
    
     <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="${root}/save/vendors/Chart.js/dist/Chart.bundle.js"></script>
    
    
   <!--   <script type="text/javascript">
    
    window.onpageshow=function(e) {
    	
    	if(e.persisted) {
    		
    		
    		alert("test");
    		
    	}
    	
    	
    }; -->
    
    
    <style>
    canvas {
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
    </style>
  
    
    
    <link href="${root}/save/dist/flatpickr.min.css" rel="stylesheet" type="text/css">
   <script src="${root}/save/dist/flatpickr.min.js"></script>
    
    
  </head>

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
             
                
               <%--  <c:forEach var="a" items="${list}">
                    
                    <img src="${root}/save/${a.filename}" alt="..." class="img-circle profile_img">
               
                    
                    </c:forEach>
                
                
                 <form action="upload.do" enctype="multipart/form-data" method="post">
            
            <table id="file_table" class="table table-bordered">
              
                 <input name="upfile" type="file" id="f_id" class="img-circle profile_img" required="required" alt="...">
                
                
                
                <input type="submit" value="업로드" class="btn btn-info"> 
              <input type="hidden" name="m_id" value="${sessionScope.m_id_}">	
              
              
               </table>
            
            </form> --%>
                
                
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
                    
                    
                    <c:forEach var="a" items="${list}">
                    
                    <img src="${root}/save/${a.filename}">
               
                    
                    </c:forEach>
                    
                   <%--  <img src="${root}/save/${dto.filename}">
                    
                   ${dto.filename}
                   --%>
                    
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



        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row tile_count">
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-area-chart"></i> 매입(천원)</span>
              <div class="count">6,000</div>
              <span class="count_bottom"><i class="green">4% </i><!-- &nbsp;&nbsp; 7월1주차 --></span>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-bar-chart"></i> 매출(천원)</span>
              <div class="count">12,000</div>
              <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>3% </i><!-- &nbsp;&nbsp; 7월1주차 --></span>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-line-chart"></i> 영업이익(천원)</span>
              <div class="count green">5,000</div>
              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>50% </i><!-- &nbsp;&nbsp; 7월1주차 --></span>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-dashboard"></i> 생산목표량(EA)</span>
              <div class="count">5,000</div>
              <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i><!-- &nbsp;&nbsp; 7월1주차 --></span>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-cogs"></i> 생산량(EA)</span>
              <div class="count">2,500</div>
              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i><!-- &nbsp;&nbsp; 7월1주차 --></span>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-users"></i> 달성률(%)</span>
              <div class="count green">50</div>
              <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i><!-- &nbsp;&nbsp; 7월1주차 --></span>
            </div>
          </div>
          <!-- /top tiles -->

          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="dashboard_graph">

                <div class="row x_title">
                  <div class="col-md-6">
                    <h3>생산현황 <small>&nbsp;&nbsp;공정별 진척</small></h3>
                  </div>
                  <div class="col-md-6">
                  
                  
                  	 <!-- <div id="reportrange3" name="reportrange3" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                     
                      <span>December 30, 2014 - January 28, 2015</span> 
                     
						 <input type="submit" value="조회" size="5"
						 onclick="">
                      <b class="caret"></b>
                    </div> -->
                  
                   <div id="reportrange" class="pull-left"  style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                      <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                      <!-- <span>December 30, 2014 - January 28, 2015</span> --> 
                      <input type="text" name="reportrange1" size="10" id="reportrange2"
						 required="required" autofocus="autofocus" placeholder="조회기간선택">
						 
                     <!--  <b class="caret"></b> -->
                   <!--  </div>
                  	
                  
                  	<div id="reportrange" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc"> -->
                     &nbsp;&nbsp;
                     ~
                     &nbsp;&nbsp;
                     
                      <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                      <!-- <span>December 30, 2014 - January 28, 2015</span> --> 
                      <input type="text" name="reportrange2" size="10" id="reportrange2"
						 required="required" autofocus="autofocus" placeholder="조회기간선택">
						 
						 
						 <input type="submit" value="조회" size="5"
						 onclick="">
						 
						 
                      <!-- <b class="caret"></b> -->
                    </div>
                  
                  <!--  
                   <div id="reportrange3" name="reportrange3" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                     
                      <span>December 30, 2014 - January 28, 2015</span> 
                     
						 
                      <b class="caret"></b>
                    </div> -->
                   
                    
                   
                  </div>
                </div>

               <!--  <div class="col-md-9 col-sm-9 col-xs-12">
                  <div id="chart_plot_01" class="demo-placeholder"></div> -->
                  
                  
                   <%-- <div id="container" style="width: 100%;">
        <canvas id="canvas"></canvas>
    </div>
    <button id="randomizeData">Randomize Data</button>
    <button id="addDataset">Add Dataset</button>
    <button id="removeDataset">Remove Dataset</button>
    <button id="addData">Add Data</button>
    <button id="removeData">Remove Data</button>
    <script>
        var MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

        var randomScalingFactor = function() {
            return (Math.random() > 0.5 ? 1.0 : -1.0) * Math.round(Math.random() * 100);
        };
        var randomColorFactor = function() {
            return Math.round(Math.random() * 255);
        };
        var randomColor = function() {
            return 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',.7)';
        };

        var horizontalBarChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [{
                label: 'Dataset 1',
                backgroundColor: "rgba(220,220,220,0.5)",
                data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
            }, {
                hidden: true,
                label: 'Dataset 2',
                backgroundColor: "rgba(151,187,205,0.5)",
                data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
            }, {
                label: 'Dataset 3',
                backgroundColor: "rgba(151,187,205,0.5)",
                data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
            }]

        };

        window.onload = function() {
            var ctx = document.getElementById("canvas").getContext("2d");
            window.myHorizontalBar = new Chart(ctx, {
                type: 'horizontalBar',
                data: horizontalBarChartData,
                options: {
                    // Elements options apply to all of the options unless overridden in a dataset
                    // In this case, we are setting the border of each horizontal bar to be 2px wide and green
                    elements: {
                        rectangle: {
                            borderWidth: 2,
                            borderColor: 'rgb(0, 255, 0)',
                            borderSkipped: 'left'
                        }
                    },
                    responsive: true,
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Chart.js Horizontal Bar Chart'
                    }
                }
            });

        };

        $('#randomizeData').click(function() {
            var zero = Math.random() < 0.2 ? true : false;
            $.each(horizontalBarChartData.datasets, function(i, dataset) {
                dataset.backgroundColor = randomColor();
                dataset.data = dataset.data.map(function() {
                    return zero ? 0.0 : randomScalingFactor();
                });

            });
            window.myHorizontalBar.update();
        });

        $('#addDataset').click(function() {
            var newDataset = {
                label: 'Dataset ' + horizontalBarChartData.datasets.length,
                backgroundColor: randomColor(),
                data: []
            };

            for (var index = 0; index < horizontalBarChartData.labels.length; ++index) {
                newDataset.data.push(randomScalingFactor());
            }

            horizontalBarChartData.datasets.push(newDataset);
            window.myHorizontalBar.update();
        });

        $('#addData').click(function() {
            if (horizontalBarChartData.datasets.length > 0) {
                var month = MONTHS[horizontalBarChartData.labels.length % MONTHS.length];
                horizontalBarChartData.labels.push(month);

                for (var index = 0; index < horizontalBarChartData.datasets.length; ++index) {
                    horizontalBarChartData.datasets[index].data.push(randomScalingFactor());
                }

                window.myHorizontalBar.update();
            }
        });

        $('#removeDataset').click(function() {
            horizontalBarChartData.datasets.splice(0, 1);
            window.myHorizontalBar.update();
        });

        $('#removeData').click(function() {
            horizontalBarChartData.labels.splice(-1, 1); // remove the label first

            horizontalBarChartData.datasets.forEach(function (dataset, datasetIndex) {
                dataset.data.pop();
            });

            window.myHorizontalBar.update();
        });
    </script> --%>
                  
                  
                  
                   <div id="canvas-holder1" style="width:100%;">
    <canvas id="chart1"/>
  </div>
  <script>
    window.count = 0;
    Chart.defaults.global.pointHitDetectionRadius = 1;
    var customTooltips = function(tooltip) {

      // Tooltip Element
      var tooltipEl = $('#chartjs-tooltip');

      if (!tooltipEl[0]) {
        $('body').append('<div id="chartjs-tooltip"></div>');
        tooltipEl = $('#chartjs-tooltip');
      }

      // Hide if no tooltip
      if (!tooltip.opacity) {
        tooltipEl.css({
          opacity: 0
        });
        $('.chartjs-wrap canvas')
          .each(function(index, el) {
            $(el).css('cursor', 'default');
          });
        return;
      }

      $(this._chart.canvas).css('cursor', 'pointer');

      // Set caret Position
      tooltipEl.removeClass('above below no-transform');
      if (tooltip.yAlign) {
        tooltipEl.addClass(tooltip.yAlign);
      } else {
        tooltipEl.addClass('no-transform');
      }

      // Set Text
      if (tooltip.body) {
        var innerHtml = [
          (tooltip.beforeTitle || []).join('\n'), (tooltip.title || []).join('\n'), (tooltip.afterTitle || []).join('\n'), (tooltip.beforeBody || []).join('\n'), (tooltip.body || []).join('\n'), (tooltip.afterBody || []).join('\n'), (tooltip.beforeFooter || [])
          .join('\n'), (tooltip.footer || []).join('\n'), (tooltip.afterFooter || []).join('\n')
        ];
        tooltipEl.html(innerHtml.join('\n'));
      }

      // Find Y Location on page
      var top = 0;
      if (tooltip.yAlign) {
        if (tooltip.yAlign == 'above') {
          top = tooltip.y - tooltip.caretHeight - tooltip.caretPadding;
        } else {
          top = tooltip.y + tooltip.caretHeight + tooltip.caretPadding;
        }
      }

      var position = $(this._chart.canvas)[0].getBoundingClientRect();

      // Display, position, and set styles for font
      tooltipEl.css({
        opacity: 1,
        width: tooltip.width ? (tooltip.width + 'px') : 'auto',
        left: position.left + tooltip.x + 'px',
        top: position.top + top + 'px',
        fontFamily: tooltip._fontFamily,
        fontSize: tooltip.fontSize,
        fontStyle: tooltip._fontStyle,
        padding: tooltip.yPadding + 'px ' + tooltip.xPadding + 'px',
      });
    };
    var randomScalingFactor = function() {
      return Math.round(Math.random() * 1000);
    };
    var lineChartData = {
      labels: ["사출", "프레스", "압출", "조립", "도장", "인쇄", "후가공"],
      datasets: [{
        label: "생산목표량(EA)",
        data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
      }, {
        label: "생산량(EA)",
        data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
      }]
    };

    window.onload = function() {
      var chartEl = document.getElementById("chart1");
      window.myLine = new Chart(chartEl, {
        type: 'line',
        data: lineChartData,
        options: {
          title:{
            display:true,
            text:'박스를 누르면, 해당 데이터만 확인할 수 있습니다.'
          },
          tooltips: {
            enabled: false,
            custom: customTooltips
          }
        }
      });
    };
  </script>
                  
                  
                  
                </div>
                
                
                
                
             
                
                <%--  <div style="width: 100%">
        <canvas id="canvas"></canvas>
    </div>
    <button id="randomizeData">Randomize Data</button>
    <script>
    var randomScalingFactor = function() {
        return (Math.random() > 0.5 ? 1.0 : -1.0) * Math.round(Math.random() * 100);
    };
    var randomColorFactor = function() {
        return Math.round(Math.random() * 255);
    };
    var randomColor = function() {
        return 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',.7)';
    };

    var barChartData = {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [{
            label: 'Dataset 1',
            backgroundColor: "rgba(220,220,220,0.5)",
            yAxisID: "y-axis-1",
            data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
        }, {
            label: 'Dataset 2',
            backgroundColor: "rgba(151,187,205,0.5)",
            yAxisID: "y-axis-2",
            data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
        }, {
            label: 'Dataset 3',
            backgroundColor: [randomColor(), randomColor(), randomColor(), randomColor(), randomColor(), randomColor(), randomColor()],
            yAxisID: "y-axis-1",
            data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
        }]

    };
    window.onload = function() {
        var ctx = document.getElementById("canvas").getContext("2d");
        window.myBar = Chart.Bar(ctx, {
            data: barChartData, 
            options: {
                responsive: true,
                hoverMode: 'label',
                hoverAnimationDuration: 400,
                stacked: false,
                title:{
                    display:true,
                    text:"Chart.js Bar Chart - Multi Axis"
                },
                scales: {
                    yAxes: [{
                        type: "linear", // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
                        display: true,
                        position: "left",
                        id: "y-axis-1",
                    }, {
                        type: "linear", // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
                        display: true,
                        position: "right",
                        id: "y-axis-2",
                        gridLines: {
                            drawOnChartArea: false
                        }
                    }],
                }
            }
        });
    };

    $('#randomizeData').click(function() {
        $.each(barChartData.datasets, function(i, dataset) {
            if (Chart.helpers.isArray(dataset.backgroundColor)) {
                dataset.backgroundColor= [randomColor(), randomColor(), randomColor(), randomColor(), randomColor(), randomColor(), randomColor()];
            } else {
                dataset.backgroundColor= randomColor();
            }

            dataset.data = [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()];

        });
        window.myBar.update();
    });
    </script> --%>
                
                
                

                <div class="clearfix"></div>
              </div>
            </div>

          </div>
          <br />

         
	<%--  <!-- Footer -->
    <footer>
    <!-- Footer -->
    <!-- <footer> -->
 
					
						<center>

<a id="to-top" href="#top" class="btn btn-dark btn-lg">
				<i class="fa fa-chevron-up fa-fw fa-1x"></i></a>




</center>
        
    </footer> --%>


</div>
</div>







	


      

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
