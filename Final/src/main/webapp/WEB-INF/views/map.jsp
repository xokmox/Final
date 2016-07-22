<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<script src="<c:url value="/resources/js/jquery-2.2.3.min.js"></c:url>"></script>
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
		      <a class="navbar-brand" href="#" style="color: #6DD66D">Green Cycle</a>
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
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</div>
	<div class="col-md-2"></div>
</div>
<div class="row">
	<div class="col-md-12" style="height:1px; background-color: #D8D8D8"></div>
</div>
<div class="row" style="margin-top: 10px">
	<div class="col-md-2"></div>
	<div class="col-md-4">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
		  </ol>
		
		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active">
		      <img src="<c:url value="/resources/images/cycle1.jpg"></c:url>" alt="cycle" style="width: 100%; height: auto;">
		      <div class="carousel-caption">
		        	첫번째 사진
		      </div>
		    </div>
		    <div class="item">
		      <img src="<c:url value="/resources/images/cycle2.jpg"></c:url>" alt="cycle" style="width: 100%; height: auto;">
		      <div class="carousel-caption">
		        	두번째 사진
		      </div>
		    </div>
		    <div class="item">
		      <img src="<c:url value="/resources/images/cycle3.jpg"></c:url>" alt="cycle" style="width: 100%; height: auto;">
		      <div class="carousel-caption">
		        	세번째 사진
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	<div class="col-md-4">
		<a href="#" class="thumbnail">
			<img src="<c:url value="/resources/images/thumbnail.jpg"></c:url>" alt="cycle" style="width: 85%; height: auto;">
		</a>
	</div>
	<div class="col-md-2"></div>
</div>
<br/>
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-4">
		<div class="btn-group" role="group">
			<button type="button" id="myButton" class="btn btn-info" style="width: 100%; padding: 15px; margin-bottom: 10px; font-size: 25px; font-weight: bold;">Station 검색 바로가기</button>
			<button type="button" class="btn btn-default" style="width: 25%;"><img src="<c:url value="/resources/images/cycle3.jpg"></c:url>" width="100%" height="20%"></img></button>
			<button type="button" class="btn btn-default" style="width: 25%;"><img src="<c:url value="/resources/images/cycle1.jpg"></c:url>" width="100%" height="20%"></img></button>
			<button type="button" class="btn btn-default" style="width: 25%;"><img src="<c:url value="/resources/images/cycle2.jpg"></c:url>" width="100%" height="20%"></img></button>
			<button type="button" class="btn btn-default" style="width: 25%;"><img src="<c:url value="/resources/images/cycle3.jpg"></c:url>" width="100%" height="20%"></img></button>
		</div>
	</div>
	<div class="col-md-4">
	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">공지사항</a></li>
	    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">이용후기</a></li>
	    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">문의사항</a></li>
	  </ul>
	
	  <!-- Tab panes -->
	  <div class="tab-content">
	    <div role="tabpanel" class="tab-pane active" id="home">...</div>
	    <div role="tabpanel" class="tab-pane" id="profile">...</div>
	    <div role="tabpanel" class="tab-pane" id="messages">...</div>
	  </div>
	</div>
	<div class="col-md-2"></div>
</div>
<div class="row">
	<div class="col-md-12" style="height:100px; background-color: #424242; margin-top: 10px"></div>
</div>
<script src="<c:url value="/resources/js/bootstrap.min.js"></c:url>"></script>
</body>
</html>
