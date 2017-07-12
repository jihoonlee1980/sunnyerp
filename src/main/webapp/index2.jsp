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
        </div>
        <!-- /.container-fluid -->
    </nav>
            
            
        </div>
        <!-- /.container -->
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
                            <!-- <li data-target="#carousel-example-generic" data-slide-to="7"></li> -->
                          
                           
                          
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                            <a target="_blank" href="http://writingsong.net/">
                                <img class="img-responsive img-full" src="${root}/save/resources/img/slide/sunny2.png" alt=""></a>
                            </div>
                           <div class="item">
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
			%> --%>
		
	
                    
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
                    <h2 class="section-heading">CEO Sunny</h2><br>
                    <p class="lead"><a target="_blank" href="http://factorysunny.com/">CEO Sunny 는!!</a>
                    <br><br>
                    어렸을 적, 개발자가 꿈이었습니다.<br>
                    그리고, 지금!<br>
                    그 꿈에! 다가서고 있습니다..<br><br>
                    </p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="${root}/save/resources/img/slide/900developer1.png" alt="">
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
                    <h2 class="section-heading">다양한 경험..<br>그리고,, 아이디어!</h2><br>
                    <p class="lead">다양한 경험! <br>기존 웹, 어플과는 다른<br><br>
                    <a target="_blank" href="http://factorysunny.com/">특별함!<br></a>
                    <br>'써니 팩토리' 만의, <br> '아이덴티티' 로 다가갑니다.</p>
                </div><br>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                    <img class="img-responsive" src="${root}/save/resources/img/slide/900developer4.png" alt="">
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
                    <h2 class="section-heading">탐구와 열정!</h2><br>
                    <p class="lead"><a target="_blank" href="http://factorysunny.com/">
                    CEO Sunny 는! </a><br>
                    
                    <br>오늘도 열심히 탐구하며<br>연구하고 있습니다..</a>
                </div>
                <br><br>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="${root}/save/resources/img/slide/900developer2.png" alt="">
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
