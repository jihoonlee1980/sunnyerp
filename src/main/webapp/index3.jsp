<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>



<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%-- <%@ page session="false"%> --%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="root" value="<%=request.getContextPath() %>"/>


<%@page import="java.awt.Frame"%>
<%@page import="javax.swing.JFrame"%>
<%@page import="java.awt.*"%>
<%@page import="java.awt.event.*"%>
<%@page import="java.net.Socket"%>
<%@page import="javax.swing.*"%>
<%@page import="javax.swing.event.ListSelectionEvent"%>
<%@page import="javax.swing.event.ListSelectionListener"%>
<%@page import="javax.swing.text.Document"%>


<!DOCTYPE html>
<html lang="en">

 <head>
  
  
  
  
  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

     <link rel="shortcut icon" href="${root}/save/favicon.png">

    <title>SunnyErp</title>
    
    
   

    <!-- Bootstrap Core CSS -->
    <link href="${root}/save/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${root}/save/resources/css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${root}/save/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    

   <%--  <!-- Bootstrap -->
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
    <link href="${root}/save/build/css/custom.min.css" rel="stylesheet"> --%>
    
    
    
 <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<script type="text/javascript">

// 사용할 앱의 JavaScript 키를 설정해 주세요.

    Kakao.init('1629b9e9ecf89117d07874d5646cdae5');

 

    // 카카오톡 공유하기

    function sendKakaoTalk()

    {

    Kakao.Link.sendTalkLink({

      label: 'Sunny Factory',

      image: {

        src: 'resources/favicon.png',

        width: '300',

        height: '200'

      },

      webButton: {

        text: 'Sunny Factory',

        url: 'http://triservation.com/' // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.

      }

    });

    }

 

    // 카카오스토리 공유하기

      function shareStory() {

        Kakao.Story.share({

          url: 'https://triservation.com/',

          text: 'resources/favicon.png'

        });

      }

 

  

 

    // send to SNS

    function toSNS(sns, strTitle, strURL) {

        var snsArray = new Array();

        var strMsg = strTitle + " " + strURL;

var image = "resources/favicon.png";

 

        snsArray['twitter'] = "http://twitter.com/home?status=" + encodeURIComponent(strTitle) + ' ' + encodeURIComponent(strURL);

        snsArray['facebook'] = "http://www.facebook.com/share.php?u=" + encodeURIComponent(strURL);

snsArray['pinterest'] = "http://www.pinterest.com/pin/create/button/?url=" + encodeURIComponent(strURL) + "&media=" + image + "&description=" + encodeURIComponent(strTitle);

snsArray['band'] = "http://band.us/plugin/share?body=" + encodeURIComponent(strTitle) + "  " + encodeURIComponent(strURL) + "&route=" + encodeURIComponent(strURL);

        snsArray['blog'] = "http://blog.naver.com/openapi/share?url=" + encodeURIComponent(strURL) + "&title=" + encodeURIComponent(strTitle);

        snsArray['line'] = "http://line.me/R/msg/text/?" + encodeURIComponent(strTitle) + " " + encodeURIComponent(strURL);

snsArray['pholar'] = "http://www.pholar.co/spi/rephol?url=" + encodeURIComponent(strURL) + "&title=" + encodeURIComponent(strTitle);

snsArray['google'] = "https://plus.google.com/share?url=" + encodeURIComponent(strURL) + "&t=" + encodeURIComponent(strTitle);

        window.open(snsArray[sns]);

    }

 

    function copy_clip(url) {

        var IE = (document.all) ? true : false;

        if (IE) {

            window.clipboardData.setData("Text", url);

            alert("이 글의 단축url이 클립보드에 복사되었습니다.");

        } else {

            temp = prompt("이 글의 단축url입니다. Ctrl+C를 눌러 클립보드로 복사하세요", url);

        }

    }

</script>



</head>

