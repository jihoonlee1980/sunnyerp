<!DOCTYPE html>

<%@page import="myboard.model.MyboardDto"%>
<%@page import="spring.model.BoardDao"%>
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
	
	<img class="img-responsive" src="${root}/save/images/slider/1600bg5.JPG" alt="logo">
	
	
	</center>
	
	
	<br>
	
	
	<center>
	
		<table style="margin: 0 auto;" class="table table-bordered">
		
		<center>
		
		
		<b style="color: orange;">${dto.category}</b>
		
		<br><br>
		
		
			  <center>
	    
			<pre style="white-space:pre-wrap;
 word-wrap:break-word;">
				
			
				
					 <b style="color: brown;">${dto.subject}</b>
				
				</pre>
			
			</center>
			
			
			
			
			
			<center>
			
			  <center>
	    
	
	
					<b style="color: blue;">${dto.writer}</b><br>
					
					<b style="color: lime;">${m_nick}</b>
					
					
					
			<hr>
					
					<b style="color: gray;">
					 <fmt:formatDate value="${dto.writeday}" pattern="yyyy-MM-dd HH:mm:ss"/></b>
					
				<hr>
				
				
					<b style="color: black;">조회&nbsp;<b style="color: red;">[${dto.readcount}]</b></b>
					
				
					
				</center>
				
				<br>
				
				  
	    
			<pre style="padding-left: 10px;font-size: 10pt;white-space:pre-wrap;
 word-wrap:break-word;">	
				${dto.content}</pre>
				
				
					
			
				
				<br>
				
				
				
				<center>	
				
				
				
					
					  <c:forTokens var="im" items="${dto.filename}" delims=",">
					  
					  
				
					  
					  <!-- 이미지인지 일반 업로드 파일인지 구하기 -->
					  <!-- 파일명중에서 . 이후의 문자열을 얻음 -->			
					  <c:set var="ext" value="${fn:substringAfter(im,'.')}"/>
						
						
						
						
						<c:if test="${ext=='jpg' || ext=='JPG'|| ext=='gif'|| ext=='GIF'
							|| ext=='png'|| ext=='PNG' || ext=='MP4'}">
							<img src="${root}/save/${im}" width=300" height="300">
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
			
			
			
			 <c:forEach var="a" items="${list}">
	  	   
	  	   
	  	  
	  	   
	  	   	 <tr>
	  	   	 	
	  	   	 	
	  	   	 
	  	   	 	
	  	   	 	<td style="text-align: center;"><b style="color: blue;">${a.writer}</b></td>
	  	   	 	
	  	   	 	<td style="text-align: center;color: orange;">
	  	   	 		<fmt:formatDate value="${a.writeday}" pattern="yyyy-MM-dd hh:mm:ss"/>
	  	   	 	</td>
	  	   	 	<pre style="padding-left: 10px;font-size: 10pt;white-space:pre-wrap;
 word-wrap:break-word;"><b style="color: black;">[${a.content}]</b></pre></td>
	  	   	 	</td>
	  	   	 </tr>
	  	   </c:forEach>
			
			

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
		
			<tr>
				<td align="center">
					<input type="button" value="글쓰기"  class="btn btn-primary"
					 onclick="location.href='writeform.do'">
					 <input type="button" value="목록"  class="btn btn-warning btn-sm"
					 onclick="location.href='list.do?pageNum=${pageNum}'"> 
					 
					 
					<c:if test="${sessionScope.m_id_==dto.writer}">
					 
					<%--  <c:if test="${sessionScope.m_id_.equals(sessionScope.m_id_)}"> --%>
					 
					 <input type="button" value="수정"  class="btn btn-info btn-sm"
					 onclick="location.href='myboardupdatepassform.do?num=${dto.num}&pageNum=${pageNum}'">
					 <input type="button" value="삭제"  class="btn btn-danger btn-sm"
					 onclick="location.href='myboarddeletepassform.do?num=${dto.num}&pageNum=${pageNum}'">
					  </c:if>
				</td>
			</tr>
			
			</center>
		
		
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















