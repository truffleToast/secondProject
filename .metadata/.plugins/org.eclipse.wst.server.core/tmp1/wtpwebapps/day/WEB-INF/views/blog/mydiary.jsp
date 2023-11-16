<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var ="cpath" value ="${pageContext.request.contextPath}"/> 


<!DOCTYPE HTML>
<!--
   Read Only by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
      <title>Read Only by HTML5 UP</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="${cpath}/resources/css/main.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>   
   
  <style type="text/css">
  .post{
     float:left;
     margin: 25px;
  }
  
  .btn-visit{
     display:block;
     text-align:right;
  }
  
  .title{
     margin-top:10px;
     margin-bottom:20px;
     font-size:20px;
  }
  .indate{
  margin-top:20px;
   font-size:12px;
   color:#a2adb7;
  }
  </style>
   </head>
   <body class="is-preload" style="background-color:${myblog.blog_main};">



   <!-- 사이드바 -->
         <section id="header" style="background-color:${myblog.blog_sidebar};">
            <header>
               <span class="image avatar">
                  <c:if test="${myblog.blog_profile != null}">
               <span class="image avatar"><img src="${cpath}/resources/upload/${myblog.blog_profile}" alt="" /></span>
         </c:if>
         <c:if test="${myblog.blog_profile == null}">
               <span class="image avatar"><img src="${cpath}/resources/images/default.png" alt="" /></span>
         </c:if>
               </span>
               <h1 id="logo"><a href="#">${mvo.user_nick}</a></h1>
               <c:if test="${myblog.blog_greetings eq ''}">
                     <p>소개글을 작성해보세요!</p>
                  </c:if>
                  <c:if test="${myblog.blog_greetings ne ''}">
                     <p>${myblog.blog_greetings }</p>
                  </c:if> 
               
            </header>
            <nav id="nav">
               <ul>
                  <li><a href="#one" class="section-link active" data-section="diary">다이어리</a></li>
                  <li><a href="#two" class="section-link" data-section="guestBook">방명록</a></li>
                  <!--  <li><a href="#three" class="section-link" data-section="tempStorage">임시보관함</a></li> -->
                  <!--<c:if test="${not empty mvo}"> </c:if> -->
                     <li><a href="#four" class="section-link" data-section="blogSetting">블로그 관리</a></li>
                  
               </ul>
            </nav>
            
            
            <footer>
               <ul class="icons">
                  <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                  <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                  <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                  <li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
                  <li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
               </ul>
            </footer>
         </section>


      <!-- Wrapper -->
         <div id="wrapper" style="background-color:${myblog.blog_main};">


            <!-- Main -->
               
          <!-- header 이미지 -->
            <div id="main-head">
               <div class="image main" data-position="center">
      
                  <c:if test="${myblog.blog_header == null}">
                     <img src="${cpath}/resources/images/header.png" alt="" />
                  </c:if>
                  <c:if test="${myblog.blog_header != null}">
                     <img src="${cpath}/resources/upload/${myblog.blog_header}" alt="" />
                     <p class="imgText">${myblog.blog_title}</p>
                  </c:if>
      
               </div>
            </div>
      
      
      
            <div id="main">
                     <!-- 다이어리 -->
                        <div class="container" id="diary">
                           <header class="major">
                              <h2>Read Only</h2>
                              <p>Just an incredibly simple responsive site<br />
                              template freebie by <a href="http://html5up.net">HTML5 UP</a>.</p>
                           </header>
                           <p>Faucibus sed lobortis aliquam lorem blandit. Lorem eu nunc metus col. Commodo id in arcu ante lorem ipsum sed accumsan erat praesent faucibus commodo ac mi lacus. Adipiscing mi ac commodo. Vis aliquet tortor ultricies non ante erat nunc integer eu ante ornare amet commetus vestibulum blandit integer in curae ac faucibus integer non. Adipiscing cubilia elementum.</p>
                        <button type="button" onclick="location.href='${cpath}/blog/edit'" class="btn btn-xs btn-default">글작성</button>
                        
                        </div>



            <!-- 방명록 -->
         <div class="container" id="guestBook">
            <h3>${mvo.user_nick}님의 방명록</h3>
            <div id="visitList"></div>
         </div>



         <!-- 임시보관함 -->
                        <div class="container" id="tempStorage">
                           <h3>A Few Accomplishments</h3>
                           <p>Integer eu ante ornare amet commetus vestibulum blandit integer in curae ac faucibus integer non. Adipiscing cubilia elementum integer. Integer eu ante ornare amet commetus.</p>
                           <div class="features">
                              <article>
                                 <a href="#" class="image"><img src="${cpath}/resources/images/pic01.jpg" alt="" /></a>
                                 <div class="inner">
                                    <h4>Possibly broke spacetime</h4>
                                    <p>Integer eu ante ornare amet commetus vestibulum blandit integer in curae ac faucibus integer adipiscing ornare amet.</p>
                                 </div>
                              </article>
                              <article>
                                 <a href="#" class="image"><img src="${cpath}/resources/images/pic02.jpg" alt="" /></a>
                                 <div class="inner">
                                    <h4>Terraformed a small moon</h4>
                                    <p>Integer eu ante ornare amet commetus vestibulum blandit integer in curae ac faucibus integer adipiscing ornare amet.</p>
                                 </div>
                              </article>
                              <article>
                                 <a href="#" class="image"><img src="${cpath}/resources/images/pic03.jpg" alt="" /></a>
                                 <div class="inner">
                                    <h4>Snapped dark matter in the wild</h4>
                                    <p>Integer eu ante ornare amet commetus vestibulum blandit integer in curae ac faucibus integer adipiscing ornare amet.</p>
                                 </div>
                              </article>
                           </div>
                        </div>



                  <!-- 블로그 관리 -->
                        <div class="container" id="blogSetting">
                          <div class="formDiv">
                           <h3>블로그 관리</h3>
                           <!-- <p>Integer eu ante ornare amet commetus vestibulum blandit integer in curae ac faucibus integer non. Adipiscing cubilia elementum integer. Integer eu ante ornare amet commetus.</p> -->
                           <div>
                              <form action="${cpath}/myblog/blogUpdate" method="post" enctype="multipart/form-data">
                                 <!--  <div class="row gtr-uniform"> -->
                                 <input type="hidden" name="user_id" value="${mvo.user_id}">
                                    <table class="table">
                                       <tr>
                                          <th>프로필 사진</th>
                                          <td>
                                             <div class="imgDiv"><img id ="profile" class="img-circle" src="${cpath}/resources/upload/${myblog.blog_profile}"></div> <br>
                                             <div class="inputDiv">
                                                <label for="blog_profile" class="input-btn">사진변경</label>
                                                <input type="file" accept="image/*" id="blog_profile" name="blog_profile" onchange="readProfile(this)" style="display:none;">
                                                <label for="profileReset" class="input-btn">삭제</label>
                                                <input type="reset" id="profileReset" style="display:none;"/>
                                             </div>                                             
                                          </td>
                                       </tr>
                                     
                                       <tr>
                                          <th>블로그 제목</th>
                                          <td><input type="text" name="blog_title" id="blog_title" value="${myblog.blog_title}"></td>
                                       </tr>
                                       <tr>
                                          <th>소개글</th>
                                          <td><input type="text" name="blog_greetings" id="blog_intro" value="${myblog.blog_greetings}"></td>
                                       </tr>
                                       <tr>
                                          <th>헤더</th>
                                          <td>
                                             <div class="imgDiv"><img id ="blogHeader" src="${cpath}/resources/upload/${myblog.blog_header}"> <br>
                                             <div class="headerDiv">
                                                <label for="blog_header" class="input-btn">사진변경</label>
                                                <input type="file" accept="image/*" id="blog_header" name="blog_header" onchange="readHeader(this)" style="display:none;">
                                                <label for="headerReset" class="input-btn">삭제</label>
                                                <input type="reset" id="headerReset" style="display:none;"/>
                                             </div>
                                             </div>                                                
                                          </td>
                                       </tr>
                                       <tr>
                                          <th>사이드바</th>
                                          <td><div class="color"><input type="color" id="blog_side" name="blog_sidebar" value="${myblog.blog_sidebar}"></div></td>
                                       </tr>
                                       <tr>
                                          <th>배경</th>
                                          <td><div class="color"><input type="color" id="blog_body" name="blog_main" value="${myblog.blog_main}"></div></td>
                                       </tr>
                                    </table>
                                       <div class="btnGroup">
                                          <input type="submit" value="수정">
                                          <input type="reset" value="취소">
                                       </div>
                                   </form>
                                 </div>
                                       
                              
                         
                                       <!-- <div class="col-6 col-12-xsmall"><input type="text" name="name" id="name" placeholder="Name" /></div>
                                       <div class="col-6 col-12-xsmall"><input type="email" name="email" id="email" placeholder="Email" /></div>
                                       <div class="col-12"><input type="text" name="subject" id="subject" placeholder="Subject" /></div>
                                       <div class="col-12"><textarea name="message" id="message" placeholder="Message" rows="6"></textarea></div>
                                       <div class="col-12"> 
                                          <ul class="actions">
                                             <li><input type="submit" class="primary" value="수정" /></li>
                                             <li><input type="reset" value="취소" /></li>
                                          </ul>
                                       </div> -->
                                 <!--  </div>  -->
                           </div>
                        </div>

               </div>

            <!-- Footer -->
               <section id="footer">
                  <div class="container">
                     <ul class="copyright">
                        <li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                     </ul>
                  </div>
               </section>

         </div>




      <!-- Scripts -->
         <script src="${cpath}/resources/js/jquery.min.js"></script>
         <!-- <script src="${cpath}/resources/js/jquery.scrollex.min.js"></script>
         <script src="${cpath}/resources/js/jquery.scrolly.min.js"></script> -->
         <script src="${cpath}/resources/js/browser.min.js"></script>
         <script src="${cpath}/resources/js/breakpoints.min.js"></script>
         <script src="${cpath}/resources/js/util.js"></script>
         <script src="${cpath}/resources/js/main.js"></script>
         

