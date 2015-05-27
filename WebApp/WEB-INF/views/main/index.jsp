<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Fakebook에 오신것을 환영합니다.</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="generator" content="HAPedit 3.1">


<link href="/face/assets/css/index.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script>
	$(function() {
		$('#info .slider label').each(function() {
			var labelColor = '#999';
			var restingPosition = '5px';

			$(this).css({
				'color' : labelColor,
				'position' : 'absolute',
				'top' : '6px',
				'left' : restingPosition,
				'display' : 'inline',
				'z-index' : '99'
			});

			var inputval = $(this).next('input').val();
			var labelwidth = $(this).width();
			var labelmove = labelwidth + 5;

			if (inputval !== '') {
				$(this).stop().animate({
					'left' : '-' + labelmove
				}, 1);
			}

			$('input').focus(function() {
				var label = $(this).prev('label');
				var width = $(label).width();
				var adjust = width + 5;
				var value = $(this).val();
				if (value == '') {
					label.stop().animate({
						'left' : '-' + adjust
					}, 'fast');
				} else {
					label.css({
						'left' : '-' + adjust
					});
				}
			}).blur(function() {
				var label = $(this).prev('label');
				var value = $(this).val();
				if (value == '') {
					label.stop().animate({
						'left' : restingPosition
					}, 'fast');
				}
			});
		})
	});
	
	

</script>

</head>
<body link="white" alink="white" vlink="white">
	<div id="header">

		<div id="left">
			<h1><a href="/face/index" style="text-decoration:none">fakebook</a></h1>
		</div>


		<div id=right2>
			<br>
			<form action="/face/member/login" method="post" id="info">

				<div id="email-wrap" class="slider">
					<label for="email" style="float: left;">E-mail</label> <input
						type="text" id="email" name="email">



					<div id="pass-wrap" class="slider">
						<label for="pass">Password</label> <input type="password"
							id="pass" name="password"> <input id="loginbutton"
							type="submit" value="로그인">
					</div>


				</div>


			</form>
		</div>

	</div>






	<div id="container">
		<div id="box">
			<div id="left">
				<h2>
					 Fakebook에서 전세계에 있는 친구, 가족, 지인들과<br> 함께 이야기를 나눠보세요.
				</h2>
				<img src="/face/assets/images/world.png">
			</div>

			<div id="right">
				<form action="/face/member/join" method="post" id="info">
					<h1>가입하기</h1>
					<p>항상 지금처럼 무료로 이용하실 수 있습니다.</p>

					<div id="firstname-wrap" class="slider">
						<label for="firstname">First Name</label> <input type="text"
							id="firstname" name="firstname">
					</div>

					<div id="lastname-wrap" class="slider">
						<label for="lastname">Last Name</label> <input type="text"
							id="lastname" name="lastname">
					</div>

					<div id="email2-wrap" class="slider">
						<label for="email2">E&ndash;mail</label> <input type="text"
							id="email2" name="email">
					</div>
					<!--/#email-wrap-->

					<div id="checkemail-wrap" class="slider">
						<label for="checkemail">check E&ndash;mail</label> <input
							type="text" id="checkemail" name="checkemail">
					</div>
					<!--/#email-wrap-->

					<div id="password-wrap" class="slider">
						<label for="password">Password</label> <input type="password"
							id="password" name="password">
					</div>

					<h3>생일</h3>
					<select name="year">
						<option value="" selected="selected">년도</option>
						
						<option value="1979">1979</option>
						<option value="1980">1980</option>
						<option value="1981">1981</option>
						<option value="1982">1982</option>
						<option value="1983">1983</option>
						<option value="1984">1984</option>
						<option value="1985">1985</option>
						<option value="1986">1986</option>
						<option value="1987">1987</option>
						<option value="1988">1988</option>
						<option value="1989">1989</option>
						<option value="1990">1990</option>
						<option value="1991">1991</option>
						<option value="1992">1992</option>
						<option value="1993">1993</option>
						<option value="1994">1994</option>
						<option value="1995">1995</option>
						<option value="1996">1996</option>
						<option value="1997">1997</option>
						<option value="1998">1998</option>
						<option value="1999">1999</option>
						<option value="2000">2000</option>
						<option value="2001">2001</option>
						

					</select>
					<select name="month" >
						<option value="" selected="selected">월</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						
					</select> 
					<select name="day">
						<option value="" selected="selected">일</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
						
					</select> 
					<br>
					 <input type="radio" value="여성" id="gender" name="gender" checked="checked"> 여성
					<input type="radio" value="남성" id="gender" name="gender"> 남성

					<p>가입하기 버튼을 클릭하면 약관에 동의하며 쿠키 사용을 포함한 데이터 정책을 읽고 이해하신 것으로 간주됩니다.</p>

					<input type="submit" id="btn" name="btn" value="가입하기">
				</form>

			</div>
		</div>
	</div>


	<div id="footer">
		<p>made by 이은호, 제민재</p>
	</div>

</body>
</html>