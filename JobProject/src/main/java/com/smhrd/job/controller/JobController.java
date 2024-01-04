package com.smhrd.job.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.job.entity.Job;
import com.smhrd.job.service.JobService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class JobController {

	@Autowired
	private JobService jobService;

	@RequestMapping("/")
	public String maintest() {

		return "Main";
	}

	@RequestMapping("jobWrite.do")
	public void jobWrite(HttpServletRequest req) {

		Job job = new Job();

		job.setType(req.getParameter("type"));
		job.setThumbnail(req.getParameter("thumbnail"));
		job.setCompany(req.getParameter("company"));
		job.setField(req.getParameter("recruit_field"));
		job.setDuedate(req.getParameter("duedate"));
		job.setAcademic(req.getParameter("academic"));
		job.setArea(req.getParameter("area"));
		job.setSalary(req.getParameter("salary"));
		job.setRequirement(req.getParameter("requirement"));

		int row = jobService.jobWite(job);

		System.out.println("row 확인" + row);

	}

	@RequestMapping("/getAllJobs")
	public String getAllJobs(Model model) {
		List<Job> jobs = jobService.getAllJobs();
		model.addAttribute("jobs", jobs);

		return "Main";
	}

}
