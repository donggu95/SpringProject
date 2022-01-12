package com.koreait.matjip.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Restrt {
	private int restrt_id;
	private int sigun_id;
	private Category category;
	private String RESTRT_NM;
	private String restrt_re;
	private String REFINE_ROADNM_ADDR;
	private MultipartFile[] imgFiles; //다중파일 업로드 때문에 배열로 준비해놓자
	
	/*
	 * private int restrt_id; private int sigun_id; private int category_id; private
	 * String RESTRT_NM; private String REFINE_ROADNM_ADDR;
	 */
}
