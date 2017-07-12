<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

        url: 'http://factorysunny.com/' // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.

      }

    });

    }

 

    // 카카오스토리 공유하기

      function shareStory() {

        Kakao.Story.share({

          url: 'https://factorysunny.com/',

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
	
		<!-- <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
	
		
		<center>
	
	<img class="img-responsive" src="${root}/save/images/slider/bg2.jpg" alt="logo">
	
	
	</center>
	
	<br>
	
	
<div align="center">
	<h3><b style="color: gray;">[My Page]</b></h3>
	<br>
	
	<form action="editProfileImage.do" method="post" enctype="multipart/form-data">
<%-- 			<b>${m_profile}</b> --%>
	    <c:if test="${m_profile!='none'}">
    		<img src="profileImage/${m_profile}" style="width: 250px; height: 250px;">
			<br>
    	</c:if>
    	<c:if test="${m_profile=='none'}">
    		<img src="${root}/save/ico/favicon.png" style="width: 250px; height: 250px;">
    		<br>
    	</c:if>
	    
	    
	    <br><br>
	    
	    
	    <div class="input-group" style="width:250px;" id="upload">
	        <input type="file" name="upfile" class="form-control">
	        <span class="input-group-btn">
	          <button class="btn btn-default" type="submit">upload</button>
	        </span>
	    </div><!-- /input-group -->
	</form>
	
	<br>
	
	
	<button type="button" class="btn btn-default" id="preUpload"  onclick="editBtnClick();">Edit</button>




	<%-- <h2>Accordion</h2>
	<div class="accordion" style="width: 50%;">
	    <div class="panel-group" id="accordion1">
	      <div class="panel panel-default">
	        <div class="panel-heading active">
	          <h3 class="panel-title">
	            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">
	              	그 남자 작곡
	              <i class="fa fa-angle-right pull-right"></i>
	            </a>
	          </h3>
	        </div>
	
	        <div id="collapseOne1" class="panel-collapse collapse in">
	          <div class="panel-body">
	              <div class="media accordion-inner">
<!-- 	                    <div class="pull-left"> -->
<!-- 	                        <img class="img-responsive" src="images/accordion1.png"> -->
<!-- 	                    </div> -->
	                    <div class="media-body">
	                    	<c:if test="${composeCount==0}">
                           		아직 작곡한 곡이 없습니다
                           	</c:if>
	                        <c:if test="${composeCount!=0}">
		                        <h4>내가 작곡한 리스트</h4>
		                         <p>내가 작곡한 곡을 확인해보세요!</p>
		                        <div class="row">
		                            <div class="col-sm-12">
		                            	<c:forEach var="o_o" items="${composeList}">
			                                <div class="single_comments">
			                                    <img src="image/avatar3.png" style="width:50px;" alt=""  />
			                                    <p>${o_o.subject}</p>
			                                    <div class="entry-meta small muted">
			                                        <span>By <a href="#">${sessionScope.m_nick}</a></span> <span>When <fmt:formatDate value="${o_o.writeday}" pattern="yyyy-MM-dd HH:mm"/></span>
			                                    </div>
			                                </div>
		                               </c:forEach> 
		                            </div>
		                        </div>
	                        </c:if>             	
	                    </div>
	              </div>
	          </div>
	        </div>
	      </div>
	
	      <div class="panel panel-default">
	        <div class="panel-heading">
	          <h3 class="panel-title">
	            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">
	              	그 여자 작사
	              <i class="fa fa-angle-right pull-right"></i>
	            </a>
	          </h3>
	        </div>
	        <div id="collapseTwo1" class="panel-collapse collapse">
	          <div class="panel-body">
          			<div class="media-body">
                    	<c:if test="${lyricCount==0}">
                          		아직 작사한 곡이 없습니다
                          	</c:if>
                        <c:if test="${lyricCount!=0}">
	                        <h4>내가 작사한 리스트</h4>
	                         <p>내가 작사한 곡을 확인해보세요!</p>
	                        <div class="row">
	                            <div class="col-sm-12">
	                            	<c:forEach var="o_x" items="${lyricList}">
		                                <div class="single_comments">
		                                    <p>${o_x.l_title}</p>
		                                    ${o_x.l_content}
		                                    <div class="entry-meta small muted">
		                                        <span>By <a href="#">${sessionScope.m_nick}</a></span> <span>When <fmt:formatDate value="${o_x.l_date}" pattern="yyyy-MM-dd HH:mm"/></span>
		                                    </div>
		                                </div>
	                               </c:forEach> 
	                            </div>
	                        </div>
                        </c:if>             	
                    </div>
	          </div>
	        </div>
	      </div>
	
	      <div class="panel panel-default">
	        <div class="panel-heading">
	          <h3 class="panel-title">
	            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree1">
	              	내가 좋아하는 노래
	              <i class="fa fa-angle-right pull-right"></i>
	            </a>
	          </h3>
	        </div>
	        <div id="collapseThree1" class="panel-collapse collapse">
	          <div class="panel-body">
	            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
	          </div>
	        </div>
	      </div>
	    </div><!--/#accordion1-->
	</div> --%>
</div>

<br><br>

</body>

</html>