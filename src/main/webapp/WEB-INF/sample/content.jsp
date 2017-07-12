<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="root" value="<%=request.getContextPath() %>"/>

<html>
	<head>
		<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SongWriting</title>
    <link href="${root}/save/" rel="stylesheet">
    <link href="${root}/save/css/font-awesome.min.css" rel="stylesheet">
	<link href="${root}/save/css/main.css" rel="stylesheet">
	<link href="${root}/save/css/animate.css" rel="stylesheet">	
	<link href="${root}/save/css/responsive.css" rel="stylesheet">

    <!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${root}/save/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${root}/save/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${root}/save/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${root}/save/ico/apple-touch-icon-57-precomposed.png">
    
    
    	<script type="text/javascript">
		
		$(function(){
			//$("td>myanswer").hide();
			$("replyform").hide();
			$("td>answer>a").click(function(){
				//댓글을 클릭시 무조건 답글은 숨기기
				$("replyform").hide();
				$(this).parent().next().toggle();
			});
			$("reply>a").click(function(){	
				$("replyform").hide();
				var pk=$(this).attr("pk");
				//alert(pk);
				$(this).parent().next().find(".pk").val(pk);
				$(this).parent().next().toggle();
			});
			
		});
		
		
		function answerdel(num,pageNum,aPage,pk)
		{
			window.open("answerdelform.do?num="+num+"&pageNum="+pageNum+"&aPage="+aPage+"&pk="+pk,
					"w","left=900px,top=500px,width=350px,height=180px");
		}
		
		function answerupdate(num,pageNum,aPage,pk)
		{
			window.open("answerupdateform.do?num="+num+"&pageNum="+pageNum+"&aPage="+aPage+"&pk="+pk,
					"w","left=900px,top=500px,width=500px,height=120px");
		}
		</script>
    
    
    
	</head> 
	<body>
	
	
	
	
	
	<!-- <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
	
	<center>
	
	<img class="img-responsive" src="${root}/save/images/slider/bg2.jpg" alt="logo">
	
	
	</center>
	
	<br>
	

		<table class="table table-bordered" style="width: 700px;">
			<tr>
				<td style="width: 550px;">
					<b>제목 : ${dto.subject}</b>
				</td>
				<td style="text-align: right;">
					<fmt:formatDate value="${dto.writeday}" pattern="yyyy-MM-dd HH:mm"/>
				</td>
			</tr>
			<tr height="480">
				<td colspan="2">
					<b>작성자 : ${dto.writer}</b><br><br>
					<pre>${dto.content}</pre>
				</td>
			</tr>
			<tr>
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
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="button" value="글쓰기"  class="btn btn-info btn-sm"
					 onclick="location.href='inform.do'">
					 <input type="button" value="수정"  class="btn btn-success btn-sm"
					 onclick="location.href='updatepassform.do?num=${dto.num}&pageNum=${pageNum}'">
					 <input type="button" value="삭제"  class="btn btn-warning btn-sm"
					 onclick="location.href='deletepassform.do?num=${dto.num}&pageNum=${pageNum}'">
					 <input type="button" value="목록"  class="btn btn-danger btn-sm"
					 onclick="location.href='list.do?pageNum=${pageNum}'">
				</td>
			</tr>
		
		</table>
	</body>
</html>















