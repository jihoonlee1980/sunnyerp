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
	
	
	
<%-- 	<center>
	
	<img class="img-responsive" src="${root}/save/images/slider/bg1.jpg" alt="logo">
	
	
	</center> --%>
	
	<br><br><br>
	    
	 <center>
	 
	    
	<%--  <img class="img-responsive" src="${root}/save/ico/favicon10.png" alt="logo">  --%>
	 <img class="img-responsive" src="${root}/save/images/slider/1600bg3.JPG" alt="logo">  
	    
	 	<br><br>	
	    
	
	
	<c:if test="${totalCount>0}">
		<a style="color: gray;">총</a> <b style="color: red;">${totalCount}</b><a style="color: gray;"> 개의 데이타가 있습니다.</a>
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
	  		<td><b style="color: gray;">조회</b></td>
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
	  	   	 	<td>
	  	   	 	<span style=" font-size: 11pt;color: blue;text-overflow:ellipsis;overflow: hidden;
				 white-space: nowrap;display: block;max-width: 80px;">
	  	   	 		<a href="comucontent.do?b_seq=${a.b_seq}&pageNum=${currentPage}">${a.b_title}</a>
	  	   	 		</span>
	  	   	 	</td>
	  	   	 	<td style="text-align: center;"><b style="color: blue;">${a.nick}</b></td>
	  	   	 	
	  	   	 	<td style="text-align: center;color: orange;">
	  	   	 		<fmt:formatDate value="${a.b_date}" pattern="yyyy-MM-dd hh:mm:ss"/>
	  	   	 	</td>
	  	   	 	<td style="text-align: center;"><b style="color: red;">[${a.b_readcount}]</b></td>
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