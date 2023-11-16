<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<% response.addHeader("Access-Control-Allow-Origin", "*"); %>
<% response.setHeader("Access-Control-Allow-Headers", "orgin, x-requested-with, content-type, accept"); %>
<c:set var ="cpath" value ="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>스케치 패드</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/4.5.1/fabric.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>    
    
    <style>
body {
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;
}

#canvas-container {
    /* border: 1px solid #ccc; */
    margin-bottom: 20px;
    margin-top: 150px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.25); 
    border-radius: 5px
}
#image-container {
    display: flex;
    overflow-x: auto;
    
}

#bg-container {
    display: flex;
    overflow-x: auto;
    
}
#start-drawing-button img, #prev-button img , #next-button img , #reset-button img,
#photo-upload-button img, #bg-upload-button img, #text-button img 
{
    max-width: 1.9rem; /* 원하는 크기로 조절 */
    /* max-height: 30px; */
}




/* 상단바 css */

/* .div-wrapper {
  position: relative;
  width: 100%;
  height: 100%;
  max-width: 100%;
  /* max-height: 100%;
  heigth: auto;  
  background-color: #fffefd;
} */

.view {
  position: absolute;
  /* width: 1920px; */
  width: 100%;
  height: 96px;
  top: 0;
  left: 0;
}

.overlap {
  position: relative;
  width: 100%;
  height: 100%;
}

.group {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
}

.overlap-group {
  position: relative;
  width: 100%;
  height: 100%;
  background-color: #fffefd;
  box-shadow: 0px 2px 12px #0000001a;
}

.text-wrapper {
  position: absolute;
  top: 19px;
  left: 60px;
  font-family: "Noto Sans CJK KR-Bold", Helvetica;
  font-weight: 700;
  color: #242424;
  font-size: 40px;
  letter-spacing: 0;
  line-height: normal;
  text-decoration: underline;
}

#head-div .div {
  position: absolute;
  top: 34px;
  left: 259px;
  font-family: "AppleSDGothicNeoB00-Regular", Helvetica;
  font-weight: 400;
  color: #898989;
  font-size: 20px;
  letter-spacing: 0;
  line-height: normal;
}

.text-wrapper-2 {
  position: absolute;
  top: 34px;
  left: 499px;
  font-family: "AppleSDGothicNeoM00-Regular", Helvetica;
  font-weight: 400;
  color: #fba21d;
  font-size: 20px;
  letter-spacing: 0;
  line-height: normal;
}

.line {
  position: absolute;
  width: 1px;
  height: 20px;
  top: 39px;
  left: 479px;
  object-fit: cover;
}

.group-wrapper {
  position: absolute;
  width: 142px;
  height: 48px;
  top: 24px;
  left: 1718px;
  background-color: #fba21d;
  border-radius: 12px;
  box-shadow: 0px 0px 8px #0000001a;
}

.group-2 {
  position: relative;
  width: 66px;
  height: 24px;
  top: 12px;
  left: 39px;
}

#head-div .img {
  position: absolute;
  width: 24px;
  height: 24px;
  top: 0;
  left: 0;
}

.text-wrapper-3 {
  position: absolute;
  top: 2px;
  left: 38px;
  font-family: "Noto Sans CJK KR-Bold", Helvetica;
  font-weight: 700;
  color: #ffffff;
  font-size: 14px;
  text-align: center;
  letter-spacing: 0;
  line-height: normal;
}

.group-3 {
  position: absolute;
  width: 155px;
  height: 48px;
  top: 24px;
  left: 1369px;
  background-color: #fffffd;
  border-radius: 12px;
  box-shadow: 0px 0px 8px #0000001a;
}

.group-4 {
  position: relative;
  width: 92px;
  height: 24px;
  top: 12px;
  left: 32px;
}

.text-wrapper-4 {
  position: absolute;
  top: 2px;
  left: 38px;
  font-family: "Noto Sans CJK KR-Bold", Helvetica;
  font-weight: 700;
  color: #363636;
  font-size: 14px;
  text-align: center;
  letter-spacing: 0;
  line-height: normal;
}

.group-5 {
  position: absolute;
  width: 154px;
  height: 48px;
  top: 24px;
  left: 1544px;
  background-color: #fffffd;
  border-radius: 12px;
  box-shadow: 0px 0px 8px #0000001a;
}

