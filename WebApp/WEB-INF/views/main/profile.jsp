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
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
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
			
			</table>	
			<input type="submit" value="업데이트" style="margin-left: 350px;">
			</form>	
						
		
	
			</div>

	


		</div>
		
		
		<c:import url="/WEB-INF/views/include/navigation.jsp"></c:import>

			<c:import url="/WEB-INF/views/include/extra.jsp"></c:import>

		<div id="footer">
			<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		</div>
	</div>
</body>
</html>