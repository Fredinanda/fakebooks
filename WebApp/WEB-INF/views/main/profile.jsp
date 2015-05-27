<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% pageContext.setAttribute("newLineChar", "\n"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Fakebook</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="generator" content="HAPedit 3.1">



<link href="/fakebooks/assets/css/main.css" rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.0.js"></script>


</head>
<body>

	<div id="header">
		<img src="/fakebooks/assets/images/fww.png"
			style="margin-left: 40px; margin-top: 10px; float: left;">

		<form action="">

			<input type="text" value="친구찾기" size="40"
				style="float: left; margin-left: 10px; margin-top: 10px"> <input
				type="image" src="/fakebooks/assets/images/find-16.png"
				style="float: left; margin-left: 5px; margin-top: 12px;">

		</form>
		<div style="float: left; margin-left: 25%">
			<a href="" style="float: left; text-decoration: none; color: white;">
				<img src="/fakebooks/assets/images/uknown.jpg" style="width: 20px; height: 20px"> ${authMember.lastname }</a> 
				<a href=""	style="float: left; text-decoration: none; color: white;">홈</a> 
				<a href="" style="float: left; text-decoration: none; color: white;">친구
				찾기</a>
		</div>
	</div>
	<div id="container">
		<div id="wrapper">

			<div id="content">
			<form action="" method="post">
				<input type="hidden" value= "${authMember.no}" name="no" id="no">

			
			
			<table>
			
			<tr>
				<td>직장 or 학교  </td>
				<td><input type="text" value=" ${authMember.workplace }" name="workplace" id="workplace" size="45" style="border: 0 none #fff;  float: left; margin-left: 10px;"></td>
	
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" value=" ${authMember.address }" name="address" id="address"  size="45" style="border: 0 none #fff; float: left; margin-left: 10px;"></td>
			
			</tr>
				<tr>
				<td>간단소개</td>
				<td>
				
				<textarea name="comments" id="comments" rows="6" style=" margin-left: 10px; line-height: 1; overflow:visible; ; font-size: 120%; width: 340px;">
${authMember.comments}</textarea>
				</td>
			
			</tr>
			
		
			<tr>
			<td>사진 업로드</td>
			<td><input type="file" name="file" style="margin-left: 10px"> </td>
			</tr>
			</table>	
			<input type="submit" value="업데이트" style="margin-left: 350px;">
			</form>
			</div>

		</div>
		<div id="navigation">

			<div
				style="border: hidden; background-color: white; width: 200px; height: auto;">
				<p style="float: left;">추천 친구</p>
				<p style="float: left; margin-left: 60px">모두보기</p>

				<table>
					<tr>
						<td style="padding-top: 20px; padding-bottom: 20px">[사진] 친구
							이름<br>
							<form action="">
								<input type="button" value="친구 추가 하기">
							</form>
						</td>
					</tr>


				</table>

			</div>

		</div>

		<div id="extra">
			<p>
				<img src="/fakebooks/assets/images/uknown.jpg" style="width: 120px; height: 120px"><br> ${authMember.firstname } ${authMember.lastname }<br> 프로필편집<br> <br> <img
					src="/fakebooks/assets/images/Facebook.png" style="padding-right: 10px">시작하기<br>
				<img src="/fakebooks/assets/images/newsfeed.png"
					style="padding-right: 10px">뉴스피드<br> <img
					src="/fakebooks/assets/images/mes.png" style="padding-right: 10px">메세지<br>
				<img src="/fakebooks/assets/images/find.png" style="padding-right: 10px">친구찾기<br>


			</p>
		</div>

		<div id="footer">
			<p>made by 이은호, 제민재</p>
		</div>
	</div>
</body>
</html>