.group-6 {
  position: relative;
  width: 105px;
  height: 24px;
  top: 12px;
  left: 25px;
}




/* 편집 툴 css */
button#start-drawing-button,
button#prev-button,
button#next-button,
button#reset-button,
button#text-button {
	border: 0px;
	background-color: white;
	margin: 0 1em;
}

div#edit-tool {
	text-align: center;
}

.drwaing-tool {
	display: flex;
	flex-direction: row;
	justify-content: center;
	margin-top: 1.5em;
	margin-bottom: 1.5em;
}

.line-color-div{
	margin-right: 1em;
}

.line-width-div{
	margin-left: 1em;
}

/*AI 이미지 제거 MODAL*/

.imageEdit-modal{
	display:flex;
	align-items: center;
	width: 33%;
}



</style>
</head>
<body>

   
    <header id="head-div">    
	      <div class="view">
	        <div class="overlap">
	          <div class="group">
	            <div class="overlap-group">
	              <div class="text-wrapper"><a href="${cpath}//">D.A.Y</a></div>
	              <div class="div">시즌이 지나고 나들이 🙄</div>
	              <div class="text-wrapper-2">16:9 1920px*1080px</div>
	              <img class="line" src="img/line-21.svg" />
	            </div>
	          </div>
	          <div class="group-wrapper">
	            <div class="group-2">
	              <img class="img" src="img/image.svg" />
	              <div class="text-wrapper-3">등록</div>
	            </div>
	          </div>
	          <button class="group-3" id="save-jpg-button">
	            <div class="group-4">
	              <img class="img" src="img/glyph-undefined.svg" />
	              <div class="text-wrapper-4">내보내기</div>
	            </div>
	          </button>
	          <div class="group-5">
	            <div class="group-6">
	              <img class="img" src="img/glyph-undefined-3.svg" />
	              <div class="text-wrapper-4">임시저장함</div>
	            </div>
	          </div>
	        </div>
	      </div>
      </header>
      






<div id="canvas-container">
  <canvas id="main-canvas" width="1000" height="600"></canvas>
</div>




<div class="container">
  
  <br>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs justify-content-center" role="tablist">
    <li class="nav-item">
      <a class="nav-link active text-danger font-weight-bold" data-toggle="tab" href="#home">사진</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-warning font-weight-bold" data-toggle="tab" href="#menu1">배경</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-info font-weight-bold" data-toggle="tab" href="#menu2">스티커</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-success font-weight-bold" data-toggle="tab" href="#menu3">그리기</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-primary font-weight-bold" data-toggle="tab" href="#menu4">A.I</a>
    </li>
  </ul>

  <!-- Tab panes -->
  
  
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
      	<div id="image-container">
      	    <div id="photo-upload-button">
		      <img class="add-undefined-glyph" src="img/glyph-undefined.svg" alt="업로드" />
		      <div class="text-wrapper">사진<br />가져오기</div>
		    </div>
<%--     		<div id="photo-upload-button">
			  <img src="${cpath}/resources/editor/upload.png" alt="업로드"><h5>업로드</h5>
			</div> --%>
    		<input type="file" id="image-upload" multiple="multiple" accept="image/*" style= "display: none;">	
  		</div>
    </div>
    <div id="menu1" class="container tab-pane fade"><br>
	   
	   <div id="bg-container">
	    	<div id="bg-upload-button">
			  <img src="${cpath}/resources/editor/upload.png" alt="업로드"><h5>업로드</h5>
			</div>
	    <input type="file" id="background-upload" multiple="multiple" accept="image/*" style= "display: none;">
	    	
	  </div>
    </div>
    
    
    <div id="menu2" class="container tab-pane fade"><br>
      <h3>스티커</h3>
    </div>
    <div id="menu3" class="container tab-pane fade"><br>
      <div id="edit-tool">
		  <button id="prev-button">
		    <img src="${cpath}/resources/editor/prev.png" alt="이전으로">
		  </button>
		  <button id="next-button">
		    <img src="${cpath}/resources/editor/next.png" alt="다음으로">
		  </button>
		  <button id="reset-button">
		    <img src="${cpath}/resources/editor/reset.png" alt="초기화">
		  </button>
	      <button id="start-drawing-button">
		    <img src="${cpath}/resources/editor/pencil.png" alt="그리기 모드 시작">
		  </button>
		  <button id="text-button">
		    <img src="${cpath}/resources/editor/txt.png" alt="텍스트">
		  </button>
		  
		  <div class="collapse" id="drawing-options">
		  	<div class="drwaing-tool">
			  <div class="line-color-div"><input type="color" id="line-color" value="#000000"></div>
			  <div class="line-width-div"><input type="range" id="line-width" min="1" max="10" value="2"></div>
			  <div class="controls__btns">
				  <button id="jsErase">지우개</button>
				  <input type="range" id="jsRange" min="0.1" max="20.0" step="0.1"/>
			  </div>
		  	</div>
		  </div>
		  
