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
		
		   
		   
		   
		 //category1 변경시 이메일주소를 location로 보냄
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
		   
		   
		   
		</script>
		
		
		<script type="text/javascript">
		
		
		function check(f)
		{
			if(f.writer.value==''){
				alert("작성자을 입력해 주세요");
				return false;
			}
			if(f.subject.value==''){
				alert("제목을 입력해 주세요");
				return false;
			}
			 
			if(f.content.value==''){
				alert("내용을 입력해 주세요");
				return false;
			} 
			
			if(f.f_id.value==''){
				alert("파일을 선택해 주세요");
				return false;
			}
			 
			/* if(f.menu4.value==''){
				alert("태그를 선택해 주세요");
				return false;
			}  */
			
			if(f.content.value==''){
				alert("내용을 입력해 주세요");
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
	
	<img class="img-responsive" src="${root}/save/images/slider/1600bg7.JPG" alt="logo">
	
	
	</center>

<br>




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


	
		<form action="myboardupdatepass.do" enctype="multipart/form-data" method="post">
		
		
		
		
		
 		<table id="myboardupdatepass" class="table table-bordered">
 		
 		 <tr>
 		 	<td align="center"><b style="color: gray;">작성자(Writer)</b></td>
 		 	<td align="center">
 		 		<input type="text" name="writer" id="writer" required="required" class="form-control" value="${sessionScope.m_id_}[${sessionScope.m_nick}]" readonly="readonly">
 		 	</td>
 		 </tr>
 		 <tr>
 		 	<td align="center"><b style="color: gray;">제목(Title)</b></td>
 		 	<td align="center">
 		 		<input type="text" name="subject" id="subject" required="required" class="form-control" value="${mydto.subject}">
 		 	</td>
 		 </tr>
 		 
 		 
 		<tr>
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
		</tr>
		
 		 <tr>
 		 	<td align="center"><b style="color: gray;">내용(Content)</b></td>
 		 	<td align="center">
 		 		<b style="color: gray;"><textarea rows="5" cols="20" name="content" id="content" required="required">${mydto.content}</textarea></b>
 		 	</td>
 		 </tr>
         <tr>
          <td align="center"><b style="color: gray;">파일(image)</b></td>
          
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