package com.smhrd.job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobController {

	@RequestMapping("/")
	public String maintest() {

		return "Main";
	}

	@RequestMapping("jobWrite.do")
	public String jobWrite() {
		return "JobWrite";
	}

}
