<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


	<div id="header">
		<div class="logo"><a href="/fakebooks/timeline"><img src="/fakebooks/assets/images/logo.png"></a></div>

		<form action="">

			<input type="text" value="친구찾기" size="40"
				style="float: left; margin-left: 10px; margin-top: 10px"> <input
				type="image" src="/fakebooks/assets/images/find-16.png"
				style="float: left; margin-left: 0px; margin-top: 11px; height: 19px; width: 19px;">

		</form>
		<div style="float:left; margin-left: 25%; width:200px">
			<div class="mypic" style="float:left; width:30px; margin-right:0px">
			
			<a href="/fakebooks/timeline/picture"><img src="/fakebooks/assets/id${authMember.no}.jpg"></a>
			
			</div>
			<a href="" style="float:left;text-decoration: none; color: white;"> ${authMember.lastname }</a> 
			<a href="/fakebooks/timeline"	style="float:left; text-decoration: none; color: white; margin-left: 20px">홈</a> 
			<a href="" style="float:left; text-decoration: none; color: white; margin-left: 10px">친구 추천</a>
		</div>
		<div style="float: right; margin-right: 15px">
			<a href="/fakebooks/member/logout" style="text-decoration:none">로그아웃</a>
		</div>
	</div>
	