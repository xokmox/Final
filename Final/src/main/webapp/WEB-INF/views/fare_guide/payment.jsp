<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>이용권 구매</title>
</head>

<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

<script>

	function submit(){
		var amount = $("#amount").val();
		var means = $(":input:radio[name=means]:checked").val();
		var mileage = $("#mileage").val();
		
		if(sum < 0){
			alert("결제금액보다 사용 한 마일리지 금액이 커서 결제할 수 없습니다.");
		}
		else if(sum > 0){
			alert(		
						"결제수단 : " +  means + "\n" + 
						"사용 한 마일리지 : " + mileage + "P" + "\n" +
						"최종 결제금액 : " + amount + "원" + "\n" +
						" \n\n\n" + 
						"확인을 누르면 결제됩니다."
			);
		}
		document.paymentform.submit();
	}
	
	
	function setAmount(){
		var amount = $(":input:radio[name=period]:checked").val()
		var mileage = $("#mileage").val();
		var sum = amount-mileage;
		
		if(sum < 0 ){
			alert("결제금액보다 사용 할 마일리지 포인트가 클 수 없습니다.");
		}
		else{
			$(document).ready(function() {
		        $('#amount').val(sum);
		    });
		}
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
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li><a href="/service_guide/AboutUs">서비스안내</a></li>
		        <li><a href="/fare_guide/fareGuide">요금안내</a></li>
		        <li><a href="#">고객센터</a></li>
		        <li><a href="#" style="color: #6DD66D">Station찾기/예약</a></li>
		        <li><a href="#" style="color: #6DD66D">마이페이지</a></li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <li><button type="button" class="btn btn-default btn-xs" style="margin-top: 15px">로그인</button>&nbsp;</li>
		        <li><button type="button" class="btn btn-default btn-xs" style="margin-top: 15px">회원가입</button></li>
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
</div>

<div class="row">
	<div class="col-sm-2"></div>
	<div class="col-sm-2" style="background-color: #eeeeee; padding-top: 1%; padding-bottom: 25%">
			<ul class="nav nav-pills nav-stacked" role="tablist">
				<li role="presentation"><a href="/fare_guide/fareGuide" aria-controls="notice" role="tab">
					<span style="color: #aaaaaa; font-size: medium">요금안내</span></a></li>
				<li role="presentation"><a href="/fare_guide/payment" aria-controls="notice" role="tab">
					<span style="color: #aaaaaa; font-size: medium">이용권구매</span></a></li>
				<li role="presentation"><a href="/fare_guide/gift" aria-conrols="faq" role="tab">
					<span style="color: #aaaaaa; font-size: medium">선물하기</span></a></li>
			</ul>
	</div>
	
	<form role="paymentform" method="post">
	<div class="col-sm-5">
	<h3>이용권 구매</h3><br/>
		<table class="table table-hover">
				<tr>
					<td>서비스 요금</td>
					<td>
						<div class="radio">
						<div class="radio">
						  <label>
						    <input type="radio" name="period" id="period" value="3000" checked onclick="setAmount()">
						    7일권&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3000원
						  </label>
						 </div>
						 <div class="radio">
						  <label>
						    <input type="radio" name="period" id="period" value="5000" onclick="setAmount()">
						    30일권&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5000원
						  </label>
						 </div>
						 <div class="radio">
						  <label>
						    <input type="radio" name="period" id="period" value="15000" onclick="setAmount()">
						    180일권&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15000원
						  </label>
						 </div>
						 <div>
						  <label>
						    <input type="radio" name="period" id="period" value="30000" onclick="setAmount()">
						    365일권&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30000원
						  </label>
						 </div>
						</div>
					</td>
					<td></td>		
				</tr>
				<tr>
					<td>결제수단</td><td>	
					<div class="radio">
						  <label>
						    <input type="radio" name="means" id="means" value="휴대폰" checked>
						   	휴대폰
						  </label>
						</div>
						<div class="radio">
						  <label>
						    <input type="radio" name="means" id="means" value="신용카드">
						    신용카드
						  </label>
						</div>
					</td><td></td>
				</tr>
				<tr>
					<td>마일리지</td>
					<td>
						<input type="text" name="mileage" id="mileage">&nbsp;P
						<button type="button" class="btn btn-default btn-xs" onclick="setAmount()">적용</button>
					</td>
					<td><h6>사용 가능 마일리지 : ${MemberVO.mileage}P</h6></td>
				</tr>
				<tr>
					<td>최종 결제금액 :</td>
					<td><b><input type="text" name="amount" id="amount" readonly></b>원</td>
					<td></td>
				</tr>

			</table>
	</div>

	<div class="col-sm-3">
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		  <button type="button" class="btn btn-default btn-s" style="margin-top: 15px" onclick=" return submit()">확인</button>
	</div>
</form>
</div>
</body>
</html>