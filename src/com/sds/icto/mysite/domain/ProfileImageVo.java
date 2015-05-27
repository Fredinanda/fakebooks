package com.sds.icto.mysite.domain;

public class ProfileImageVo {
	
	public static final String IMAGE_DIR = "/web/upload_images/";
	private String id;
	private String contentType;
	private Long contentLength;
	private String fileName;
	
	
	
	public ProfileImageVo(String id, String contentType, Long contentLength,
			String fileName) {
		this.id = id;
		this.contentType = contentType;
		this.contentLength = contentLength;
		this.fileName = fileName;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public Long getContentLength() {
		return contentLength;
	}
	public void setContentLength(Long contentLength) {
		this.contentLength = contentLength;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public static String getImageDir() {
		return IMAGE_DIR;
	}
	
	
	
	
	
}