<!-- 		  <label for="font-family">글꼴 선택:</label>
		    <select id="font-family">
		        <option value="Arial">Arial</option>
		        <option value="Times New Roman">Times New Roman</option>
		        <option value="Courier New">Courier New</option>
		        <option value="Georgia">Georgia</option>
		    </select> -->
      </div>    
    </div>
    <div id="menu4" class="container tab-pane fade"><br>
      <h3>A.I</h3>
      <h3>배경 제거, 이미지 생성, AI 지우개 등을 체험해보세요</h3>
      <button id="ai-edit__btn">AI기능 사용하기</button>
      
    
         
         
         
<div class ="imageEdit-modal__wrap">
	 <!-- 이미지 편집 플라스크 -->
       <div class="ai-imgEdit">
      <!-- removeBg -->
         <div class="imageEdit-removeBg">
            <span class="imageEdit-removeBg__span">배경 제거</span>
            <form id="imageEdit-removeBg__form" 
            method= "post" enctype ="multipart/form-data">
               <input type ="file" name ="myfile" class="imageUpload" accept ="image/*" >
               <input type ="submit" id="imageEdit-removeBg__sub" value="배경제거하기">
            </form>
         </div>
      <!-- imageGenerator 생성(Kalo)-->
         <div class="imageEdit-makeImg">
            <span class ="imageEdit-makeImg__span">이미지 생성</span>
            	<form id ="imageEdit-makeImg__form" method ="post">
               <h6>구체적으로 작성하여 주시고, 영어로 작성해주세요</h6>
               <input type ="text" name ="prompt" placeholder="생성할 이미지의 텍스트를 입력해주세요"><!-- 생성할 이미지 텍스트 --><br>
               <span class ="makeImg-style">원하는 스타일</span>
               <select name="art_style" id="art_style">
                  <option value="">선택 안함</option>
                  <option value="by Renoir">르누아르 스타일</option>
                  <option value="by Picasso">피카소 스타일</option>
                  <option value="by Gogh">고흐 스타일</option>
                  <option value="Anime">애니메이션 스타일</option>
                  <option value="cartoon">카툰 스타일</option>
               </select>
               <br>
               <input type ="text" name ="negative_prompt"> <!-- 이미지에서 생성하고 싶지 않은 요소 -->
               <span>- 생성시 제거할 요소</span>
               <input type ="submit" id="imageEdit-makeImg__sub" value="이미지 생성하기">
            	</form>
         	</div>
         </div>
	<div class= "imageEdit-modal imageEdit-modal__aiEraser">
	   <!-- 사용자가 이미지를 업로드할 수 있도록 input 태그 추가 -->
	   <input type="file" class="imageUpload" accept="image/*">
	   <img id="modal-userImg__unerased" src="${cpath}/resources/img/header-bg.jpg" onclick= "findPoint(event)" style="display: none;">
	</div>
	<div class= "imageEdit-modal imageEdit-modal__removeBg">
	   <img id= "basic_image__remBg" src="" alt="기본 이미지"> <!--흰색만 있거나 투명한 이미지 하나가져와서 띄우기-->
	   <span>배경 제거 이미지 테스트</span>
	</div>
	<div class ="imageEdit-modal imageEdit-modal__makedImg">
	   <img id= "basic_image__makeImg" src="" alt="기본 이미지"> <!--흰색만 있거나 투명한 이미지 하나가져와서 띄우기-->
	   <span>만들어진 이미지 테스트</span> 
	</div>
