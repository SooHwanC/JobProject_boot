package com.smhrd.job.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.job.entity.Job;
import com.smhrd.job.mapper.JobMapper;

@Service
public class JobService {

	@Autowired
	private JobMapper jobMapper;

	public int jobWite(Job job) {
		int row = jobMapper.jobWite(job);
		return row;
	}

	public List<Job> getAllJobs() {
		return jobMapper.getAllJobs();
	}

}
