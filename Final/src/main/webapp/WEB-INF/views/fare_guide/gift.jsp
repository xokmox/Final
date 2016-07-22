<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>선물하기</title>
</head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link rel="stylesheet"href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

<script>

	function getPeriod(){
		var period = $(":input:radio[name=period]:checked").val()
		var means = $(":input:radio[name=means]:checked").val()
		alert("결제수단 : " +  means +  ", 결제금액 : " + period + "원 / 정말 결제하시겠습니까?");
		
		document.paymentform.submit();
	}
	
	function search(){
		var period = $("input:text[name=giftID]").val();
		alert(period);
	}
	
</script>

<style>
	#nav{
		background-color: white;
		padding-top: 30px;
	}
	
	a{
		font-weight: bold;
	}
</style>
<body>
	<div class="row">
	<div class="col-md-12" style="height:10px; background-color: #6DD66D"></div>
</div>
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<nav class="navbar navbar-default" style="border-color: white;">
		  <div id="nav" class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header" style="margin-right: 80px;">
		      <a class="navbar-brand" href="/" style="color: #6DD66D">Green Cycle</a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li><a href="/service_guide/AboutUs">서비스안내</a></li>
		        <li><a href="/fare_guide/fareGuide">요금안내</a></li>
		        <li><a href="#">고객센터</a></li>
		        <li><a href="#" style="color: #6DD66D">Station찾기/예약</a></li>
		        <li><a href="#" style="color: #6DD66D">마이페이지</a></li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <li><button type="button" class="btn btn-default btn-xs"
									style="margin-top: 15px">로그인</button>&nbsp;</li>
		        <li><button type="button" class="btn btn-default btn-xs"
									style="margin-top: 15px">회원가입</button></li>
		      </ul>
		    </div>
					<!-- /.navbar-collapse -->
		  </div>
				<!-- /.container-fluid -->
		</nav>
	</div>
	<div class="col-md-2"></div>
</div>
<div class="row">
	<div class="col-md-12" style="height:1px; background-color: #D8D8D8"></div>
</div><div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-2"
			style="background-color: #eeeeee; padding-top: 1%; padding-bottom: 25%">
			<ul class="nav nav-pills nav-stacked" role="tablist">
				<li role="presentation"><a href="/fare_guide/fareGuide" aria-controls="notice" role="tab">
					<span style="color: #aaaaaa; font-size: medium">요금안내</span></a></li>
				<li role="presentation"><a href="/fare_guide/payment" aria-controls="notice" role="tab">
					<span style="color: #aaaaaa; font-size: medium">이용권구매</span></a></li>
				<li role="presentation"><a href="/fare_guide/gift" aria-conrols="faq" role="tab">
					<span style="color: #aaaaaa; font-size: medium">선물하기</span></a></li>
			</ul>
		</div>
<form method="post" action="#">
		<div class="col-sm-4">
			<h3>선물하기</h3><br/>
			<table class="table table-hover">
				<tr>
					<td>서비스 요금</td>
					<td>
						<div class="radio">
						  <label>
						    <input type="radio" name="period" value="3000" checked>
						    7일권&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3000원
						  </label>
						</div>
						<div class="radio">
						  <label>
						    <input type="radio" name="period" value="5000">
						    30일권&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5000원
						  </label>
						</div>
						<div class="radio">
						  <label>
						    <input type="radio" name="period" value="15000">
						    180일권&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15000원
						  </label>
						</div>
						<div class="radio">
						  <label>
						    <input type="radio" name="period" value="30000">
						    365일권&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30000원
						  </label>
						</div>
					</td><td></td>			
				</tr>
				<tr>
					<td>결제수단</td><td>	
					<div class="radio">
						  <label>
						    <input type="radio" name="means" value="phone" checked>
						   	휴대폰
						  </label>
						</div>
						<div class="radio">
						  <label>
						    <input type="radio" name="means" value="creditCard">
						    신용카드
						  </label>
						</div>
					</td><td></td>
				</tr>
				<tr>
					<td>선물 할 ID</td><td><input type="text" name="giftID" >&nbsp;&nbsp;
					<button type="button" class="btn btn-default btn-xs" onclick="search()">검색</button></td><td></td>
				</tr>
				<tr>
					<td>마일리지</td><td><input type="text">&nbsp;P</td><td></td>
				</tr>
				<tr>
					<td>총 구매내역</td><td><input type="text">&nbsp;원</td><td></td>
				</tr>

			</table>
	</div>
	<div class="col-sm-4">
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		  <button type="submit"class="btn btn-default btn-s" style="margin-top: 15px" onclick="getPeriod()">확인</button>
	</div>
</form>
</div>
</body>
</html>