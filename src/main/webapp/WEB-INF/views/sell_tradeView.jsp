<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/index/index.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/rightBar/rightBar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/tradeView/tradeView.css">

<title>#### 예약확인 ####</title>
</head>
<body>
<%@ include file="include/leftBar.jsp" %>
<%@ include file="include/rightBar.jsp" %>
<form action="sell_completed">

<div class="content" style="width: 630px;">
<div class="card" style="width: 630px;">
<div class="card-body" style="width: 630px;">
<br>
<span class="list_index02">구매자정보</span>
<hr class="garo1">
<span class="col-auto">
   
    <span class="input-group">
      <div class="input-group-text">아이디</div>
       	<label class="form-control" for="autoSizingInputGroup">${sinfo.id}</label>
      <div class="input-group-text">닉네임</div>
       	<label class="form-control" for="autoSizingInputGroup">${sinfo.nick}</label>
    </span>
    <span class="input-group">
      <div class="input-group-text">전화번호</div>
       <label class="form-control" for="autoSizingInputGroup">${sinfo.phone}</label>
    </span>
      <div class="input-group">
      <div class="input-group-text">이메일</div>
       <label class="form-control" for="autoSizingInputGroup">${sinfo.mail}</label>
      </div>
      <div class="input-group">
      <div class="input-group-text">거래희망날짜</div>
       <label class="form-control" for="autoSizingInputGroup">${pinfo.postDto.hopedate}</label>
      </div>
      <br><br>
      
     <!-- 구매자 거래확정 확인 -->
     <!--
     <div class="input-group-text">판매자 확인</div>
       <label class="form-control" for="autoSizingInputGroup">	
     <span class="trade_font01">
     <img class ="rounded-circle me-2" src="${pageContext.request.contextPath }/resources/img/ok.png" alt="..." width="30" height="30" > 구매자 확인 완료
     </span>
     <span class="trade_font02">
     <img class ="rounded-circle me-2" src="${pageContext.request.contextPath }/resources/img/waiting.png" alt="..." width="30" height="30" > 구매자 확인 미완료
     </span>
     </label>	
     <br>
     -->
     <!-- 구매자 거래확정 확인 끝 -->
     
     
   <span class="list_index02">거래정보</span>
<hr class="garo1">
<span class="col-auto">
   
    <span class="input-group">
      <div class="input-group-text">제목</div>
       <label class="form-control" for="autoSizingInputGroup">${pinfo.postDto.title}</label>
    <div class="input-group-text">종류</div>
       <label class="form-control" for="autoSizingInputGroup">${pinfo.postDto.type}</label>
    </span>
     <span class="input-group">
      <div class="input-group-text">가격</div>
       <label class="form-control" for="autoSizingInputGroup">${pinfo.postDto.price}</label>
    </span>
     <div class="input-group">
      <div class="input-group-text">거래장소</div>
       <label class="form-control" for="autoSizingInputGroup">${pinfo.postDto.tradeplace}</label>
    </div>
   <br><br>
   
 
  

<span class="list_index02">판매자정보</span>
<hr class="garo1">
<span class="col-auto">
   
    <span class="input-group">
      <div class="input-group-text">아이디</div>
       <label class="form-control" for="autoSizingInputGroup">${minfo.id}</label>
    <div class="input-group-text">닉네임</div>
       <label class="form-control" for="autoSizingInputGroup">${minfo.nick}</label>
    </span>
     <span class="input-group">
      <div class="input-group-text">전화번호</div>
       <label class="form-control" for="autoSizingInputGroup">${minfo.phone}</label>
    </span>
     <div class="input-group">
      <div class="input-group-text">이메일</div>
       <label class="form-control" for="autoSizingInputGroup">${minfo.mail}</label>
    </div>
    		<input type="hidden" name="postidx" value="${pinfo.postDto.postidx }">
       		<input type="hidden" name="nick" value="${sinfo.nick }">
       		<input type="hidden" name="selecteddate" value="${pinfo.postDto.hopedate}">
       		<input type="hidden" name="buyuser" value="${sinfo.id}">
    <br><br>
<br><br>
    <span><input type="submit" class="btn btn-outline-primary" value="예약 확정" style=" width: 30%; font-size: 15px; height: 40px;float: left;margin-left: 80px;"></span>
    <span><button type="button" class="btn btn-outline-primary" style=" width: 30%; font-size: 15px; height: 40px;float: right;margin-right: 80px;" onclick="script:window.location='index'">취소</button></span>


</div>
</div>
</div>
</form>
<br>
<br>
<br>

<%@ include file="include/footer.jsp" %>
</body>
</html>