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

	$('.job_item_sramin').hover(function() {
		$(this).find('.job_info').hide();
		$(this).find('.job_detail').show();
	}, function() {
		$(this).find('.job_detail').hide();
		$(this).find('.job_info').show();
	});
});


// 모달 관련

$(".job_item").on("click", function() {
	var imgPath = $(this).find(".job_item_img_hide img").attr("src");
	$('#modal .modal_content img').attr('src', imgPath);
	$("#modal").css("display", "block");
});

$(".close_svg").on("click", function() {
	$("#modal").css("display", "none");
});

$(".write_btn").on("click", function() {
	console.log("클릭함");
	$("#modal2").css("display", "block");
});

$(".close_svg").on("click", function() {
	$("#modal2").css("display", "none");
});


// 모달 관련

/*$('.job_item_sramin').on('click', function() {
	// 팝업의 가로, 세로 크기
	var popupWidth = 1000;
	var popupHeight = 800;

	// 화면의 가운데를 계산
	var leftPosition = (window.screen.width - popupWidth) / 2;
	var topPosition = (window.screen.height - popupHeight) / 2;

	// 팝업 창 열기
	window.open('https://www.saramin.co.kr/zf_user/jobs/relay/pop-view?rec_idx=38563977&t_ref=main&t_ref_content=platinum_fix_expand', '_blank', 'width=' + popupWidth + ', height=' + popupHeight + ', left=' + leftPosition + ', top=' + topPosition);
});*/

$(document).ready(function() {
	$(".job_item_sramin").on("click", function() {
		var url = $(this).data("url");

		// 팝업의 가로, 세로 크기
		var popupWidth = 1000;
		var popupHeight = 800;

		// 화면의 가운데를 계산
		var leftPosition = (window.screen.width - popupWidth) / 2;
		var topPosition = (window.screen.height - popupHeight) / 2;

		window.open(url, '_blank', 'width=' + popupWidth + ', height=' + popupHeight + ', left=' + leftPosition + ', top=' + topPosition);
	});
});



$(document).ready(function() {
	// 초기 로드 시 숨김 처리
	$('.form_image').show();
	$('.form_url').hide();
	//$('form[action="uploadExcel"]').hide();

	// select 변경 시 이벤트 처리
	$('select[name="type"]').change(function() {
		var selectedValue = $(this).val();

		if (selectedValue === 'smhrd') {
			//$('form[action="uploadExcel"]').hide();
			$('.form_url').hide();
			$('.form_image').show();
		} else if (selectedValue === 'saramin' || selectedValue === 'jabko') {
			$('.form_image').hide();
			//$('form[action="uploadExcel"]').show();
			$('.form_url').show();

		}
	});
});

$("#file").on('change', function() {
	var fileName = $("#file").val();
	$(".upload-name").val(fileName);
});



