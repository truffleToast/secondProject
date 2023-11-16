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
		
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
 	
 	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
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
	<body class="is-preload">
 	<jsp:include page="../main/header.jsp"></jsp:include>



		<!-- 사이드바 -->
			<section id="header">
				<header>
					<span class="image avatar">
							<!-- 이미지 없을 때 기본 프로필
						<c:if test="">
						</c:if> -->
							<img src="${cpath}/resources/images/default.png" alt="" />
							<!-- 등록 프로필 사진 존재
						<c:if test="">
						</c:if> 
							<img src="${cpath}/resources/upload/" alt="" /> -->
					</span>
					<h1 id="logo"><a href="#">nickname</a></h1>
					<p>I got reprogrammed by a rogue AI<br />
					and now I'm totally cray</p>
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
			<div id="wrapper">


				<!-- Main -->
					
						<!-- header 이미지 -->
							<div id="main-head">
								<div class="image main" data-position="center">
									<img src="${cpath}/resources/images/banner.jpg" alt="" />
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
			            <h3>${mvo.nickname}님의 블로그 방문을 환영합니다</h3>
			            <p>방명록을 남겨보세요!</p>
			            <div class="btn-visit">
			               <a href='#' class='btn btn-sm btn-defalut' id="write">글 남기기</a>
			            </div>
			            <!-- 글쓰기(방명록) 작성 폼 -->
			         <div class="panel-body" id="visitTb" style="display : none">
			            <form id="frm">
			            <!--  로그인한 회원 아이디 정보도 함께 보내주기 for 회원제 게시판 -->
			            <input type="hidden" name="host" value="${mvo.username}">   
			            
			            <table class="table">
			               <thead>
			                  <tr>
			                     <th>Firstname</th>
			                     <th>Lastname</th>
			                  </tr>
			               </thead>
			               <tbody>
			                  <tr>
			                     <td>John</td>
			                     <td>john@example.com</td>
			                  </tr>
			                  <tr>
			                     <td>Mary</td>
			                     <td>mary@example.com</td>
			                  </tr>
			                  <tr>
			                     <td>July</td>
			                     <td>july@example.com</td>
			                  </tr>
			               </tbody>
			            </table>
			            </form>
			            </div>
			            
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
						<c:if test="${not empty mvo}">
								<div class="container" id="blogSetting">
								  	 <div class="formDiv">
									<h3>블로그 관리</h3>
									<!-- <p>Integer eu ante ornare amet commetus vestibulum blandit integer in curae ac faucibus integer non. Adipiscing cubilia elementum integer. Integer eu ante ornare amet commetus.</p> -->
									<div id="blog_setting">
										<form action="${cpath}/blogUpdate" method="post" enctype="multipart/form-data">
											<!--  <div class="row gtr-uniform"> -->
											<input type="hidden" name="username" value="${mvo.username}"/>
												<table class="table">
													<tr>
														<th>프로필 사진</th>
														<td>
															<div class="imgDiv"><img id ="profile" class="img-circle" src="${blog.blog_profile}"></div> <br>
															<div class="inputDiv">
																<label for="blog_profile" class="input-btn">사진변경</label>
																<input type="file" accept="image/*" id="blog_profile" name="blog_profile" onchange="readProfile(this)" style="display:none;"/>
																<label for="profileReset" class="input-btn">삭제</label>
																<input type="reset" id="profileReset" style="display:none;"/>
															</div>															
														</td>
													</tr>
													
													<tr>
														<th>블로그 제목</th>
														<td><input type="text" name="blog_title" id="blog_title" value="${blog.blog_title}" /></td>
														<!-- input hidden ? -->
													</tr>
													<tr>
														<th>소개글</th>
														<td><input type="text" name="blog_intro" id="blog_intro" value="${blog.blog_intro}" /></td>
													</tr>
													<tr>
														<th>헤더</th>
														<td>
															<div class="imgDiv"><img id ="blogHeader" src="${blog.blog_header}"> <br>
															<div class="headerDiv">
																<label for="blog_header" class="input-btn">사진변경</label>
																<input type="file" accept="image/*" id="blog_header" name="blog_header" onchange="readHeader(this)" style="display:none;"/>
																<label for="headerReset" class="input-btn">삭제</label>
																<input type="reset" id="headerReset" style="display:none;"/>
															</div>
															</div>																
														</td>
													</tr>
													<tr>
														<th>사이드바</th>
														<td><div class="color"><input type="color" id="blog_side" name="blog_side" value="${blog.blog_side}"></div></td>
													</tr>
													<tr>
														<th>배경</th>
														<td><div class="color"><input type="color" id="blog_body" name="blog_body" value="${blog.blog_body}"></div></td>
													</tr>
												</table>
													<div class="btnGroup">
														<input type="submit" value="수정">
														<input type="reset" value="취소">
													</div>
												</form>
											</div>
										</div>
								 	
													
													
											
										
									
								</div>
							</c:if>
						<!-- Five -->
						<!--
							<section id="five">
								<div class="container">
									<h3>Elements</h3>

									<section>
										<h4>Text</h4>
										<p>This is <b>bold</b> and this is <strong>strong</strong>. This is <i>italic</i> and this is <em>emphasized</em>.
										This is <sup>superscript</sup> text and this is <sub>subscript</sub> text.
										This is <u>underlined</u> and this is code: <code>for (;;) { ... }</code>. Finally, <a href="#">this is a link</a>.</p>
										<hr />
										<header>
											<h4>Heading with a Subtitle</h4>
											<p>Lorem ipsum dolor sit amet nullam id egestas urna aliquam</p>
										</header>
										<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.</p>
										<header>
											<h5>Heading with a Subtitle</h5>
											<p>Lorem ipsum dolor sit amet nullam id egestas urna aliquam</p>
										</header>
										<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing gravida odio porttitor sem non mi integer non faucibus ornare mi ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien lorem accumsan varius montes viverra nibh in adipiscing blandit tempus accumsan.</p>
										<hr />
										<h2>Heading Level 2</h2>
										<h3>Heading Level 3</h3>
										<h4>Heading Level 4</h4>
										<h5>Heading Level 5</h5>
										<h6>Heading Level 6</h6>
										<hr />
										<h5>Blockquote</h5>
										<blockquote>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan faucibus. Vestibulum ante ipsum primis in faucibus lorem ipsum dolor sit amet nullam adipiscing eu felis.</blockquote>
										<h5>Preformatted</h5>
										<pre><code>i = 0;

