<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/reset.css" rel="stylesheet" />
<link href="css/jobwrite.css" rel="stylesheet" />
</head>
<body>
	<div class="wrap">
		<section class="nav_block">
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
						<a href="jobWrite.do"> <span>글쓰기</span>
						</a>
					</li>
				</ul>
			</div>
		</section>
		<section>
			<form action="">
				<div class="form_radio">
					<div></div>
					<input type="radio" name="front" id="radio_front" checked>
					<label for="radio_front"> <img src="img/front.PNG" /></label>
					<input type="radio" name="back" id="radio_back">
					<label for="radio_back"> <img src="img/back.PNG" /></label>
				</div>
				<div class="form_input">
					<div>
						<label for="company">기업</label>
					</div>
					<input type="text" id="company">
				</div>
				<div class="form_input">
					<div>
						<label for="recruit_field">모집분야</label>
					</div>
					<input type="text" id="recruit_field">
				</div>
				<div class="form_date">
					<div>
						<label for="dead_line">모집기한</label>
					</div>
					<input type="date" id="dead_line">
				</div>
				<div>
					<h2>Detail</h2>
				</div>
				<div class="form_input">
					<div>
						<label for="academic">학력</label>
					</div>
					<input type="text" id="academic">
				</div>
				<div class="form_input">
					<div>
						<label for="area">근무지역</label>
					</div>
					<input type="text" id="area">
				</div>
				<div class="form_input">
					<div>
						<label for="salary">연봉</label>
					</div>
					<input type="text" id="salary">
				</div>
				<div class="form_textarea">
					<div>
						<label for="requirement">자격요건</label>
					</div>
					<textarea id="requirement" rows="3"></textarea>
				</div>

			</form>
		</section>

	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</html>