package com.smhrd.job.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.smhrd.job.entity.Job;

@Mapper
public interface JobMapper {

	@Insert("insert into job (job_num, type, thumbnail, company, field, duedate, academic, area, salary, requirement, imgpath) values (default, #{type}, #{thumbnail}, #{company}, #{field}, #{duedate}, #{academic}, #{area}, #{salary}, #{requirement}, #{imgpath})")
	public int jobWrite(Job job);

	@Select("select * from job")
	public List<Job> getAllJobs();

}
