package com.smhrd.job.service;

import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.job.entity.Job;
import com.smhrd.job.mapper.JobMapper;

@Service
public class JobService {

	@Autowired
	private JobMapper jobMapper;

	public int jobWrite(Job job) {
		int row = jobMapper.jobWrite(job);
		return row;
	}

	public List<Job> getAllJobs() {
		return jobMapper.getAllJobs();
	}

	public void saveJobsFromExcel(MultipartFile file) throws IOException {
		// 엑셀 파일 열기
		Workbook workbook = new XSSFWorkbook(file.getInputStream());
		// 엑셀 시트 선택
		Sheet sheet = workbook.getSheetAt(0); 

		// 첫번째 행 스킵
		for (int i = 1; i <= sheet.getLastRowNum(); i++) {
			Row row = sheet.getRow(i);
			if (row != null) {
				String type = row.getCell(0).getStringCellValue();
				String thumbnail = row.getCell(1).getStringCellValue();
				String company = row.getCell(2).getStringCellValue();
				String field = row.getCell(3).getStringCellValue();
				String duedate = row.getCell(4).getStringCellValue();
				String academic = row.getCell(5).getStringCellValue();
				String area = row.getCell(6).getStringCellValue();
				String salary = row.getCell(7).getStringCellValue();
				String requirement = row.getCell(8).getStringCellValue();
				String url = row.getCell(9).getStringCellValue();

				Job job = new Job();
				job.setType(type);
				job.setThumbnail(thumbnail);
				job.setCompany(company);
				job.setField(field);
				job.setDuedate(duedate);
				job.setAcademic(academic);
				job.setArea(area);
				job.setSalary(salary);
				job.setRequirement(requirement);
				job.setUrl(url);

				jobMapper.jobWrite(job); 
			}
		}

		workbook.close(); // Workbook 닫기
	}

}