<body>

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
     
        <!-- /.container-fluid -->
    </nav>
            
            
  
 


	<!-- Header -->
    <a name="about"></a>
    <div class="intro-header">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
       
                        
                        <center>
                
             <div id="carousel-example-generic" class="carousel slide">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="6"></li>
                           <!--  <li data-target="#carousel-example-generic" data-slide-to="7"></li> -->
                          
                           
                          
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                               <a target="_blank" href="http://factorysunny.com/">
                                <img class="img-responsive img-full" src="${root}/save/resources/img/slide/sunny3.png" alt=""></a>
                            </div>
                           <div class="item">
                                <a target="_blank" href="http://triservation.com/">
                                <img class="img-responsive img-full" src="${root}/save/resources/img/slide/sunny4.png" alt=""></a>
                            </div>
                            <div class="item">
                            <a target="_blank" href="http://javagram.cafe24.com/">
                                <img class="img-responsive img-full" src="${root}/save/resources/img/slide/sunny5.png" alt=""></a>
                            </div>
                            
                            <div class="item">
                            <a target="_blank" href="http://sunnygram.cafe24.com/">
                                <img class="img-responsive img-full" src="${root}/save/resources/img/slide/sunny6.png" alt=""></a>
                            </div>
                            <div class="item">
                          <a target="_blank" href="http://sunnyerp.net/">
                                <img class="img-responsive img-full" src="${root}/save/resources/img/slide/sunny8.png" alt=""></a>
                            </div>
                            <div class="item">
                            <a target="_blank" href="http://weathercoordinator.com/">
                                <img class="img-responsive img-full" src="${root}/save/resources/img/slide/sunny1.png" alt=""></a>
                            </div>
                            <div class="item">
                               <a target="_blank" href="http://writingsong.net/">
                                <img class="img-responsive img-full" src="${root}/save/resources/img/slide/sunny2.png" alt=""></a>
                            </div>
                            
                            <!-- <div class="item">
                                <img class="img-responsive img-full" src="resources/img/slide/sunny6.png" alt="">
                            </div>
                            
                            <div class="item">
                                <img class="img-responsive img-full" src="resources/img/slide/sunny8.png" alt="">
                            </div> -->
                           
                            
                            	
                           
                            
                            	

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                
                
            </div>
            </center>
                        
                        
                        
                        <center>
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h1>Sunny
                        <center><img class="img-responsive" src="${root}/save/resources/favicon.png" width="50" height="50" alt=""></center>
                        Factory</h1>
                <br><br><br>
                
              
		<%-- 	<%
				String root = request.getContextPath();

				DbConnect db = new DbConnect();
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				String sql = "";
				int cnt = 0;

				conn = db.getMyConnection();
				sql = "update countdb set cnt=cnt+1";
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.execute();

					sql = "select cnt from countdb";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					if (rs.next())
						cnt = rs.getInt("cnt");
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					db.dbClose(rs, pstmt, conn);
				}

				//카운트 숫자를 이미지로 변경하기(총 8자리)
				String s = String.valueOf(cnt);
				int rem = 8 - s.length();

				for (int i = 1; i <= rem; i++) {
			%>
			<img src="resources/img/0.png" style="width: 25px;">
			<%
				}
				for (int i = 0; i < s.length(); i++) {
					char ch = s.charAt(i);
			%>
			<img src="resources/img/<%=ch%>.png" style="width: 25px;">
			<%
				}
			%>
		 --%>
	
                    
                   <br><br><br><br>
                    
                      <a href="${root}/loginform.do"><button
					class="btn btn-primary">SunnyErp</button></a> 
					<%-- <a
				href="${root}/joinForm.do"><button
					class="btn btn-success">회원가입</button></a> --%>
					
					<!-- <a href="#"><button
					class="btn btn-primary">로그인</button></a> <a
				href="#"><button
					class="btn btn-success">회원가입</button></a> -->
					
					<a target="_blank"
				href="https://play.google.com/store/apps/details?id=com.jihoonlee.samsung.SunnyErp"><button
					class="btn btn-success">App</button></a>
                
            
            
        </div>

                    </div>
                </div>
        
                </center>
                        
                        <!-- <ul class="list-inline intro-social-buttons">
                            <li>
                                <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                            </li>
                            <li>
                                <a href="https://github.com/IronSummitMedia/startbootstrap" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                            </li>
                            <li>
                                <a href="#" class="btn btn-default btn-lg"><i class="fa fa-linkedin fa-fw"></i> <span class="network-name">Linkedin</span></a>
                            </li>
                        </ul> -->
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.intro-header -->



    <!-- Page Content -->

	<a  name="services"></a>
    <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">History(연혁)</h2><br>
                    <p class="lead"><a target="_blank" href="http://factorysunny.com/">Sunny Factory(써니 팩토리) 는!!</a>
                    <br><br>
                    2017. 04. 08<br>
                    	설립 되었습니다.<br><br></p>
              		<h5>-. [2017.05.25] &nbsp;2018 평창동계올림픽대회<br> 공모전 1차 합격<br><br></h5>     
                    <h5>-. [2017.06.15] &nbsp;정보통신산업진흥원<br>SW스타트업 창업지원 선정<br></h5>
                    <br><br>
                    
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="${root}/save/resources/img/office/office1.png" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

    <div class="content-section-b">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">About(일반)</h2><br>
                    <h5>1) 상&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;호 : 써니팩토리(Sunny Factory)<br><br><br>
                    2) 대표자 : 이지훈(JiHoon Lee)<br><br><br>
                    3) 업&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;태 : <br>출판, 영상, 방송통신 및 정보서비스업<br><br><br>
                    4) 업&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;종 : <br>온라인 모바일 게임소프트웨어 개발 및 공급업,<br>기타 게임소프트웨어 개발 및 공급업 
                    <br>응용소프트웨어 개발 및 공급업,<br>시스템                  
                    <br><br><br>
                    5)<a target="_blank" href="http://factorysunny.com/"> http://factorysunny.com/</a><br><br><br>
                   6)<a href="mailto:seun80@hanmail.net"> seun80@hanmail.net</a><br>
                   </h5>
                </div><br>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                    <img class="img-responsive" src="${root}/save/resources/img/office/office2.png" alt="">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-b -->

    <div class="content-section-a">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">회사위치(Location)</h2><br>
                    <p class="lead"><a target="_blank" href="http://factorysunny.com/">광주CGI센터</a>
                    </p>
                </div>
    
                <br><br>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <!-- <img class="img-responsive" src="resources/photo/photo3.png" alt=""> -->
                    
                    
                    <center>		
					<div id="post_content">
						
						<!-- <iframe id="map" width="100%" height="100%" 
						frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe> -->
						
						<div id="map" style="width: 260px; height: 300px;"></div>
					</div>
					<br>
				
            
                    
                    <center>
                
                <caption><b style="font-size: 14pt;color:gray;">Originated by Daum Maps</b></caption><br>
                
                
                </center>
				</center>

				<script type="text/javascript"
					src="//apis.daum.net/maps/maps3.js?apikey=5cd4ad3ec7ff604b1698e2754ffb0b64&libraries=services"></script>
				<script>
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new daum.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(37.0183313, 127.3830068),  // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new daum.maps.services.Places(); 