<script>

    document.addEventListener('DOMContentLoaded', function () {
        const sectionLinks = document.querySelectorAll('.section-link');
        const containers = document.querySelectorAll('.container');

        // 초기에 diary만 보이게 설정
        containers.forEach(container => {
            if (container.id === 'diary') {
                container.style.display = 'block';
            } else {
                container.style.display = 'none';
            }
        });

        sectionLinks.forEach(link => {
            link.addEventListener('click', function (e) {
                e.preventDefault();
                const targetContainerId = link.getAttribute('data-section');

                // 모든 container를 숨김
                containers.forEach(container => {
                    container.style.display = 'none';
                });

                // 클릭한 링크의 data-section 값을 가져와 해당 container를 표시
                const targetContainer = document.getElementById(targetContainerId);

                if (targetContainer) {
                    targetContainer.style.display = 'block';
                }
            });
        });
    });
    
    
    // 블로그 관리 - 프로필 사진 미리보기
    function readProfile(input) {
         if (input.files && input.files[0]) {
           var reader = new FileReader();
           reader.onload = function(e) {
             document.getElementById('profile').src = e.target.result;
           };
           reader.readAsDataURL(input.files[0]);
                   
         } else {
           document.getElementById('profile').src = "";
         }       
       }
    
       // 삭제 버튼을 눌렀을 때 미리보기 이미지를 지우고 파일 입력 필드를 초기화합니다.
         document.getElementById('profileReset').addEventListener('click', function() {
           document.getElementById('profile').src = "";
           document.getElementById('blog_profile').value = ""; // 파일 입력 필드 초기화
         });         
    
    
       
       
    function readHeader(input) {
         if (input.files && input.files[0]) {
           var reader = new FileReader();
           reader.onload = function(e) {
             document.getElementById('blogHeader').src = e.target.result;
           };
           reader.readAsDataURL(input.files[0]);
         } else {
           document.getElementById('blogHeader').src = "";
         }
       }
    
       // 삭제 버튼을 눌렀을 때 미리보기 헤더 이미지를 지우고 파일 입력 필드를 초기화합니다.
         document.getElementById('headerReset').addEventListener('click', function() {
           document.getElementById('blogHeader').src = "";
           document.getElementById('blog_header').value = ""; // 파일 입력 필드 초기화
         });         

    // 방명록 띄우기
    $(document).ready(function(){
      // 페이지가 열릴 때 바로 실행되게 만들어주기
      // HTML이 다 로딩되고나서 아래 코드 실행해라
      loadList();
      
   });
   
   
   function loadList(){
      // 비동기 방식으로 게시글 리스트 가져오기
      // ajax : 요청URL, 어떻게 데이터 받을지, 요청방식 등 ... -> 객체형태로 : {}(JSON 형식)
      // success 시 함수(makeView)를 실행 : ajax로 요청하고 나서 결과를 받아와서 끝나고(돌아와서) 실행하는 함수 -> 콜백함수
      var id = "${mvo.user_id}";
      
      //console.log(id);
      $.ajax({
         url :"${cpath}/myblog/getVisit",
         data : {"id":id},
         type :"get",
         dataType :"json",
         success : makeView,  // 콜백함수
         error : function(e){
            console.log(e);
         }
      });
   }
   
   function makeView(data){
      var   listHtml = "";
      
      $.each(data, function(index, obj){
         listHtml += "<div class='card img-fluid post' style='width:300px'>";
         listHtml += "<img class='card-img-top' src='${cpath}/resources/img/post.jpg' alt='Card image' style='width:100%'>";
         listHtml += "<div class='card-img-overlay'>";
          listHtml += "<h4 class='card-title title'>" +obj.user_nick + "</h4>";
          listHtml += "<p class='card-text'>" + obj.gb_content + "</p>";
          listHtml += "<br>";
          listHtml += "<p class='indate'>"+obj.created_at + "</p>";
          listHtml += "<a href='#' class='btn btn-sm btn-defalut'>구경가기</a>";
          listHtml += "</div></div>";
         
      });

      $("#visitList").html(listHtml);
      
   }
   
   
</script>

         
         
         

   </body>
</html>