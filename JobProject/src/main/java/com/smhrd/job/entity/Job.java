package com.smhrd.job.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Job {

	private int job_num;
	private String type;
	private String thumbnail;
	private String company;
	private String field;
	private String duedate;
	private String academic;
	private String area;
	private String salary;
	private String requirement;
	private String imgpath;
	private String url;

}
