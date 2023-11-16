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
        <link href="${cpath}/resources/css/story_styles.css" rel="stylesheet" />
        
        
        
        
<style>

#portfolio > div > div.text-center > p > strong {
   font-size: 1.3em;
}


span.span-interval {
    margin: 0 1em;
    color: #4141413d;
}

span.category_span {
   font-weight: bold;
   
}



#portfolio > div > div.text-center  a {
   text-decoration: none;
}

/* /* 클릭한 링크 색상 */
#portfolio > div > div.text-center  a.clicked {
   color: tomato;
} */



.total-div {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 30px;
    gap: 40px;
}

.list-div {
    width: 100%;
    max-width: 420px;
    height: auto;
    box-shadow: 0px 2px 8px rgba(0, 0, 0, 0.25);
    border-radius: 8px;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.list-div2 {
    width: 100%;
    position: relative;
}

#portfolio > img {
    width: 100%;
    height: auto;
    position: absolute;
    top: 0;
    left: 0;
}

.content-div {
    width: 100%;
    height: auto;
    padding: 16px;
    position: absolute;
    bottom: 0;
    left: 0;
    background: white;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

.title-div {
    text-align: center;
    color: #242424;
    font-size: 24px;
    font-family: AppleSDGothicNeoB00;
    font-weight: 400;
    letter-spacing: 0.20px;
    word-wrap: break-word;
}

.etc-div {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 16px;
}

.writer-div {
    text-align: center;
    color: #363636;
    font-size: 16px;
    font-family: AppleSDGothicNeoB00;
    font-weight: 400;
    letter-spacing: 0.20px;
    word-wrap: break-word;
}

.list-div2 img {
    max-width: 100%;
    height: auto;
}


.scroll-to-top-button {
  position: fixed;
  bottom: 2em;
  right: 4em;
  display: none;
  background-color: rgba(255, 200, 0, 0.9);
  color: #fff;
  border: none;
  border-radius: 50%;
  width: 50px;
  height: 50px;
  font-size: 16px;
  cursor: pointer;
  z-index: 999; /* 다른 요소 위에 표시 */
  
  /* 호버 효과 스타일 */
  transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
}

.scroll-to-top-button:hover {
  background-color: rgb(255 231 145); /* 호버 시 배경색 변경 */
  color: #fff; /* 호버 시 텍스트 색상 변경 */
}


</style>        
        
    </head>
    <body id="page-top">
        <jsp:include page="header.jsp"></jsp:include>
        
        
        <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
           <button id="scrollToTopBtn" class="scroll-to-top-button">💖</button>
            <div class="container">
                <div class="text-center">
                    <p><strong>일상 구경하기 (페이지 소개 멘트)</strong></p>
                    <span class="category_span"><a href="javascript:golife()" onclick="changeColor('golife')">라이프</a></span>
                    <span class="span-interval"><strong>|</strong></span>
                    <span class="category_span"><a href="javascript:travel()" onclick="changeColor('travel')">여행,맛집</a></span>
                    <span class="span-interval"><strong>|</strong></span>
                    <span class="category_span"><a href="javascript:culture()" onclick="changeColor('culture')">문화,연예</a></span>
                    <span class="span-interval"><strong>|</strong></span>
                    <span class="category_span"><a href="javascript:it()" onclick="changeColor('it')">IT</a></span>
                    <span class="span-interval"><strong>|</strong></span>
                    <span class="category_span"><a href="javascript:sport()" onclick="changeColor('sport')">스포츠</a></span>
                    <span class="span-interval"><strong>|</strong></span>
                    <span class="category_span"><a href="javascript:issue()" onclick="changeColor('issue')">시사</a></span>
                    
                </div>
                
<%-- <div class="total-div">
    <div class="list-div">
        <div class="list-div2">
            <img src="${cpath}/resources/images/pic01.jpg" />
            <div class="content-div" >
                <div class="title-div">블로그 이름이 입력되는 공간입니다.</div>
                <div class="etc-div">
                    <div class="writer-div">글쓴이</div>
                </div>
            </div>
        </div>
    </div>
    <div class="list-div">
        <div class="list-div2">
            <img src="${cpath}/resources/images/pic02.jpg" />
            <div class="content-div" >
                <div class="title-div">블로그 이름이 입력되는 공간입니다.</div>
                <div class="etc-div">
                    <div class="writer-div">글쓴이</div>
                </div>
            </div>
        </div>
    </div>   
    <div class="list-div">
        <div class="list-div2">
            <img src="${cpath}/resources/images/pic02.jpg" />
            <div class="content-div" >
                <div class="title-div">블로그 이름이 입력되는 공간입니다.</div>
                <div class="etc-div">
                    <div class="writer-div">글쓴이</div>
                </div>
            </div>
        </div>
    </div> 
      
</div>   --%>              
                
                
                
               <!-- 태그에 따른 글목록 -->
                <div class="scroll-container" id="scroll-container">
                   <div class="row" id="view">
   
                   </div>
                </div>
                
                
            </div>
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
        
        
        
        <!-- Portfolio Modals-->
        <!-- Portfolio item 1 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="${cpath}/resources/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Project Name</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="${cpath}/resources/img/portfolio/1.jpg" alt="..." />
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Threads
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Illustration
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${cpath}/resources/js/scripts.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
    <script type="text/javascript">
    $(document).ready(function(){
        // HTML이 다 로딩되고나서 아래 코드실행
        golife();
     });
    
    function golife(){
        // 비동기방식으로 게시글 리스트 가져오기 기능
        // ajax - 요청 url, 어떻게 데이터 받을지, 요청방식 등... -> 객체
        $.ajax({
           url : "board/golife",
           type : "get",
           dataType : "json",
           success : makeView, // 콜백함수
           error : function() { alert("error"); }
        });
     }
    function travel(){
        // 비동기방식으로 게시글 리스트 가져오기 기능
        // ajax - 요청 url, 어떻게 데이터 받을지, 요청방식 등... -> 객체
        $.ajax({
           url : "board/travel",
           type : "get",
           dataType : "json",
           success : makeView, // 콜백함수
           error : function() { alert("error"); }
        });
     }
    function culture(){
        // 비동기방식으로 게시글 리스트 가져오기 기능
        // ajax - 요청 url, 어떻게 데이터 받을지, 요청방식 등... -> 객체
        $.ajax({
           url : "board/culture",
           type : "get",
           dataType : "json",
           success : makeView, // 콜백함수
           error : function() { alert("error"); }
        });
     }
    function it(){
        // 비동기방식으로 게시글 리스트 가져오기 기능
        // ajax - 요청 url, 어떻게 데이터 받을지, 요청방식 등... -> 객체
        $.ajax({
           url : "board/it",
           type : "get",
           dataType : "json",
           success : makeView, // 콜백함수
           error : function() { alert("error"); }
        });
     }
    function sport(){
        // 비동기방식으로 게시글 리스트 가져오기 기능
        // ajax - 요청 url, 어떻게 데이터 받을지, 요청방식 등... -> 객체
        $.ajax({
           url : "board/sport",
           type : "get",
           dataType : "json",
           success : makeView, // 콜백함수
           error : function() { alert("error"); }
        });
     }
    function issue(){
        // 비동기방식으로 게시글 리스트 가져오기 기능
        // ajax - 요청 url, 어떻게 데이터 받을지, 요청방식 등... -> 객체
        $.ajax({
           url : "board/issue",
           type : "get",
           dataType : "json",
           success : makeView, // 콜백함수
           error : function() { alert("error"); }
        });
     }
    
    
     function makeView(data) {
        var listHtml = "";
        data.forEach(function (obj) {
            listHtml += `
                <div class="col-lg-4 col-sm-6 mb-4">
                    <div class="portfolio-item">
                        <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1" style="background-image:url('${cimage}\${obj.bd_content}')">
                            <div class="portfolio-hover">
                                <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                        </a>
                        <div class="portfolio-caption">
                            <div class="portfolio-caption-heading">\${obj.bd_title}</div>
                            <div class="portfolio-caption-subheading text-muted">\${obj.user_nick}</div>
                        </div>
                    </div>
                </div>   
            `; 
        });
        // 위의 데이터 추가가 끝난 후 추가적으로 다른 데이터를 렌더링하려면 다음과 같이 JavaScript 코드로 C: forEach 루프를 만들어서 렌더링합니다.
        for (var i = 1; i <= 50; i++) {
          listHtml += `
            <div class="col-lg-4 col-sm-6 mb-4">
              <div class="portfolio-item">
                <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1" style="background-image:url('https://i.pinimg.com/236x/b2/35/40/b235404f995e624b13b8f5ad0aee5def.jpg')">
                  <div class="portfolio-hover">
                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                  </div>
                </a>
                <div class="portfolio-caption">
                  <div class="portfolio-caption-heading">글 제목 ${i}</div>
                  <div class="portfolio-caption-subheading text-muted">유저네임 ${i}</div>
                </div>
              </div>
            </div>
          `;
        }        
        

        $("#view").html(listHtml);
    }  
    </script>
    


    <!-- /* 상단 스크롤 버튼 */ -->
    <script type="text/javascript">    
     const scrollToTopButton = document.getElementById('scrollToTopBtn');
   
     // 스크롤 위치가 일정 값 이상일 때 버튼을 표시
     window.addEventListener('scroll', () => {
       if (window.scrollY > 200) { // 스크롤 위치 조건을 원하는 위치로 조정
         scrollToTopButton.style.display = 'block';
       } else {
         scrollToTopButton.style.display = 'none';
       }
     });
   
     // 버튼 클릭 시 페이지 맨 위로 스크롤
     scrollToTopButton.addEventListener('click', () => {
       window.scrollTo({
         top: 0,
         behavior: 'smooth' // 부드러운 스크롤 효과
       });
     });
    </script>
    
    
    <!-- a 태그 색상 변경 -->
    <script type="text/javascript">   
    function changeColor(category) {
        
        // 클릭한 카테고리의 글씨 색상을 변경합니다.
        document.querySelector(`#portfolio > div > div.text-center  a`).style.color = 'yellow';
    }

    function resetColors() {
        // 모든 카테고리의 글씨 색상을 원래대로 되돌립니다.
        const categories = ['golife', 'travel', 'culture', 'it', 'sport', 'issue'];
        categories.forEach(function(category) {
            document.querySelector(`a[href="javascript:${category}()"]`).style.color = '';
        });
    }
    </script>


    
    
</html>
