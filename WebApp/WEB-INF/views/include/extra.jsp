<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="extra">
	<p>
		
		
			<a href="/fakebooks/timeline/picture">
				<img src="${authMember.imagedir}" style="width: 120px; height: 120px"></a>
			
			
		
			
			
			
		<br>
		${authMember.firstname } ${authMember.lastname }<br> 
		<a href="/fakebooks/timeline/profile"
			style="float: left; text-decoration: none; color: black;
			font-weight:bold; margin:5px 0;">프로필편집</a><br>
		    
		    <div style="margin-top:15px; margin-bottom:10px">
		    <img src="/fakebooks/assets/images/Facebook.png"
			style="padding-right: 10px">시작하기
			</div>
			<div style="margin:10px 0">
			<img
			src="/fakebooks/assets/images/newsfeed.png"
			style="padding-right: 10px">뉴스피드 
			</div>
			<div style="margin:10px 0">
			<img
			src="/fakebooks/assets/images/mes.png" 
			style="padding-right: 10px">메세지
			</div>
			<div style="margin:10px 0">
			<img 
			src="/fakebooks/assets/images/find.png"
			style="padding-right: 10px">친구찾기
			</div>
	</p>
</div>