<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>요금안내</title>
</head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script src="<c:url value="../resources/js/jquery-2.2.3.min.js"></c:url>"></script>
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
</div>
<div class="row">
	<div class="col-sm-2"></div>
	<div class="col-sm-2" style="background-color: #eeeeee; padding-top: 1%; padding-bottom: 25%">
			<ul class="nav nav-pills nav-stacked" role="tablist">
				<li role="presentation"><a href="/fare_guide/fareGuide" aria-controls="notice" role="tab">
					<span style="color: #aaaaaa; font-size: medium">요금안내</span></a></li>
				<li role="presentation"><a href="/fare_guide/payment?m_code=${MemberVO.m_code}" aria-controls="notice" role="tab">
					<span style="color: #aaaaaa; font-size: medium">이용권구매</span></a></li>
				<li role="presentation"><a href="/fare_guide/gift" aria-conrols="faq" role="tab">
					<span style="color: #aaaaaa; font-size: medium">선물하기</span></a></li>
			</ul>
	</div>
	
	<div class="col-sm-4">
	<h3>요금 안내</h3><br/>
	</div>
	<div class="col-sm-4">
	</div>
</div>
</body>


</html>