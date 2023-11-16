<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var ="cpath" value ="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <link href="${cpath}/resources/css/login.css" rel="stylesheet" />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
   <div id="container" class="container">
       <!-- FORM SECTION -->
       <div class="row">
         <!-- SIGN UP -->
         <div class="col align-items-center flex-col sign-up">
           <div class="form-wrapper align-items-center">
             <div class="form sign-up">
             <form action="${cpath}/login/join" method="post">
               <div class="input-group">
                 <i class='bx bxs-user'></i>
                 <input type="text" name="user_id" id="name" placeholder="아이디">
                 <p id="idCheck"></p>
               </div>
               <div class="input-group">
                 <i class='bx bxs-user'></i>
                 <input type="text" name="user_nick" id="nick" placeholder="닉네임">
                 <p id="nickCheck"></p>
               </div>
               <div class="input-group">
                 <i class='bx bx-mail-send'></i>
                 <input type="email" name="user_email" placeholder="이메일">
               </div>
               <div class="input-group">
                 <i class='bx bxs-lock-alt'></i>
                 <input type="password" id="pw" name="user_pw" placeholder="비밀번호">
               </div>
               <div class="input-group">
                 <i class='bx bxs-lock-alt'></i>
                 <input type="password" id="confirmPw" placeholder="비밀번호 확인">
                 <p id="pwCheck"></p>
               </div>
                <input type="hidden" name="user_role" value="user">
               <button type="submit" id="signup">
                 Sign up
               </button>
               </form>
               <p>
                 <span>
                   Already have an account?
                 </span>
                 <b onclick="toggle()" class="pointer">
                   Sign in here
                 </b>
               </p>
             </div>
           </div>
         
         </div>
         <!-- END SIGN UP -->
         <!-- SIGN IN -->
         <div class="col align-items-center flex-col sign-in">
            <div class="form-wrapper align-items-center">
               <div class="form sign-in">
                  <form action="${cpath}/login/loginProcess" method="post">
                     <div class="input-group">
                        <i class='bx bxs-user'></i> 
                        <input type="text" name="user_id" placeholder="ID">
                     </div>
                     <div class="input-group">
                        <i class='bx bxs-lock-alt'></i> 
                        <input type="password" name="user_pw" placeholder="Password">
                     </div>
                     <button type="submit">Login</button>
                  </form>
                  <p>
                     <b> Forgot password? </b>
                  </p>
                  <p>
                     <span> Don't have an account? </span> <b onclick="toggle()"
                        class="pointer"> Sign up </b>
                  </p>
                  <div class="btn-back">
                     <a href="${cpath}/"
                        class="fas fa-2x fa-angle-left angle-left-color"><img
                        src="${cpath}/resources/img/left.png" width="20px" height="20px"></a>
                  </div>
               </div>
            </div>
            
            <div class="form-wrapper"></div>
         </div>
         <!-- END SIGN IN -->
       </div>
    
       <!-- END FORM SECTION -->
       <!-- CONTENT SECTION -->
       <div class="row content-row">
         <!-- SIGN IN CONTENT -->
         <div class="col align-items-center flex-col">
           <div class="text sign-in">
             <h2>
               D.A.Y
             </h2>
     
           </div>
           <div class="img sign-in">
       
           </div>
         </div>
         <!-- END SIGN IN CONTENT -->
         <!-- SIGN UP CONTENT -->
         <div class="col align-items-center flex-col">
           <div class="img sign-up">
           
           </div>
           <div class="text sign-up">
             <h2>
               Join with us
             </h2>
     
           </div>
         </div>
         <!-- END SIGN UP CONTENT -->
       </div>
       <!-- END CONTENT SECTION -->
       
     </div>
<script src="${cpath}/resources/js/login.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
       
       $("#name").keyup(function(){
          const idCheck = document.getElementById("idCheck");
          let inputId = $('#name').val();
          
          $.ajax({
             url : "${cpath}/login/idCheck",
             data : {"user_id" : inputId},
             success : function(text){
                //console.log(text)
                if(text == true){
                   idCheck.innerText = "중복된 아이디입니다.";
                }else{
                   idCheck.innerText = "사용 가능한 아이디입니다.";
                }
             },
             error : function(e){
                console.log(e);
             }
          });
          
          
       });
    });
 
 
   $(document).ready(function(){
       
       $("#nick").keyup(function(){
          const nickCheck = document.getElementById("nickCheck");
          let inputNick = $('#nick').val();
          
          $.ajax({
             url : "${cpath}/login/nickCheck",
             data : {"user_nick" : inputNick},
             success : function(text){
                //console.log(text)
                if(text == true){
                   nickCheck.innerText = "중복된 닉네임입니다.";
                }else{
                   nickCheck.innerText = "사용 가능한 닉네임입니다.";
                }
             },
             error : function(e){
                console.log(e);
             }
          });
          
          
       });
    });
   
   $("#confirmPw").keyup(function(){
      const pwCheck = document.getElementById("pwCheck");
      let pw = $("#pw").val();
      let confirmPw = $("#confirmPw").val();
      
      if(pw == confirmPw){
         pwCheck.innerText = "비밀번호 확인 완료!";
         $("#signup").attr("disabled", false);
      }else{
         pwCheck.innerText = "비밀번호를 다시 입력해주세요";
         $("#signup").attr("disabled", true);
      }
      
   });
</script>
</body>
</html>