</div>
         
         
    </div>
  </div>
</div>




<script src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/4.5.0/fabric.min.js"></script>



<script> 	
//ajax
$(document).ready(function(){
    //사진올리면 보이게 하기
	$(".imageUpload").change(function(){
    var reader = new FileReader();
    reader.onload = function(e){
        $("#modal-userImg__unerased").attr('src', e.target.result).show(); // ID 수정: UnerasedImg -> modal-userImg__unerased
    }
    reader.readAsDataURL(this.files[0]);
});
	
	
	// 이미지 배경 제거 기능 처리
    $("#imageEdit-removeBg__form").on('submit',function(e){	
        e.preventDefault(); // 폼 제출 기본 이벤트 방지
        var removeBg_fData = new FormData(this); // 폼 데이터 생성	        
      	console.log(removeBg_fData); 
      	
        // AJAX 요청 설정 및 전송
        $.ajax({
            url:'http://localhost:5000/removeBg', // 요청 URL
            type: "post", // HTTP 요청 방식
            enctype: "multipart/form-data",
            cache:false,
            data: removeBg_fData, // 전송할 데이터
            contentType: false, // 컨텐트 타입 설정 방지
            processData: false, // 데이터를 쿼리 문자열로 변환 방지
            success: function(data) { // 요청 성공 시 처리할 함수
                uploadRemovedImg(data);// 배경이 제거된 이미지 업로드 함수 호출
            },
            error: function(xhr, status, error){ // 요청 실패 시 처리할 함수
                alert('Error: ' + error); // 오류 메시지 표시
            }
        });
    });

    // 텍스트 기반 이미지 생성 기능 처리
    $("#imageEdit-makeImg__form").on('submit',function(e){
        e.preventDefault(); // 폼 제출 기본 이벤트 방지
        var promptValue = $("input[name='prompt']").val(); // name이 prompt인 input
        var styleValue = $("#art_style option:selected").val(); //art스타일에서 선택된 것의 밸류
        //삼항연산자로 처리
        var combinedPrompt = promptValue + (styleValue ? ", " + styleValue : "");
        
        var makeImg_fData = new FormData(this);
        makeImg_fData.set("prompt", combinedPrompt); // 보낼 객체를 저 결합한 데이터를 바탕으로 처리

        // AJAX 요청 설정 및 전송
        $.ajax({
            url:'http://localhost:5000/makeImg', // 요청 URL
            type: "post", // HTTP 요청 방식
            data: makeImg_fData, // 전송할 데이터
            contentType: false, // 컨텐트 타입 설정 방지
            processData: false, // 데이터를 쿼리 문자열로 변환 방지
            
            success: function(data){ 
            	uploadMakedImg(data)
            },
            error: function(xhr, status, error){ // 요청 실패 시 처리할 함수
                alert('Error: ' + error); // 오류 메시지 표시
            }
        });
    });
   		// AI 지우개 기능
      var UnerasedImg = $("#modal-userImg__unerased") // UnerasedImg는 유저가 올릴 사진
      var clickX, clickY; // 클릭 위치 저장을 위한 전역 변수
      
     
      
      // 이미지와 위치 데이터를 서버에 전송
      $("#imageEdit-removeBg__form").on("submit",function(e){
    	  e.preventDefault(); // 폼 제출 기본 이벤트 방지
      	var formData = new FormData(this);
        formData.append('image', $("#imageUpload")[0].files[0]);
        formData.append('x', clickX);
        formData.append('y', clickY);
        $.ajax({   
            url:"http://localhost:5000/remove_object", //요청 url remove_object으로 보내고
            type: "post",
            enctype: "multipart/form-data",
            data: formData,
            processData: false,
            contentType: false,
            success: function(data){
           	 uploadErasedImg(data);
            },
            error: alert("Error")
            
         });
        
      });

});

// 배경이 제거된 이미지를 모달에 표시하는 함수
function uploadRemovedImg(data){
   console.log(data)
   var imageUrl = data.image_url;
    $(".imageEdit-modal__removeBg").append('<img id="bg-removedImg" src="'+imageUrl+'" />');
}

