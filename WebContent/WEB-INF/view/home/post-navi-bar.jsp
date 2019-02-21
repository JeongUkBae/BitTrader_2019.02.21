<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${css}/customer/navi_bar.css" />
<!-- <!-- <div class="navi-bar">
	<ul class="ul_navi_bar">
		<li><a href="home.do">홈</a></li>
		<li><a href="#">마이페이지</a>
		<li><a href="customer.do">주문</a>
		<li><a href="#">사원</a></li>
		<li><a href="#">상품</a>
		<li><a href="#">선박</a>
		<li><a href="#">공급업체</a>
	</ul>
<div class="navi-bar">
	<ul class="ul_navi_bar">
	<li><a href="home.do">홈</a></li>
	</ul> 
	
</div>
</div> -->
<div class="navi-bar" id="navi-bar">
	<div class = "row" id="ul_navi_bar">
	
		<div class="col-md-1"> <ul><li><a href="home.do">Home</a> </li></ul></div>
		<div class="col-md-1"> <ul><li><a href="#">MyPage</a></li></ul> </div>
		<div class="col-md-1"> <ul><li><a id="product"href="#">Products</a></li></ul></div>
		<div class="col-md-1"> </div>
		<div class="col-md-1"> </div>
		<div class="col-md-1"> </div>
		<div class="col-md-3 col-md-offset-3">
			 <a  href="#" class="count active" >${emp.name} 님 환영합니다.</a>
							<div>
							<ul>
							<li id="li_nav_7">
								
									<c:choose>
		  								<c:when test="${cus.customerName eq cus.customerName}">
		  									<a  href="#" class="count active" >${cus.customerName} 님 환영합니다.</a>
		  								</c:when>
		  								<c:otherwise>
		  									<a href="#" class="count active" >${emp.name} 님 환영합니다.</a>
		  								</c:otherwise>
		  							</c:choose>

								</li>
								</ul>
							</div>	
						</div>

	</div>
</div>



<script>



</script>