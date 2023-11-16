<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var ="cpath" value ="${pageContext.request.contextPath}"/> 
<c:set var ="cimage" value ="${pageContext.request.contextPath}/resources/board/"/>  


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Agency - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${cpath}/resources/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${cpath}/resources/css/follow_styles.css" rel="stylesheet" />
   
   
   
        
<!-- 부트스트랩 CSS 파일 포함 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- 부트스트랩 JavaScript 및 팝퍼 및 jQuery 포함 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
        
        
        
        
        
<!-- <style type="text/css">
   .d-flex {
    display: flex;
    justify-content: center;
  }

  .rounded-circle {
    width: 230px;
    height: auto;
    overflow: hidden;
    /* padding: 40px; */ /* 간격을 조절할 수 있는 padding 속성 */
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 15px
  }
  
/* 사용자 정의 CSS */
.carousel-control-prev,
.carousel-control-next {
  width: 30px; /* 원하는 너비로 변경하세요 */
  opacity: 1; /* 버튼 투명도를 1로 설정하여 표시됩니다 */
  background-color: #f8f9fa; /* 원하는 색상으로 변경하세요 */
}

.carousel-control-prev-icon,
.carousel-control-next-icon {
  background-color: #b7b7b76b; /* 원하는 화살표 아이콘 색상으로 변경하세요 */
}      
</style> -->


<style>

   .carousel {
      position: relative;
      overflow: hidden;
      /* height: 430px; */
      /* padding: 2em 0 2em 0; */
      margin-bottom: 0;
   }

      .carousel .forward, .carousel .backward {
         position: absolute;
         top: 50%;
         width: 6em;
         height: 12em;
         margin-top: -6em;
         cursor: pointer;
      }

         .carousel .forward:before, .carousel .backward:before {
            content: '';
            display: block;
            width: 6em;
            height: 6em;
            border-radius: 100%;
            background-color: rgb(119 100 95 / 15%);
            position: absolute;
            top: 50%;
            margin-top: -3em;
            -moz-transition: background-color 0.35s ease-in-out;
            -webkit-transition: background-color 0.35s ease-in-out;
            -o-transition: background-color 0.35s ease-in-out;
            -ms-transition: background-color 0.35s ease-in-out;
            transition: background-color 0.35s ease-in-out;
            -webkit-backface-visibility: hidden;
         }

         .carousel .forward:after, .carousel .backward:after {
            content: '';
            width: 3em;
            height: 3em;
            position: absolute;
            top: 50%;
            margin: -1.5em 0 0 0;
            background: url("images/arrow.svg") no-repeat center center;
         }

         .carousel .forward:hover:before, .carousel .backward:hover:before {
            background-color: rgb(20 18 17 / 49%);
         }

      .carousel .forward {
         right: 0;
      }

         .carousel .forward:before {
            right: -3em;
         }

         .carousel .forward:after {
            right: -0.25em;
         }

      .carousel .backward {
         left: 0;
      }

         .carousel .backward:before {
            left: -3em;
         }

         .carousel .backward:after {
            left: -0.25em;
            -moz-transform: scaleX(-1);
            -webkit-transform: scaleX(-1);
            -ms-transform: scaleX(-1);
            transform: scaleX(-1);
         }

      .carousel .reel {
         white-space: nowrap;
         position: relative;
         -webkit-overflow-scrolling: touch;
         /* padding: 0 2em 0 2em; */
      }

      .carousel article {
         display: inline-block;
         width: 20%;
         background: rgba(255, 255, 255, 0.15);
         text-align: center;
         /* padding: 0 1em 3em 1em;
         margin: 0 2em 0 0; */
         margin: 0 !important;
         white-space: normal;
         opacity: 1.0;
         -moz-transition: opacity 0.75s ease-in-out;
         -webkit-transition: opacity 0.75s ease-in-out;
         -ms-transition: opacity 0.75s ease-in-out;
         transition: opacity 0.75s ease-in-out;
      }

         .carousel article.loading {
            opacity: 0;
         }

         .carousel article .image {
            position: relative;
            left: 0;
            top: 0;
            width: auto;
            /* margin-right: -2em;
            margin-bottom: 3em; */
            margin: 0 !important;
            position: relative;
            overflow: hidden;
            width: 100%;
         }

         .carousel article a.image.featured::after {
            content: "";
            display: block;
            padding-bottom: 56.25%;
         }

         .carousel article a.image.featured img {
            position: absolute;
            width: 13em;
            height: 13em;
          /* max-height: 100%; */
            }


         .carousel article p {
            text-align: center;
         }

/* 이미지 컨테이너 스타일 */
.carousel article a.image.featured {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
}

/* h4와 p 태그 스타일 */
.carousel article h4,
.carousel article p {
    margin: 0; /* 기본 마진 제거 */
    margin-bottom: 8px;
}

.image.featured {
    display: block;
    max-width: 100%;
    height: auto;
}

/* .reel 내부에 있는 이미지만 스타일 적용 */
.reel article a.image.featured img {
    object-fit: cover; /* 이미지를 화면에 맞게 조절 */
    max-height: 100%; /* 최대 높이 설정 */
    width: 56%; /* 가로 너비 100%로 설정 */
}

