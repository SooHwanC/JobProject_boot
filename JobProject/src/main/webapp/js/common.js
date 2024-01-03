$(document).ready(function() {
	$('ul.main_content_list li').click(function() {
		$('ul.main_content_list li.clicked').removeClass('clicked');
		$(this).addClass('clicked');

		// 클릭된 li 태그의 data-section 속성 값을 가져옴
		var section = $(this).attr('data-section');

		// 해당 섹션으로 부드럽게 스크롤링
		$('html, body').animate({
			scrollTop: $('#' + section).offset().top
		}, 'slow');
	});


	$('ul.main_content_list_float li').click(function() {
		$('ul.main_content_list_float li.clicked').removeClass('clicked');
		$(this).addClass('clicked');

		// 클릭된 li 태그의 data-section 속성 값을 가져옴
		var section = $(this).attr('data-section');

		console.log("섹션확인", section);

		// 해당 섹션으로 부드럽게 스크롤링
		$('html, body').animate({
			scrollTop: $('#' + section).offset().top
		}, 'slow');
	});


});


/*$(document).ready(function() {
	$(window).scroll(function(event) {
		var scrollHeight = $(this).scrollTop();
		console.log("현재 스크롤 위치:", scrollHeight);
	});
});*/

$(document).ready(function() {
	$(window).scroll(function(event) {
		var scrollHeight = $(this).scrollTop();
		if (scrollHeight >= 190) {
			$('.main_content_list_float').show(); // 스크롤 높이가 250 이상이면 보이기
		} else {
			$('.main_content_list_float').hide(); // 그 외에는 숨기기
		}
	});
});

$(document).ready(function() {
	$('.job_item').hover(function() {
		$(this).find('.job_info').hide();
		$(this).find('.job_detail').show();
	}, function() {
		$(this).find('.job_detail').hide();
		$(this).find('.job_info').show();
	});
});


// 모달 관련

$(".job_item").on("click", function() {
	console.log("클릭함");
	$("#modal").css("display", "block");
});

$("#modal_close_btn").on("click", function() {
	$("#modal").css("display", "none");
});

$(".write_btn").on("click", function() {
	console.log("클릭함");
	$("#modal2").css("display", "block");
});

$("#modal_close_btn2").on("click", function() {
	$("#modal2").css("display", "none");
});


// 모달 관련

$('.job_item_sramin').on('click', function() {
	// 팝업의 가로, 세로 크기
	var popupWidth = 1000;
	var popupHeight = 800;

	// 화면의 가운데를 계산
	var leftPosition = (window.screen.width - popupWidth) / 2;
	var topPosition = (window.screen.height - popupHeight) / 2;

	// 팝업 창 열기
	window.open('https://www.saramin.co.kr/zf_user/jobs/relay/pop-view?rec_idx=38563977&t_ref=main&t_ref_content=platinum_fix_expand', '_blank', 'width=' + popupWidth + ', height=' + popupHeight + ', left=' + leftPosition + ', top=' + topPosition);
});



