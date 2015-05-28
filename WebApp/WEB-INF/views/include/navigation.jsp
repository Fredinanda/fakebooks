<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    	<div id="navigation">

			<div
				style="border: hidden; background-color: white; width: 230px; height: auto;
				margin-top: 10px">
				
				<p style="float: center; font-weight:bold">추천 친구</p>
				
				
				<table>
				
				<c:forEach items="${list}" var="vo">
					<tr>
						<td style="padding-top: 20px; padding-bottom: 20px">
						<img src="${vo.imagedir}" style="float: left; width: 30px; margin-top: 0px; margin-right: 5px; margin-bottom:-5px;">
						 ${vo.firstname } ${vo.lastname }
						</td>
						<td>
						<form action="">
								<input type="button" value="친구 추가">
						</form>
						</td>
					</tr>
					
				</c:forEach>
				</table>
				<div>
					<img src="/fakebooks/assets/images/Jrebel.PNG" style="width:230px">
				</div>
			</div>

		</div>