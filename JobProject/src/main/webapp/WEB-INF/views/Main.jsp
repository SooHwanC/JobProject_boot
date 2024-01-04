<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="css/reset.css" rel="stylesheet" />
<link href="css/main.css" rel="stylesheet" />
<body>
	<div class="wrap">
		<div class="nav_block">
			<img src="img/smhrd.png" />
			<div>
				<ul>
					<li>
						<span>로그인</span>
					</li>
					<li>
						<span>회원가입</span>
					</li>
					<li>
						<span class="write_btn">글쓰기</span>
					</li>
				</ul>
			</div>
		</div>
		<div class="main_block">
			<section class="main_title">
				<h1>채용공고</h1>
			</section>
			<section class="main_content">
				<ul class="main_content_list">
					<li data-section="section1">
						<p>취업연계</p>
					</li>
					<li data-section="section2">
						<p>사람인</p>
					</li>
					<li data-section="section3">
						<p>잡코리아</p>
					</li>
				</ul>

				<ul class="main_content_list_float">
					<li data-section="section1">
						<p>취업연계</p>
					</li>
					<li data-section="section2">
						<p>사람인</p>
					</li>
					<li data-section="section3">
						<p>잡코리아</p>
					</li>
				</ul>
				<div class="main_content_svg">
					<svg xmlns="http://www.w3.org/2000/svg" class="bi bi-book" viewBox="0 0 16 16">
  						<path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811V2.828zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492V2.687zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783z" />
					</svg>

					<svg xmlns="http://www.w3.org/2000/svg" class="bi bi-calendar3" viewBox="0 0 16 16">
  						<path d="M14 0H2a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zM1 3.857C1 3.384 1.448 3 2 3h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H2c-.552 0-1-.384-1-.857V3.857z" />
  						<path d="M6.5 7a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
					</svg>

				</div>
			</section>

			<!-- 모달 -->
			<div id="modal">

				<div class="modal_content">
					<button type="button" id="modal_close_btn">닫기</button>
					<img src="img/sicc.png" />
				</div>

				<div class="modal_layer"></div>
			</div>
			<!-- 모달 -->

			<!-- 글쓰기모달 -->
			<div id="modal2">
				<div>
					<form action="jobWrite.do" method="post">
						<div>
							<select name="type">
								<option value="smhrd">취업연계</option>
								<option value="saramin">사람인</option>
								<option value="jabko">잡코리아</option>
							</select>
						</div>
						<div class="form_radio">
							<div></div>
							<input type="radio" name="thumbnail" value="front" id="radio_front" checked> <label for="radio_front"> <img src="img/front.PNG" /></label> <input type="radio" name="thumbnail" value="back" id="radio_back"> <label for="radio_back"> <img src="img/back.PNG" /></label>
						</div>
						<div class="form_input">
							<div>
								<label for="company">기업</label>
							</div>
							<input type="text" name="company">
						</div>
						<div class="form_input">
							<div>
								<label for="recruit_field">모집분야</label>
							</div>
							<input type="text" name="recruit_field">
						</div>
						<div class="form_date">
							<div>
								<label for="dead_line">모집기한</label>
							</div>
							<input type="date" name="duedate">
						</div>
						<div>
							<h2>Detail</h2>
						</div>
						<div class="form_input">
							<div>
								<label for="academic">학력</label>
							</div>
							<input type="text" name="academic">
						</div>
						<div class="form_input">
							<div>
								<label for="area">근무지역</label>
							</div>
							<input type="text" name="area">
						</div>
						<div class="form_input">
							<div>
								<label for="salary">연봉</label>
							</div>
							<input type="text" name="salary">
						</div>
						<div class="form_textarea">
							<div>
								<label for="requirement">자격요건</label>
							</div>
							<textarea name="requirement" rows="3"></textarea>
						</div>
						<div>
							<button type="submit">작성완료</button>
						</div>

					</form>
				</div>
				<div class="modal_layer"></div>
			</div>
			<!-- 모달 -->

			<section id="section1">
				<h2>취업연계</h2>
				<div class="job_wrapper">
					<div class="job_item">
						<div class="job_info">
							<img src="img/front.PNG" />
							<div>
								<p>쌍용정보통신</p>
								<p>우정사업정보센터 우편물류시스템 개발</p>
								<p>D-5</p>
							</div>
						</div>
						<div class="job_detail">
							<p>학력 : 무관</p>
							<p>지역 : 나주</p>
							<p>연봉 : 3,000만원</p>
							<p>자격요건 : 자바, 자바스크립트 가능자</p>
						</div>
					</div>
					<c:forEach items="${jobs}" var="job">
						<div class="job_item">
							<div class="job_info">
								<img src="img/${job.thumbnail }.PNG" />
								<div>
									<p>${job.company}</p>
									<p>${job.field} </p>
									<p>${job.duedate }</p>
								</div>
							</div>
							<div class="job_detail">
								<p>학력 : ${job.academic }</p>
								<p>지역 : ${job.area }</p>
								<p>연봉 : ${job.salary }</p>
								<p>자격요건 : ${job.requirement }</p>
							</div>
						</div>

					</c:forEach>



				</div>
			</section>
			<section id="section2">
				<h2>사람인</h2>
				<div class="job_wrapper">
					<div class="job_item_sramin">
						<div class="job_info">
							<img src="img/front.PNG" />
							<div>
								<p>우아한형제들</p>
								<p>부문별 경력/신입 인재영입</p>
								<p>D-5</p>
							</div>
						</div>
						<div class="job_detail">
							<h1>Detail</h1>
						</div>
					</div>

				</div>
			</section>
			<section id="section3">
				<h2>잡코리아</h2>
				<div class="job_wrapper">
					<div class="job_item">
						<div class="job_info">
							<img src="img/front.PNG" />
							<div>
								<p>우아한형제들</p>
								<p>부문별 경력/신입 인재영입</p>
								<p>D-5</p>
							</div>
						</div>
						<div class="job_detail">
							<h1>Detail</h1>
						</div>
					</div>

				</div>
			</section>
		</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/common.js"></script>
</html>