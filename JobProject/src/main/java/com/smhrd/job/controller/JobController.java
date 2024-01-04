package com.smhrd.job.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public void jobWrite(@RequestParam("imageFile") MultipartFile file, HttpServletRequest req) {

		Job job = new Job();

		if (!file.isEmpty()) {
			try {
				// 이미지를 서버에 저장
				String uploadsDir = "/img/"; // 이미지를 저장할 경로
				String realPathtoUploads = req.getServletContext().getRealPath(uploadsDir);

				if (!new File(realPathtoUploads).exists()) {
					new File(realPathtoUploads).mkdir();
				}

				String orgName = file.getOriginalFilename();
				String uuid = UUID.randomUUID().toString(); // UUID 생성
				String fileName = uuid + "_" + orgName; // UUID와 원래 파일명 결합
				String filePath = realPathtoUploads + fileName;
				File dest = new File(filePath);
				file.transferTo(dest);

				// DB에 경로와 이름 저장
				String dbPath = req.getContextPath() + "/img/" + fileName; // DB에 저장할 경로
				System.out.println("dbPath 확인" + dbPath);
				job.setImgpath(dbPath); // Job 객체에 이미지 경로 저장

			} catch (IOException e) {
				e.printStackTrace();
			}
		}

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

	}

	@RequestMapping("/getAllJobs")
	public String getAllJobs(Model model) {
		List<Job> jobs = jobService.getAllJobs();
		model.addAttribute("jobs", jobs);

		return "Main";
	}

	@RequestMapping(value = "/uploadExcel", method = RequestMethod.POST)
	public String uploadExcel(@RequestParam("file") MultipartFile file) {
		if (!file.isEmpty()) {
			try {

				jobService.saveJobsFromExcel(file);
				return "redirect:/successPage";
			} catch (IOException e) {
				e.printStackTrace();
				return "redirect:/errorPage"; // 에러 페이지로 리다이렉트
			}
		} else {
			// 파일이 비어있을 경우 처리하는 로직
			return "redirect:/emptyFilePage"; // 빈 파일 처리 페이지로 리다이렉트
		}
	}

}
