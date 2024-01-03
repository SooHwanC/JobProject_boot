package com.smhrd.job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class JobController {

	@RequestMapping("/")
	public String maintest() {

		return "Main";
	}

	@RequestMapping("jobWrite.do")
	public void jobWrite(HttpServletRequest request) {
		String selectedValue = request.getParameter("selected"); // select 태그의 선택된 값
		String company = request.getParameter("company"); // 기업 입력값
		String recruitField = request.getParameter("recruit_field"); // 모집분야 입력값
		String deadLine = request.getParameter("dead_line"); // 모집기한 입력값
		// 이하 다른 input 요소들에 대한 값들을 위와 같은 방식으로 받아올 수 있습니다.

		// 받아온 값들을 출력해봅시다. (여기서는 간단한 System.out.println을 사용)
		System.out.println("선택된 값: " + selectedValue);
		System.out.println("기업: " + company);
		System.out.println("모집분야: " + recruitField);
		System.out.println("모집기한: " + deadLine);

	}

}
