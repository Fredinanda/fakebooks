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



				<form action="" method="post"  enctype="multipart/form-data">
					<input type="hidden" value="${authMember.no}" name="no" id="no">


					사진 업로드 <input type="file" name="file" style="margin-left: 10px">
					<input type="submit" value="업로드" style="margin-left: px;">

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