// 키워드로 장소를 검색합니다
ps.keywordSearch('광주CGI센터', placesSearchCB); 

// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (status, data, pagination) {
    if (status === daum.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new daum.maps.LatLngBounds();

        for (var i=0; i<data.places.length; i++) {
            displayMarker(data.places[i]);    
            bounds.extend(new daum.maps.LatLng(data.places[i].latitude, data.places[i].longitude));
        }       

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    } 
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new daum.maps.Marker({
        map: map,
        position: new daum.maps.LatLng(place.latitude, place.longitude) 
    });

    // 마커에 클릭이벤트를 등록합니다
    daum.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.title + '</div>');
        infowindow.open(map, marker);
    });
}
</script>
                    
                    
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

	<!-- <br><br><br><br> -->
	<a  name="contact"></a>
    <div class="banner">
	</div>

    <!-- Footer -->
    <footer>
    <center>
    
        <div class="container">
            <div class="row">
               
                
                <div class="col-lg-10 col-lg-offset-1 text-center">
                
					<br>
						<h4>
							<strong><b style="color:orange">Sunny Factory</b></strong>
						</h4>
						<center><img class="img-responsive" src="${root}/save/resources/icon/sun.png" width="50" height="50" alt=""></center>
						
						<br><br>
						
						 <div class="col-lg-12">
						 
						
                    <ul class="list-inline">
                    
                        <li>
                        <a class="page-scroll" href="${root}/index.jsp"><b style="color:gray">Home</b></a>
                    </li>
                             
                  
                    
               
                    
                    </ul>
                    
                    
                    
                   <hr class="small"> 
                   
                   
                    
                    <ul class="list-inline">
                    
                     <li>
                        <a class="page-scroll" href="${root}/index2.jsp"><b style="color:gray">CEO</b></a>
                    </li>                    
                    <li>
                        <a class="page-scroll" href="${root}/index3.jsp"><b style="color:gray">회사소개</b></a>
                    </li>
                     
               
                    
                    </ul>
                    
                    
                    
                    
                <hr class="small">
                    
                    
                        
                        <ul class="list-inline">
                        
                        
                       <li>
                        <a class="page-scroll" href="${root}/index4.jsp"><b style="color:gray">제품소개</b></a>
                    </li>
                       
                    <li>
                        <a class="page-scroll" href="${root}/myboard/list.do"><b style="color:gray">행사소식</b></a>
                    </li>
                    
                    </ul>
                    
                    
                    <hr class="small">
                    
                    
                    <ul class="list-inline">
                    
                    
                     <li>
                        <a class="page-scroll" href="${root}/communitylist.do"><b style="color:gray">공지사항</b></a>
                    </li>
                         <li>
                        <a class="page-scroll" href="${root}/loginform.do"><b style="color:gray">SunnyErp</b></a>
                    </li>
                  
                    </ul>
                 
                   
                </div>
						
						
				<br><br>
				
			<center><img src="${root}/save/resources/icon/favicon1.png" class="img-responsive" width="50" height="50" alt=""></center>
						
						<br><br>
			
					
					
						
						
						<center>
    
     <div>
						
						<ul class="list-unstyled">
							 <a
								href="mailto:seun80@hanmail.net">seun80@hanmail.net</a>
						</ul>
					
					
						<ul class="list-inline">
						

							<a
								href="https://www.instagram.com/jihoonlee1980/"><i class="fa fa-instagram">&nbsp;&nbsp;Instagram</i></a>&nbsp;&nbsp;&nbsp;&nbsp;
							<a
								href="https://www.facebook.com/leejihoon1980"><i class="fa fa-facebook">&nbsp;&nbsp;Facebook</i></a>&nbsp;&nbsp;&nbsp;&nbsp;
						 <a
								href="https://twitter.com/sunny9224"><i class="fa fa-twitter">&nbsp;&nbsp;Twitter</i></a>


						</ul>
						
					
						
						
						<hr class="small">
						
						
					
							<p class="copyright text-muted small">
							<a target="_blank" href="http://factorysunny.com/"> Copyright &copy;  SunnyFactory
								</a> <br> <a target="_blank" href="http://sunnyerp.net/">
								[sunnyerp.net] <br> All Rights Reserved. </a></p>
					
					
					<br><br>
					
					<center><img class="img-responsive" src="${root}/save/resources/icon/park.png" width="50" height="50" alt=""></center>
					
					
					</div>
					
					
					</center>
					
					
					
						<br><br>
						
						
						
						<div><a target="_blank" href="http://www.freepik.com" title="Freepik"><b style="color:gray">Icons made by 
				Freepik from</b></a> <a target="_blank" href="http://www.flaticon.com" title="Flaticon">
				<b style="color:gray">www.flaticon.com is licensed by</b> </a>
				<a target="_blank" href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">
				<b style="color:gray">CC 3.0 BY</b></a></div>
				
				
				<br><br>
				
				
				<center>
				<b style="color:gray">
				The MIT License (MIT)
<br>
Copyright (c) 2016 Aigars Silkalns & Colorlib</b>


</center>

<br><br>
				
			
			<center>
			<a id="to-top" href="#top" class="btn btn-dark btn-lg"> <b style="color:orange">Top(↑) <i
				class="fa fa-chevron-up fa-fw fa-1x"></i></b></a>
			</center>
				
				
				

		
        
        </center>
        
        
    </footer>
    
    
    
 




	
     
   <!-- jQuery -->
    <script src="${root}/save/resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${root}/save/resources/js/bootstrap.min.js"></script>
   

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>



	<!-- script references -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script> 
     

    <!-- jQuery -->
    <script src="${root}/save/resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${root}/save/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="${root}/save/resources/js/jqBootstrapValidation.js"></script>
    <script src="${root}/save/resources/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="${root}/save/resources/js/agency.min.js"></script>


    <!-- jQuery -->
    <script src="${root}/save/resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${root}/save/resources/js/bootstrap.min.js"></script>

</body>

</html>
