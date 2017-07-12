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
	
    
    
    <script type="text/javascript">
	function btn_inputid_click(){
		window.open("idCheckForm.do", "w", "left=100px, top=100px, width=400px, height=200px");
	}
	
	function btn_inputnick_click(){
		window.open("nickCheckForm.do", "w", "left=100px, top=100px, width=400px, height=200px");
	}
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
	$(function(){
		$("#useNick").click(function(){
			var m_nick = $(this).attr("m_nick");
			opener.document.all.m_nick.value = m_nick;
			window.close();
		});
	});

</script>

<script type="text/javascript">


 function backdata(useNick)
	{
		//opener : 현재 윈도우를 오픈한 부모 윈도우
		frm.useNick.value=useNick;
		//현재 윈도우 닫기
		/* window.close(); */
	} 

 
 </script>
 
 
 <script type="text/javascript">
	$(function(){
		//1. hp2에서 4글자 입력시 자동으로 hp3로 포커스 보내기
		$("#m_hp2").keyup(function(){
			var len=$(this).val().length;
			if(len==4)
				$("#m_hp3").focus();
		});
		
		//2. email3 변경시 이메일주소를 email2로 보냄
		//직접입력인 경우에는 email2 의 기존값을 지우고 포커스 보내기
		$("#m_email3").change(function(){
			if($(this).val()=='-'){
				$("#m_email2").val("");
				$("#m_email2").focus();
			}else{
				$("#m_email2").val($(this).val());
			}
		});
		
		
	});
	
	function check(f)
	{
		
		if(f.hp2.value==''){
			alert("핸드폰 가운데 네자릿수를 입력해 주세요");
			return false;
		}
		if(f.hp3.value==''){
			alert("핸드폰 마지막 네자릿수를 입력해 주세요");
			return false;
		}
		if(f.email.value==''){
			alert("이메일 아이디를 입력해 주세요");
			return false;
		}
		if(f.email2.value==''){
			alert("이메일 종류를 입력 또는 선택해 주세요");
			return false;
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
	
	<img class="img-responsive" src="${root}/save/images/slider/1600bg3.JPG" alt="logo">
	
	
	</center>
	
	
	<br>

<%-- <center>

<form action="nickCheck.do" method="post" onsubmit="return check(this)">
		<table class="table">
			<tr>
				<th>
					<b style="color:gray">회원가입 시, 필요한 닉네임을 입력해주세요!</b><br><br>
					<b style="color:gray">ID : </b><input type="text" name="m_nick" required="required"  autofocus="autofocus" class="form-control">
					<br>
					<input type="submit" value="닉네임 중복 체크" class="btn" style="color:black">
				</th>
			</tr>
		</table>
	</form>	

</center>


<center>

<form action="joinForm.do" method="post">
		<table class="table">
			<tr>
				<th>
					<b style="color:gray">'${m_nick}'는, 사용 가능한 닉네임 입니다.</b><br><br>
					<input type="button" value="사용하기" id="useNick" m_nick="${m_nick}" class="btn" style="color:black">&nbsp;
					<input type="button" value="다시입력" onclick="location.href='nickCheckForm.do'" class="btn" style="color:black">
				</th>
			</tr>
		</table>
	</form>

</center> --%>



	<form action="join.do" method="post">
		<table id="joinform" class="table table-bordered">
			<caption style="text-align: center;"><a style="color: gray;">[JOIN]</a></caption>
			<tr>
				<td><b style="color: gray;">NAME</b></td>
	 		 	<td>
	 		 		<input type="text" name="m_nick" id="m_nick" class="form-control" required="required" readonly="readonly">
	 		 		<!-- <input type="text" name="m_nick" class="form-control" required="required" readonly="readonly"> -->
	 		 		<input type="button" value="input name" style="color: black" class="btn" onclick="btn_inputnick_click();">
	 		 	</td>
	 		 	
	 		 	
	 		 	
			</tr>
			<tr>
				<td><b style="color: gray;">ID</b></td>
	 		 	<td>
	 		 		<input type="text" name="m_id" class="form-control" required="required" readonly="readonly">
	 		 		<input type="button" value="input id" style="color: black" class="btn" onclick="btn_inputid_click();">
	 		 	</td>
			</tr>
			<tr>
				<td><b style="color: gray;">PASSWORD</b></td>
	 		 	<td>
	 		 		<input type="password" name="m_pass" class="form-control" required="required">
	 		 	</td>
			</tr>
			<tr>
		<!-- <td><b style="color: gray;">HP</b></td>
	 		 	<td>
		
		<div class="form-group">
		
			<select name="m_hp" class="form-control">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select>
		
			
			<b>-</b>
			
			
			<input type="text" name="m_hp2" id="m_hp2" maxlength="4"
			required="required" size="4" placeholder="****" class="form-control">
			
		
			<b>-</b>
			
		
			<input type="text" name="m_hp3" id="m_hp3" maxlength="4"
			required="required" size="4" placeholder="****" class="form-control">
			</div>
		</td>
	</tr>
		
	<tr>
		<td><b style="color: gray;">EMAIL</b></td>
	 		 	<td>
		
		<div class="form-group">
		
			<input type="text" name="m_email" id="m_email" size="30" required="required" placeholder="(메일)아이디" class="form-control">
		<br>
			<b>@</b>
		<br>	
			
			<input type="text" name="m_email2" id="m_email2" size="30" required="required" placeholder="직접입력 또는 메일선택" class="form-control">
			</div>
			<div class="form-group">
			
			<select name="m_email3" id="m_email3" class="form-control">
				<option value="-">직접입력</option>
				<option value="daum.net">다음</option>
				<option value="naver.com">네이버</option>
				<option value="nate.com">네이트</option>
				<option value="gmail.com">GMail</option>				
			</select>
		</div>
		</td>
	</tr> -->
			
			
			<tr>
				<td><b style="color: gray;">HP</b></td>
	 		 	<td>
	 		 		<input type="text" name="m_hp" class="form-control" required="required" placeholder="(-)없이, 숫자만 적어주세요.">
	 		 	</td>
			</tr>
			
			<tr>
				<td><b style="color: gray;">EMAIL</b></td>
	 		 	<td>
	 		 		<input type="text" name="m_email" class="form-control" required="required" placeholder="(예시) sunnyerp@sunnyerp.net">
	 		 	</td>
			</tr>
			
			<tr>
				<td><b style="color: gray;">ADDRESS</b></td>
	 		 	<td>
	 		 		<input type="text" name="m_address" class="form-control" required="required" placeholder="신주소(도로명 포함) 적어주세요.">
	 		 	</td>
			</tr>
		
			

			
					
		</table>
		
		<center>
		
		<input type="submit" class="btn" style="color: black" value="JOIN" style="width: 80px;">
					<input type="button" class="btn" style="color: black" value="BACK" style="width: 80px;" onclick="location.href='loginform.do'">
			
			
			</center>
		
		
	</form>
	
	
	
	<br><br>
	
 <!-- Footer -->
    <!-- <footer> -->
    <center>
    
  <!--  <div class="container">
            <div class="row"> -->
               
                
                <!-- <div class="col-lg-10 col-lg-offset-1 text-center">   -->
                
					<br>
						<h4>
							<strong><b style="color:orange">SunnyErp</b></strong>
						</h4>
						<center><img class="img-responsive" src="${root}/save/resources/icon/sun.png" width="50" height="50" alt=""></center>
						
						<br>
					
							<p class="copyright text-muted small">
							<a target="_blank" href="http://factorysunny.com/"> Copyright &copy;  SunnyFactory
								</a> <br> <a target="_blank" href="http://sunnyerp.net/">
								[sunnyerp.net] <br> All Rights Reserved. </a></p>
					
					<br><br>
					
					<center><img class="img-responsive" src="${root}/save/resources/icon/park.png" width="50" height="50" alt=""></center>
					
					
					</div>
					
					
					</center>
					
					
					
						<br><br>
						
						<center>
						
						<div><a target="_blank" href="http://www.freepik.com" title="Freepik"><b style="color:gray">Icons made by 
				Freepik from</b></a> <a target="_blank" href="http://www.flaticon.com" title="Flaticon">
				<b style="color:gray">www.flaticon.com is licensed by</b> </a>
				<a target="_blank" href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">
				<b style="color:gray">CC 3.0 BY</b></a></div>
				
				
				</center>
				
				
				<br><br>
				
				
				
				<center>
				<b style="color:gray">
				The MIT License (MIT)
<br>
Copyright (c) 2016 Aigars Silkalns & Colorlib</b>


</center>

<br><br>
					
					
					
					<center>

<a id="to-top" href="#top" class="btn btn-dark btn-lg">
				<i class="fa fa-chevron-up fa-fw fa-1x"></i></a>


<br><br>

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