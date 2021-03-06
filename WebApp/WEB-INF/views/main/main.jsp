<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% pageContext.setAttribute("newLineChar", "\n"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Fakebook</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="generator" content="HAPedit 3.1">



<link href="/fakebooks/assets/css/main.css" rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script>
	(function($) {

		$.fn.autogrow = function(options) {
			return this
					.filter('textarea')
					.each(
							function() {
								var self = this;
								var $self = $(self);
								var minHeight = $self.height();
								var noFlickerPad = $self
										.hasClass('autogrow-short') ? 0
										: parseInt($self.css('lineHeight')) || 0;
								var settings = $.extend({
									preGrowCallback : null,
									postGrowCallback : null
								}, options);

								var shadow = $('<div></div>').css({
									position : 'absolute',
									top : -10000,
									left : -10000,
									width : $self.width(),
									fontSize : $self.css('fontSize'),
									fontFamily : $self.css('fontFamily'),
									fontWeight : $self.css('fontWeight'),
									lineHeight : $self.css('lineHeight'),
									resize : 'none',
									'word-wrap' : 'break-word'
								}).appendTo(document.body);

								var update = function(event) {
									var times = function(string, number) {
										for ( var i = 0, r = ''; i < number; i++)
											r += string;
										return r;
									};

									var val = self.value
											.replace(/&/g, '&amp;')
											.replace(/</g, '&lt;')
											.replace(/>/g, '&gt;')
											.replace(/\n$/, '<br/>&nbsp;')
											.replace(/\n/g, '<br/>')
											.replace(
													/ {2,}/g,
													function(space) {
														return times(
																'&nbsp;',
																space.length - 1)
																+ ' '
													});

									if (event && event.data
											&& event.data.event === 'keydown'
											&& event.keyCode === 13) {
										val += '<br />';
									}

									shadow.css('width', $self.width());
									shadow
											.html(val
													+ (noFlickerPad === 0 ? '...'
															: ''));

									var newHeight = Math.max(shadow.height()
											+ noFlickerPad, minHeight);
									if (settings.preGrowCallback != null) {
										newHeight = settings.preGrowCallback(
												$self, shadow, newHeight,
												minHeight);
									}

									$self.height(newHeight);

									if (settings.postGrowCallback != null) {
										settings.postGrowCallback($self);
									}
								}

								$self.change(update).keyup(update).keydown({
									event : 'keydown'
								}, update);
								$(window).resize(update);

								update();
							});
		};
	})(jQuery);
</script>


</head>
<body link="white" alink="white" vlink="white">


	<div id="header">
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	</div>

	<div id="container">

		
		<div id="wrapper">
			<div id="content">

				<div id="textbox">
					<p style="float: left;"><img src="/fakebooks/assets/images/updatepic.PNG">업데이트</p>
					<p style="float: left;"><img src="/fakebooks/assets/images/updatepic2.PNG">사진/동영상 추가</p>

					<img src="/fakebooks/assets/images/line.png">
					<form action="" method="post">
					
						<input type="hidden" value="${authMember.no }" name="memberno" id="memberno">

						<input type="hidden" value="${authMember.firstname }" name="firstname" id="firstname">

						<input type="hidden" value="${authMember.lastname }" name="lastname"
							id="lastname">




						<textarea title="무슨 생각을 하고 계신가요?" placeholder="무슨 생각을 하고 계신가요?" aria-label="무슨 생각을 하고 계신가요?" name="message" id="message" rows="6"
							style="line-height: 1; overflow: hidden; font-size: 120%; width: 100%; margin-bottom: 10px;"></textarea>
						<script type='text/javascript'>
						$(function() {
							$('textarea').autogrow();
						});
						</script>


						<input type="submit" value="게시" style="float: right; padding: 5px 16px; background-color: #4e69a2; font-size: 12px; color: #fff; border-color: #435a8b #3c5488 #334c83;">
					</form>
				</div>


				<!-- 내 타임라인 -->
				<c:forEach items="${list}" var="vo">
					<div id="readbox">
					
					 <img src="${vo.imagedir}" style="width: 60px; height: 60px">
						<span class="timelinename">${vo.lastname}</span> <p class="timelinetime">${vo.reg_date}<p> 
						<p class="timelinewrite">${fn:replace( vo.message, newLineChar, "<br>" ) }</p> 
						<div style="margin-bottom:5px;">

						<span><a href="/fakebooks/timeline/likes" class="likes">좋아요</a></span>
						<span>·</span> <span>댓글달기</span> 
						<c:if test="${authMember.no == vo.memberno }">
							<span>·</span>
							<span><a href="/fakebooks/timeline/delete/${vo.timelineno }" class="del" >삭제</a></span>
						</c:if>
						
						</div>
						<div class="likes">
							
							<p>
								<img src="/fakebooks/assets/images/likes.PNG"> ${vo.likes }명이 좋아합니다.
							</p>
							
								
							<span>
							<img src="${authMember.imagedir}" style="float: left; width: 30px; margin-top: 7px; margin-right: 0px; margin-bottom:-5px;">
							<input type="text" placeholder="댓글을 입력하세요." size="70"
								style="float: left; height: 22px; margin-left: 10px; margin-top: 10px">
							</span>
						</div>
					</div>
				</c:forEach>

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