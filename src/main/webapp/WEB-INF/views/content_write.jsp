<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content_write/content_write.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/content_write/write.js"></script>

<title>#### 물품등록 ####</title>
</head>
<body>
<%@ include file="include/leftBar.jsp" %>


<form action="writeOk" method="post" enctype="multipart/form-data" name="write_frm">
<div class="content_write_form01">

<div class="card" style="width: 400px; height:750px; border:1px solid #dddddd; border-radius:5px; background-color:#FBFBFB ">
  <div class="card-body" > 
 	<!-- 컨텐츠 사진입력 -->

  <div id="image_preview">
    <input type="file" id="btnAtt" multiple="multiple" name="files" accept=".gif, .jpg, .png"/>
    <div id="att_zone"
      data-placeholder="파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요"></div>
  </div>
  <script>
( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
  imageView = function imageView(att_zone, btn){

    var attZone = document.getElementById(att_zone);
    var btnAtt = document.getElementById(btn)
    var sel_files = [];
    
    // 이미지와 체크 박스를 감싸고 있는 div 속성a
    var div_style = 'display:inline-block;position:relative;'
                  + 'width:170px;height:170px;margin:5px;border:1px solid #C0C0C0;z-index:1';
    // 미리보기 이미지 속성
    var img_style = 'width:100%;height:100%;z-index:none';
    // 이미지안에 표시되는 체크박스의 속성
    var chk_style = 'width:30px;height:30px;position:absolute;font-size:10px;'
                  + 'right:5px;bottom:5px;z-index:999;background-color:rgba(255,255,255,0.1);color:#C0C0C0   ';
  
    btnAtt.onchange = function(e){
      var files = e.target.files;
      var fileArr = Array.prototype.slice.call(files)
      for(f of fileArr){
        imageLoader(f);
      }
    }  
    
 
    /*첨부된 이미리즐을 배열에 넣고 미리보기 */
    imageLoader = function(file){
      sel_files.push(file);
      var reader = new FileReader();
      reader.onload = function(ee){
        let img = document.createElement('img')
        img.setAttribute('style', img_style)
        img.src = ee.target.result;
        attZone.appendChild(makeDiv(img, file));
      }
      
      reader.readAsDataURL(file);
    }
    
    /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
    makeDiv = function(img, file){
      var div = document.createElement('div')
      div.setAttribute('style', div_style)
      
      var btn = document.createElement('input')
      btn.setAttribute('type', 'button')
      btn.setAttribute('value', 'x')
      btn.setAttribute('delFile', file.name);
      btn.setAttribute('style', chk_style);
      btn.onclick = function(ev){
        var ele = ev.srcElement;
        var delFile = ele.getAttribute('delFile');
        for(var i=0 ;i<sel_files.length; i++){
          if(delFile== sel_files[i].name){
            sel_files.splice(i, 1);      
          }
        }
        
        dt = new DataTransfer();
        for(f in sel_files) {
          var file = sel_files[f];
          dt.items.add(file);
        }
        btnAtt.files = dt.files;
        var p = ele.parentNode;
        attZone.removeChild(p)
      }
      div.appendChild(img)
      div.appendChild(btn)
      return div
    }
  }
)('att_zone', 'btnAtt')

</script>


	</div>
  </div>
</div>	

<!-- 컨텐츠 내용입력 -->

<div class="content_write_form02">
<span style="font-size: 12px; color:#bbbbbb">※게시글 작성시 200p 지급!(예약확정 전 글을 삭제하면 회수됩니다.)</span>
<div class="card" style="width: 350px; height:750px; border:1px solid #dddddd; border-radius:5px;">
  <div class="card-body"> 
		<div class="mb-3">
	      <input type="text" id="#" class="form-control" placeholder="제목" name="title">
	    </div>
	    
		    <div class="input-group mb-3" >
		  <label for="type" class="input-group-text" style="height:30px;">물품종류 </label> 
			<select id="type" name="type" size="1" class="btn btn-outline-secondary" style="height:30px;padding:0px;font-size: 14px;">
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
		<div class="mb-3">
	      <input type="number" step="1000" id="#" class="form-control" placeholder="가격" name="price">
	    </div>
	    
	    <div class="mb-3">
	      <input type="text" id="#" class="form-control" placeholder="거래희망장소 (ex:인천시 구월동)" name="tradeplace">
	    </div>
	    
	    <div class="mb-3">
	      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="내용" name="content" style="height: 440px;"></textarea>
	    </div>

	  	<input class="btn btn-outline-secondary" type="button" value="입력" onclick="writeCheck()" style="float:right; width: 310px; ">
  	
	</div>
  	

	</div>
  </div>
</form>
<%@ include file="include/footer.jsp" %>

</body>
</html>