while (!deck.isInOrder()) {
    print 'Iteration ' + i;
    deck.shuffle();
    i++;
}

print 'It took ' + i + ' iterations to sort the deck.';</code></pre>
									</section>

									<section>
										<h4>Lists</h4>
										<div class="row">
											<div class="col-6 col-12-xsmall">
												<h5>Unordered</h5>
												<ul>
													<li>Dolor pulvinar etiam magna etiam.</li>
													<li>Sagittis adipiscing lorem eleifend.</li>
													<li>Felis enim feugiat dolore viverra.</li>
												</ul>
												<h5>Alternate</h5>
												<ul class="alt">
													<li>Dolor pulvinar etiam magna etiam.</li>
													<li>Sagittis adipiscing lorem eleifend.</li>
													<li>Felis enim feugiat dolore viverra.</li>
												</ul>
											</div>
											<div class="col-6 col-12-xsmall">
												<h5>Ordered</h5>
												<ol>
													<li>Dolor pulvinar etiam magna etiam.</li>
													<li>Etiam vel felis at lorem sed viverra.</li>
													<li>Felis enim feugiat dolore viverra.</li>
													<li>Dolor pulvinar etiam magna etiam.</li>
													<li>Etiam vel felis at lorem sed viverra.</li>
													<li>Felis enim feugiat dolore viverra.</li>
												</ol>
												<h5>Icons</h5>
												<ul class="icons">
													<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
													<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
													<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
													<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
													<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
													<li><a href="#" class="icon brands fa-tumblr"><span class="label">Tumblr</span></a></li>
												</ul>
											</div>
										</div>
										<h5>Actions</h5>
										<ul class="actions">
											<li><a href="#" class="button primary">Default</a></li>
											<li><a href="#" class="button">Default</a></li>
											<li><a href="#" class="button alt">Default</a></li>
										</ul>
										<ul class="actions small">
											<li><a href="#" class="button primary small">Small</a></li>
											<li><a href="#" class="button small">Small</a></li>
											<li><a href="#" class="button alt small">Small</a></li>
										</ul>
										<div class="row">
											<div class="col-3 col-6-medium col-12-xsmall">
												<ul class="actions stacked">
													<li><a href="#" class="button primary">Default</a></li>
													<li><a href="#" class="button">Default</a></li>
													<li><a href="#" class="button alt">Default</a></li>
												</ul>
											</div>
											<div class="col-3 col-6 col-12-xsmall">
												<ul class="actions stacked">
													<li><a href="#" class="button primary small">Small</a></li>
													<li><a href="#" class="button small">Small</a></li>
													<li><a href="#" class="button alt small">Small</a></li>
												</ul>
											</div>
											<div class="col-3 col-6-medium col-12-xsmall">
												<ul class="actions stacked">
													<li><a href="#" class="button primary fit">Default</a></li>
													<li><a href="#" class="button fit">Default</a></li>
													<li><a href="#" class="button alt fit">Default</a></li>
												</ul>
											</div>
											<div class="col-3 col-6-medium col-12-xsmall">
												<ul class="actions stacked">
													<li><a href="#" class="button primary small fit">Small</a></li>
													<li><a href="#" class="button small fit">Small</a></li>
													<li><a href="#" class="button alt small fit">Small</a></li>
												</ul>
											</div>
										</div>
									</section>

									<section>
										<h4>Table</h4>
										<h5>Default</h5>
										<div class="table-wrapper">
											<table>
												<thead>
													<tr>
														<th>Name</th>
														<th>Description</th>
														<th>Price</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Item One</td>
														<td>Ante turpis integer aliquet porttitor.</td>
														<td>29.99</td>
													</tr>
													<tr>
														<td>Item Two</td>
														<td>Vis ac commodo adipiscing arcu aliquet.</td>
														<td>19.99</td>
													</tr>
													<tr>
														<td>Item Three</td>
														<td> Morbi faucibus arcu accumsan lorem.</td>
														<td>29.99</td>
													</tr>
													<tr>
														<td>Item Four</td>
														<td>Vitae integer tempus condimentum.</td>
														<td>19.99</td>
													</tr>
													<tr>
														<td>Item Five</td>
														<td>Ante turpis integer aliquet porttitor.</td>
														<td>29.99</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<td colspan="2"></td>
														<td>100.00</td>
													</tr>
												</tfoot>
											</table>
										</div>

										<h5>Alternate</h5>
										<div class="table-wrapper">
											<table class="alt">
												<thead>
													<tr>
														<th>Name</th>
														<th>Description</th>
														<th>Price</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Item One</td>
														<td>Ante turpis integer aliquet porttitor.</td>
														<td>29.99</td>
													</tr>
													<tr>
														<td>Item Two</td>
														<td>Vis ac commodo adipiscing arcu aliquet.</td>
														<td>19.99</td>
													</tr>
													<tr>
														<td>Item Three</td>
														<td> Morbi faucibus arcu accumsan lorem.</td>
														<td>29.99</td>
													</tr>
													<tr>
														<td>Item Four</td>
														<td>Vitae integer tempus condimentum.</td>
														<td>19.99</td>
													</tr>
													<tr>
														<td>Item Five</td>
														<td>Ante turpis integer aliquet porttitor.</td>
														<td>29.99</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<td colspan="2"></td>
														<td>100.00</td>
													</tr>
												</tfoot>
											</table>
										</div>
									</section>

									<section>
										<h4>Buttons</h4>
										<ul class="actions">
											<li><a href="#" class="button primary">Primary</a></li>
											<li><a href="#" class="button">Default</a></li>
											<li><a href="#" class="button alt">Alternate</a></li>
										</ul>
										<ul class="actions">
											<li><a href="#" class="button primary large">Large</a></li>
											<li><a href="#" class="button">Default</a></li>
											<li><a href="#" class="button alt small">Small</a></li>
										</ul>
										<ul class="actions fit">
											<li><a href="#" class="button primary fit">Fit</a></li>
											<li><a href="#" class="button fit">Fit</a></li>
											<li><a href="#" class="button alt fit">Fit</a></li>
										</ul>
										<ul class="actions fit small">
											<li><a href="#" class="button primary fit small">Fit + Small</a></li>
											<li><a href="#" class="button fit small">Fit + Small</a></li>
											<li><a href="#" class="button alt fit small">Fit + Small</a></li>
										</ul>
										<ul class="actions">
											<li><a href="#" class="button primary icon solid fa-download">Icon</a></li>
											<li><a href="#" class="button icon solid fa-download">Icon</a></li>
											<li><a href="#" class="button alt icon solid fa-check">Icon</a></li>
										</ul>
										<ul class="actions">
											<li><span class="button primary disabled">Primary</span></li>
											<li><span class="button disabled">Default</span></li>
											<li><span class="button alt disabled">Alternate</span></li>
										</ul>
									</section>

									<section>
										<h4>Form</h4>
										<form method="post" action="#">
											<div class="row gtr-uniform">
												<div class="col-6 col-12-xsmall">
													<input type="text" name="demo-name" id="demo-name" value="" placeholder="Name" />
												</div>
												<div class="col-6 col-12-xsmall">
													<input type="email" name="demo-email" id="demo-email" value="" placeholder="Email" />
												</div>
												<div class="col-12">
													<select name="demo-category" id="demo-category">
														<option value="">- Category -</option>
														<option value="1">Manufacturing</option>
														<option value="1">Shipping</option>
														<option value="1">Administration</option>
														<option value="1">Human Resources</option>
													</select>
												</div>
												<div class="col-4 col-12-medium">
													<input type="radio" id="demo-priority-low" name="demo-priority" checked>
													<label for="demo-priority-low">Low Priority</label>
												</div>
												<div class="col-4 col-12-medium">
													<input type="radio" id="demo-priority-normal" name="demo-priority">
													<label for="demo-priority-normal">Normal Priority</label>
												</div>
												<div class="col-4 col-12-medium">
													<input type="radio" id="demo-priority-high" name="demo-priority">
													<label for="demo-priority-high">High Priority</label>
												</div>
												<div class="col-6 col-12-medium">
													<input type="checkbox" id="demo-copy" name="demo-copy">
													<label for="demo-copy">Email me a copy of this message</label>
												</div>
												<div class="col-6 col-12-medium">
													<input type="checkbox" id="demo-human" name="demo-human" checked>
													<label for="demo-human">I am a human and not a robot</label>
												</div>
												<div class="col-12">
													<textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
												</div>
												<div class="col-12">
													<ul class="actions">
														<li><input type="submit" value="Send Message" /></li>
														<li><input type="reset" value="Reset" class="alt" /></li>
													</ul>
												</div>
											</div>
										</form>
									</section>

									<section>
										<h4>Image</h4>
										<h5>Fit</h5>
										<span class="image fit"><img src="images/banner.jpg" alt="" /></span>
										<div class="box alt">
											<div class="row gtr-50 gtr-uniform">
												<div class="col-4"><span class="image fit"><img src="images/pic01.jpg" alt="" /></span></div>
												<div class="col-4"><span class="image fit"><img src="images/pic02.jpg" alt="" /></span></div>
												<div class="col-4"><span class="image fit"><img src="images/pic03.jpg" alt="" /></span></div>
												<div class="col-4"><span class="image fit"><img src="images/pic02.jpg" alt="" /></span></div>
												<div class="col-4"><span class="image fit"><img src="images/pic03.jpg" alt="" /></span></div>
												<div class="col-4"><span class="image fit"><img src="images/pic01.jpg" alt="" /></span></div>
												<div class="col-4"><span class="image fit"><img src="images/pic03.jpg" alt="" /></span></div>
												<div class="col-4"><span class="image fit"><img src="images/pic01.jpg" alt="" /></span></div>
												<div class="col-4"><span class="image fit"><img src="images/pic02.jpg" alt="" /></span></div>
											</div>
										</div>
										<h5>Left &amp; Right</h5>
										<p><span class="image left"><img src="images/avatar.jpg" alt="" /></span>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent.</p>
										<p><span class="image right"><img src="images/avatar.jpg" alt="" /></span>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent tincidunt felis sagittis eget. tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan eu faucibus. Integer ac pellentesque praesent.</p>
									</section>

								</div>
							</section>
						-->

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
 
    	
    	
    	    // 블로그 관리 페이지 띄우기
    	    $(document).ready(function(){
    	      // 페이지가 열릴 때 바로 실행되게 만들어주기
    	      // HTML이 다 로딩되고나서 아래 코드 실행해라
    	      loadList();
    	      
    	   });
    	    
    	   
    	   
    	   function loadList(){
    	      // 비동기 방식으로 게시글 리스트 가져오기
    	      // ajax : 요청URL, 어떻게 데이터 받을지, 요청방식 등 ... -> 객체형태로 : {}(JSON 형식)
    	      // success 시 함수(makeView)를 실행 : ajax로 요청하고 나서 결과를 받아와서 끝나고(돌아와서) 실행하는 함수 -> 콜백함수
    	      var id = "${mvo.username}";
    	      
    	      console.log(id);
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
    	          listHtml += "<h4 class='card-title title'>" +obj.visitor + "</h4>";
    	          listHtml += "<p class='card-text'>" + obj.content + "</p>";
    	          listHtml += "<br>";
    	          listHtml += "<p class='indate'>"+obj.indate + "</p>";
    	          listHtml += "<a href='#' class='btn btn-sm btn-defalut'>구경가기</a>";
    	          listHtml += "</div></div>";
    	         
    	      });

    	      $("#visitList").html(listHtml);
    	      
    	   }
    	   
    	   $("#write").click(function(){
    	      if($('#visitTb').css("display") == "none"){
    	         $('#visitTb').css("display", "block");
    	      }else if($('#visitTb').css("display") == "block"){
    	         $('#visitTb').css("display", "none");
    	      }
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
    	      var id = "${mvo.username}";
    	      
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
    	          listHtml += "<h4 class='card-title title'>" +obj.visitor + "</h4>";
    	          listHtml += "<p class='card-text'>" + obj.content + "</p>";
    	          listHtml += "<br>";
    	          listHtml += "<p class='indate'>"+obj.indate + "</p>";
    	          listHtml += "<a href='#' class='btn btn-sm btn-defalut'>구경가기</a>";
    	          listHtml += "</div></div>";
    	         
    	      });

    	      $("#visitList").html(listHtml);
    	      
    	   }
    	   
    	   $("#write").click(function(){
    	      if($('#visitTb').css("display") == "none"){
    	         $('#visitTb').css("display", "block");
    	      }else if($('#visitTb').css("display") == "block"){
    	         $('#visitTb').css("display", "none");
    	      }
    	   });
    	   
    	   
    	   function edit() {
			
    		   window.location.href = '/blog/edit';
    		   
		}
    	   
    	   
    	   
    	   
    	</script>
    	

	

	</body>
</html>