// 생성된 이미지를 모달에 표시하는 함수 -> 기본 이미지의 href를 바꿔주기
function uploadMakedImg(data){
   	console.log(data);   
    var makedImg = data.image_url; //image_url로 할것
    console.log(makedImg); //이미지 url 확인
    $('#basic_image__makeImg').attr('src', makedImg); //src 변경하기

}
function uploadErasedImg(data){	
	var erasedImg = data.image_url;
	console.log(erasedImg); // 이미지 url보낼것 여기선 자바 절대 경로;
	$('#basic_image_erasedImg').attr('src', erasedImg); //TODO
	
}
//이미지 업로드 후 화면에 보이게 하기







document.addEventListener('DOMContentLoaded', function () {
	  const canvas = new fabric.Canvas('main-canvas');	  
	  const ctx = canvas.getContext("2d");
	  var imageContainer = document.getElementById('image-container');
	  var uploadInput = document.getElementById('image-upload');
	  var propertiesPanel = document.getElementById('properties-panel'); // 편집 옵션을 담은 패널의 ID
	  var photoButton = document.getElementById('photo-button');
	  var backgroundButton = document.getElementById('background-button');
	  var bgContainer = document.getElementById('bg-container');
	  var bgUploadInput = document.getElementById('background-upload');
	  var isDrawingMode = false;
	  var undoStack = [];
	  var redoStack = [];
	  var prevButton = document.getElementById('prev-button');
	  var nextButton = document.getElementById('next-button'); // 다음 버튼 요소 가져오기
	  var textButton = document.getElementById('text-button'); // 텍스트 버튼 요소 가져오기
	  var isTextMode = false; // 텍스트 모드 상태 변수
	  var activeText = null;
	  
	  // 지우개
	  const erase = document.getElementById("jsErase");
	  const erase_range = document.getElementById("jsRange");
	  
	
	  
	  
	// 텍스트 도구 활성화 함수
	  function enableTextMode() {
	      isTextMode = true;
	      canvas.discardActiveObject(); // 선택된 객체 취소
	      canvas.requestRenderAll();
	      activeText = null; // 새로운 텍스트 상자 생성을 위해 activeText 초기화
	  }

	  // 텍스트 버튼 클릭 이벤트 핸들러
	  textButton.addEventListener('click', function () {
	      enableTextMode();
	  });

	  // 캔버스 클릭 이벤트 핸들러
	  canvas.on('mouse:down', function (options) {
    if (isTextMode) {
        var pointer = canvas.getPointer(options.e);
        if (!activeText) {
            // 활성화된 텍스트 상자가 없을 때만 새로운 텍스트 상자 생성
            activeText = new fabric.Textbox('텍스트 입력', {
                left: pointer.x,
                top: pointer.y,
                fontFamily: 'Arial',
                fill: 'black',
            });
            canvas.add(activeText);
            canvas.setActiveObject(activeText);
            canvas.requestRenderAll();
        }
    } else {
        // 텍스트 모드가 아닐 때, 다른 작업 수행
    }
    
    // 텍스트 모드 비활성화
    disableTextMode();
});

	  // 텍스트 입력 모드 비활성화 함수
	  function disableTextMode() {
	      isTextMode = false;
	      activeText = null; // 활성화된 텍스트 상자 초기화
	  }

	  // 캔버스 클릭 이벤트 핸들러: 텍스트 모드 비활성화
	  canvas.on('mouse:down', function () {
	      disableTextMode();
	  });
	      
/* 	// 글꼴 선택란 엘리먼트와 텍스트를 변경할 엘리먼트를 가져옵니다.
	  const fontSelect = document.getElementById('font-family');

	  // 글꼴 선택란의 변경 이벤트를 감지합니다.
	  fontSelect.addEventListener('change', function () {
	      if (isTextMode && activeText) {
	          // 선택한 글꼴 값을 가져옵니다.
	          const selectedFont = fontSelect.value;

	          // 활성화된 텍스트 상자에 선택한 글꼴을 적용합니다.
	          activeText.set({ fontFamily: selectedFont });
	          canvas.requestRenderAll();
	      }
	  }); */

		
	  
	// 사용자 정의 이미지 클릭 이벤트 핸들러
	  document.getElementById('photo-upload-button').addEventListener('click', function () {
	      // 파일 업로드 버튼 클릭
	      document.getElementById('image-upload').click();
	  });
	  document.getElementById('bg-upload-button').addEventListener('click', function () {
	      // 파일 업로드 버튼 클릭
	      document.getElementById('background-upload').click();
	  });
	  
	  
	  // 이미지를 Canvas에 추가하는 함수
	  function addImageToCanvas(imgElement) {
	    fabric.Image.fromURL(imgElement.src, function (oImg) {
	      canvas.add(oImg).renderAll();
	      // 이미지를 선택하면 편집 옵션 패널을 표시
	      propertiesPanel.style.display = 'block';
	      // 선택된 객체의 속성을 패널에 표시할 수 있습니다.
	      // 예: propertiesPanel.querySelector('.width').textContent = oImg.getScaledWidth();
	    });
	  }
		//배경이미지로 추가하는 함수
		function setCanvasBackground(imgElement) {
			var img = new Image();
		    img.src = imgElement.src;

		    img.onload = function () {
		        canvas.setBackgroundImage(imgElement.src, canvas.renderAll.bind(canvas), {
		            scaleX: canvas.width / img.width,
		            scaleY: canvas.height / img.height,
		            top: 0,
		            left: 0
		        });
		    };
		}
		// 이전으로 돌아가는 함수
		function undo() {
		    if (undoStack.length > 0) {
		        var previousState = undoStack.pop(); // 스택에서 이전 상태를 팝
		        redoStack.push(JSON.stringify(canvas.toDatalessJSON())); // 현재 상태를 다음 행동 스택에 저장
		        canvas.loadFromJSON(previousState); // 이전 상태로 canvas 복원
		        canvas.renderAll(); // canvas 다시 그리기
		    }
		    // 버튼 상태 업데이트
		    updateButtonState();
		}

		// 다음으로 이동하는 함수
		function redo() {
		    if (redoStack.length > 0) {
		        var nextState = redoStack.pop(); // 스택에서 다음 상태를 팝
		        undoStack.push(JSON.stringify(canvas.toDatalessJSON())); // 현재 상태를 이전 행동 스택에 저장
		        canvas.loadFromJSON(nextState); // 다음 상태로 canvas 복원
		        canvas.renderAll(); // canvas 다시 그리기
		    }
		    // 버튼 상태 업데이트
		    updateButtonState();
		}

		
		
	  
		bgContainer.addEventListener('click', function (e) {
		    var clickedImage = e.target;
		    // 클릭한 이미지를 canvas의 배경으로 설정
		    setCanvasBackground(clickedImage);
		});

		// 이미지를 Canvas에 추가하는 함수 (이미지 추가와 배경 설정을 분리)
		function addImageToCanvas(imgElement) {
		    fabric.Image.fromURL(imgElement.src, function (oImg) {
		        canvas.add(oImg).renderAll();
		        // 이미지를 선택하면 편집 옵션 패널을 표시
		        propertiesPanel.style.display = 'block';
		        // 선택된 객체의 속성을 패널에 표시할 수 있습니다.
		        // 예: propertiesPanel.querySelector('.width').textContent = oImg.getScaledWidth();
		    });
		}

		
		
	  uploadInput.addEventListener('change', function (e) {
	    var files = e.target.files;
	   

	    for (var i = 0; i < files.length; i++) {
	      (function (file) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	          var img = new Image();
	          img.src = e.target.result;
	          img.style.maxHeight = '100px';
	          img.onclick = function () {
	            // 이미지 클릭 시 Canvas에 추가
	            addImageToCanvas(img);
	          };
	          imageContainer.appendChild(img);
	        };
	        reader.readAsDataURL(file);
	      })(files[i]);
	    }
	  });
	  
	  
	  bgUploadInput.addEventListener('change', function (e) {
		    var files = e.target.files;

		    for (var i = 0; i < files.length; i++) {
		      (function (file) {
		        var reader = new FileReader();
		        reader.onload = function (e) {
		          var img = new Image();
		          img.src = e.target.result;
		          img.style.maxHeight = '100px';
		          img.onclick = function () {
		            // 이미지 클릭 시 Canvas에 추가
		        	 setCanvasBackground(img);
		          };
		          bgContainer.appendChild(img);
		        };
		        reader.readAsDataURL(file);
		      })(files[i]);
		    }
		  });
	  
	  function toggleDrawingMode() {
		  isDrawingMode = !isDrawingMode;
		  if (isDrawingMode) {
		    // 그리기 모드가 활성화되면 마우스로 그림을 그릴 수 있도록 설정
		    canvas.isDrawingMode = true;
		  } else {
		    // 그리기 모드가 비활성화되면 그리기 모드를 해제
		    canvas.isDrawingMode = false;
		  }
		}

		// 그리기 버튼 클릭 이벤트 핸들러
		document.getElementById('start-drawing-button').addEventListener('click', function () {
		  toggleDrawingMode();
		});
	  
		document.getElementById('reset-button').addEventListener('click', function () {
		    // 사용자에게 확인 메시지 표시
		    var confirmReset = confirm("초기화하시겠습니까? 이 작업은 현재까지의 그림을 모두 지우고 새로 시작합니다.");

		    // 사용자가 "예"를 선택한 경우에만 초기화 실행
		    if (confirmReset) {
		        // canvas를 완전히 비우기
		        canvas.clear();
		    }
		});
	  
		// 이전 버튼 클릭 이벤트 핸들러
		prevButton.addEventListener('click', function () {
		    undo();
		});
		// 다음 버튼 클릭 이벤트 핸들러
		nextButton.addEventListener('click', function () {
		    redo();
		});
		

		// canvas 상태를 스택에 저장하는 함수 (이전 상태 기록)
		function saveCanvasState() {
		    var currentState = JSON.stringify(canvas.toDatalessJSON()); // 현재 canvas 상태를 문자열로 저장
		    undoStack.push(currentState); // 스택에 현재 상태 저장
		    // 다음 행동 스택 비우기
		    redoStack.length = 0;
		    // 버튼 상태 업데이트
		    updateButtonState();
		}

		// canvas에 변화가 있을 때마다 상태를 스택에 저장
		canvas.on('object:modified', saveCanvasState);
		canvas.on('object:removed', saveCanvasState);

		// 초기 상태에서는 이전 버튼과 다음 버튼 비활성화
		updateButtonState();

		// 버튼 상태 업데이트 함수
		function updateButtonState() {
		    // 이전 버튼 비활성화 조건: undoStack이 비어 있을 때
		    prevButton.disabled = undoStack.length === 0;
		    // 다음 버튼 비활성화 조건: redoStack이 비어 있을 때
		    nextButton.disabled = redoStack.length === 0;
		}
	  
	  
	  
	  
	  
	  document.getElementById('save-jpg-button').onclick = function() {
		    var dataURL = canvas.toDataURL({
		      format: 'jpeg',
		      quality: 0.8
		    });
		    var link = document.createElement('a');
		    link.download = 'canvas-image.jpg';
		    link.href = dataURL;
		    link.click();
		};
		
		
		document.getElementById('line-color').addEventListener('input', function (e) {
		    lineColor = e.target.value;
		    if (isDrawingMode) {
		        canvas.freeDrawingBrush.color = lineColor; // 현재 선 색상 업데이트
		    }
		});

		// 선 두께 변경 이벤트 핸들러
		document.getElementById('line-width').addEventListener('input', function (e) {
		    lineWidth 	= parseInt(e.target.value, 10);
		    if (isDrawingMode) {
		        canvas.freeDrawingBrush.width = lineWidth; // 현재 선 두께 업데이트
		    }
		});
	
		
		// 그리기 버튼 클릭 시 세부 버튼 생성 (색상, 두께)
		  document.getElementById('start-drawing-button').addEventListener('click', function() {
			    var drawingOptions = new bootstrap.Collapse(document.getElementById('drawing-options'));
			    drawingOptions.toggle();
			  });	 
	});
	
// 지우개 버튼 이벤트 설정
	document.getElementById('eraseBtn').addEventListener('click', function() {
  	ctx.clearRect(0, 0, canvas.width, canvas.height);
});

// 모달창 보이게 하기
document.getElementById('ai-edit__btn').addEventListener('click', function(){
	$(".imageEdit-modal__wrap").css("display","block");
});


//이미지 클릭 위치 찾기
function findPoint(event){
        clickX =event.offsetX;
        clickY =event.offsetY;
   	}
	

</script>

</body>
</html>