.txt-container {
    /* background-color: teal; */
    margin-top: 20px;
}


.col-lg-8.mx-auto.text-center {
    margin-top: 3em;
}

.follow-board {
    max-width: 1140px;
    margin: 0 auto; /* 수평 가운데 정렬을 위한 margin 설정 */
    margin-top: 70px;
    text-align: center;
}




    /* 작은 화면에 대한 스타일 설정 */
@media only screen and (max-width: 991px) {
.carousel article {
    display: inline-block;
    width: 60%;
    background: rgba(255, 255, 255, 0.15);
    text-align: center;
    margin: 0 !important;
    white-space: normal;
    opacity: 1.0;
    -moz-transition: opacity 0.75s ease-in-out;
    -webkit-transition: opacity 0.75s ease-in-out;
    -ms-transition: opacity 0.75s ease-in-out;
    transition: opacity 0.75s ease-in-out;
}
}



#team h5, 
#team h6 {
   display:inline;
}


img.card-img-top {
   height: 26rem;
}

.card-body{
   height: 5rem;
}


</style>



        
        
    </head>
    <body id="page-top">
        <jsp:include page="header.jsp"></jsp:include>
    
        
        
        <!-- Team-->
        <section class="page-section bg-light" id="team">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Follow</h2>
                    <h3 class="section-subheading text-muted">~팔로우한사람 목록입니당~</h3>
                </div>
            
                <c:if test="${empty mvo}">
                  <div class="text-center"><h1>로그인 하세요</h1></div>
                  </c:if>
                  
                  <!-- 이웃 목록 -->
                <c:if test="${not empty mvo}">
               <!-- Carousel -->
               <section class="carousel">
                  <div class="reel">
                     <c:forEach var="item" items="${list}">
                        <article>
                           <a href="#" class="image featured">
                              <img src="${cimage}${item.blog_profile}" alt="" class="rounded-circle">
                           </a>
                           <div class="txt-container">
                              <a href="#" class="txt featured">
                                        <h4 class="follow_text">${item.user_id}</h4>
                                        <p class="text-muted">Lead Designer</p>
                                     </a>      
                           </div>            
                        </article>
                     </c:forEach>
                  </div>
               </section>                
                  
         
            
             <div>
                <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">@@@@@@@@@@ 아래로는 이웃 최신글이 나옵니다 @@@@@@@@@@</p></div>
             </div>
            
            
         <!-- 이웃 최신글 -->
            <div class="follow-board">
               <div class="row row-cols-1 row-cols-md-3 g-4">
              <div class="col">
                <div class="card">
                  <a href="#" class=""><img src="${cpath}/resources/images/pic01.jpg" class="card-img-top" alt="..."></a>
                  <div class="card-body">
                    <a href="#" class=""><h5 class="card-title">글 제목</h5> <h6>/ 글쓴이</h6></a>
                    <p class="card-text">좋아요 수</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <img src="${cpath}/resources/images/pic02.jpg" class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title">글 제목</h5> <h6>/ 글쓴이</h6>
                    <p class="card-text">좋아요 수</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <img src="${cpath}/resources/images/pic03.jpg" class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title">글 제목</h5> <h6>/ 글쓴이</h6>
                    <p class="card-text">좋아요 수</p>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card">
                  <img src="${cpath}/resources/images/pic01.jpg" class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title">글 제목</h5> <h6>/ 글쓴이</h6>
                    <p class="card-text">좋아요 수</p>
                  </div>
                </div>
              </div>
            </div>
            </div>
            </c:if>
            
            </div>    <!-- .container -->
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        </section>
        
      
        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-start">Copyright &copy; Your Website 2023</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-end">
                        <a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a>
                        <a class="link-dark text-decoration-none" href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
        
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${cpath}/resources/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
    
    
    <script type="text/javascript">
    $(document).ready(function(){
      
      var pageFrm = $("#story")
      $(".paginate_button a").on("click", function(e){
         //e 현재 클릭한 a태그 요소 자체
         e.preventDefault(); // a태그의 href속성 작동막기
         var page = $(this).attr("href"); //클릭한 a태그의 href의 값
         pageFrm.find("#page").val(page);
         pageFrm.submit();
      });
    
    }   
    </script>
    
          <!-- Scripts -->
      <script src="${cpath}/resources/js/follow_js/jquery.min.js"></script>
      <script src="${cpath}/resources/js/follow_js/jquery.dropotron.min.js"></script>
      <script src="${cpath}/resources/js/follow_js/jquery.scrolly.min.js"></script>
      <script src="${cpath}/resources/js/follow_js/jquery.scrollex.min.js"></script>
      <script src="${cpath}/resources/js/follow_js/browser.min.js"></script>
      <script src="${cpath}/resources/js/follow_js/breakpoints.min.js"></script>
      <script src="${cpath}/resources/js/follow_js/util.js"></script>
      <script src="${cpath}/resources/js/follow_js/main.js"></script>
    

    
</html>
