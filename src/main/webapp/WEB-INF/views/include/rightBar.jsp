<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/rightBar/rightBar.css">

<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>


<%
	String ssid = (String)session.getAttribute("sessionId");
	String snick = (String)session.getAttribute("nick");
%>


<div class="recommend">
<div class="card" style="width: 300px; height:830px; border:1px solid #dddddd; border-radius:5px;">

<!-- 본인 닉네임 -->
<div class="card-body"> 
   	<img class ="rounded-circle me-2" src="${pageContext.request.contextPath }/resources/uploadfiles/${minfo.profileName}"  width="30" height="30" alt="..." >
   		<span style="font-size:16px; font-weight:bold;"><%=snick %></span><br>
   		<span style="font-size:14px; font-weight:bold; color:#969696; margin-left:15px;">point :<fmt:formatNumber value="${minfo.point }" pattern="#,###,###,###"/>p</span>
		<hr>
<!-- 본인 닉네임끝 -->		
		
<!--  구매관련 정보조회 시작 -->
<form action="search">
		<div class="input-group mb-3" >
		  <label for="type" class="input-group-text" style="height:25px;">물품종류 </label> 
			<select id="type" name="type" size="1" class="btn btn-outline-secondary" style="height:25px;padding:0px;font-size: 14px;">
				<option value="">선택하세요.</option>
				<option value="생활가전">생활가전</option>
				<option value="스포츠/레저">스포츠/레저</option>
				<option value="의류">의류</option>
				<option value="디지털기기">디지털기기</option>
				<option value="취미/게임/음반">취미/게임/음반</option>
				<option value="도서">도서</option>
				<option value="티켓/교환권">티켓/교환권</option>
				<option value="기타 중고물품">기타 중고물품<option>
			</select>
		</div>
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon1" style="font-size: 15px; height: 20px;">지역</span>
		  <input type="text" name="tradeplace" class="form-control" placeholder="ex)구월동" aria-label="Username" aria-describedby="basic-addon1" style="height: 20px; font-size: 15px;">
		</div>
		
		
		<div><button type="submit" class="btn btn-outline-primary"
        style="--bs-btn-padding-y: .10rem; --bs-btn-padding-x: .55rem; --bs-btn-font-size: .75rem; width: 100%; font-size: 15px; height: 25px;">검색</button></div>
</form>        
<!--  구매관련 정보조회 끝 -->
	
		
		
<!--  찜한목록 시작 -->
<hr>
<!--  찜한 목록 아이콘 태크 시작 -->
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-right-heart" viewBox="0 0 16 16">
  		<path d="M2 1a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h9.586a2 2 0 0 1 1.414.586l2 2V2a1 1 0 0 0-1-1H2Zm12-1a2 2 0 0 1 2 2v12.793a.5.5 0 0 1-.854.353l-2.853-2.853a1 1 0 0 0-.707-.293H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12Z"/>
  		<path d="M8 3.993c1.664-1.711 5.825 1.283 0 5.132-5.825-3.85-1.664-6.843 0-5.132Z"/>
	</svg>
	


<!-- 찜한 목록 아이콘 태그 끝 -->

	<span class="list_index02"><i class="bi bi-chat-right-heart"></i>찜한목록</span>
	<hr class="garo"> 
		<div class="card" style="width: 100%; height:125px; overflow: auto;">
			
			<div class="list_index01">
			  <c:forEach items="${fList }" var="fList">
				  <div class="list_index">
				  
			   	 	 <a href="content_view?postidx=${fList.postDto.postidx}" style="text-decoration: none;"><i class="bi bi-caret-right"></i>
			   	  		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
  							<path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"/>
						</svg>
						${fList.postDto.title}</a>
			      </div>
		      </c:forEach>
		  	
		  	</div>
    	</div>
<!--  내가찜한목록 끝 -->
<br>

<!-- 구매 목록 아이콘 태그 시작 -->
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
  		<path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
	</svg>
<!-- 구매 목록 아이콘 태그 끝 -->

<!--  구매목록 시작 -->
	<span class="list_index02"><i class="bi bi-chat-right-heart"></i>예약확인중</span>
	<hr class="garo"> 
		<div class="card" style="width: 100%; height:125px; overflow: auto;">
			<div class="list_index01">
			  <c:forEach items="${bList }" var="bList">
				  <div class="list_index">
			   	 	 <a href="content_view?postidx=${bList.postidx}" style="text-decoration: none; ">
			   	 		 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
  							<path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"/>
				  		 </svg>
			   	 		 ${bList.title}</a>
			      </div>
		      </c:forEach>
		  	</div>
    	</div>
		      
<!--  구매목록 끝 -->		
<br>

<!--  판매 목록 아이콘 태그 시작 -->
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
  		<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
	</svg>
<!--  판매 목록 아이콘 태그 끝 -->

<!--  판매목록 시작 -->
	<span class="list_index02"><i class="bi bi-cart"></i>판매중</span>
	<hr class="garo"> 
		<div class="card" style="width: 100%; height:125px; overflow: auto;">
			<div class="list_index01">
			  <c:forEach items="${pList }" var="pList">
				  <div class="list_index">
			   	  	<a href="content_view?postidx=${pList.postidx}" style="text-decoration: none; ">
			   		  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-right" viewBox="0 0 16 16">
  						<path d="M6 12.796V3.204L11.481 8 6 12.796zm.659.753 5.48-4.796a1 1 0 0 0 0-1.506L6.66 2.451C6.011 1.885 5 2.345 5 3.204v9.592a1 1 0 0 0 1.659.753z"/>
					  </svg>
			   	  	  ${pList.title}</a>
			      </div>
		      </c:forEach>
		      
		  	</div>
		</div>
<!--  판매목록 끝 -->				
		
		</div>





<!-- 회원리스트시작 -->	
	<!--
	<hr><span style="font-size:16px; font-weight:bold; text-align: center;">회원님을 위한 추천</span><br><br>
		
  	<c:forEach items="${memberList}" var="mList">
  		<img src="${pageContext.request.contextPath }/resources/img/${mList.profileName }" width="30" height="30" alt="...">
   		<span style="font-size:16px; font-weight:bold;">${mList.nick}</span>
   		<a class="follow" href="follow?followeeid=${mList.id}&followerid=<%=ssid %>">팔로우 </a>
   		<br>
   		

   	</c:forEach>
-->
  	<br>
  
  
  	

</div>
</div>
</body>

</html>