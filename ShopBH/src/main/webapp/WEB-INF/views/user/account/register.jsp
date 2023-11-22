<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>
<head>

<title>Đăng ký tài khoản</title>
</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row">
<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">

					
					<li><a href="<c:url value="/san-pham/1" />"><span
								class="icon-circle-blank"></span> Giày thể thao</a></li>
					<li><a href="<c:url value="/san-pham/2" />"><span
								class="icon-circle-blank"></span> Giày thể thao</a></li>
					<li><a href="<c:url value="/san-pham/3" />"><span
								class="icon-circle-blank"></span> Giày thể thao</a></li>
					<li><a href="<c:url value="/san-pham/4" />"><span
								class="icon-circle-blank"></span> Giày thể thao</a></li>


					<!-- icon -->

					<li><a class="totalInCart" href="<c:url value="/gio-hang/"/>"><strong> Tổng tiền giỏ hàng <span class="badge badge-warning pull-right"
								style="line-height: 18px;"><fmt:formatNumber type="number" groupingUsed="true" value="${TotalPriceCart}" /> ₫</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> 
				</p>
			</div>
			<div class="well well-small">
				<a><img src="<c:url value="/assets/user/img/paypal.jpg"/>"
					alt="payment method paypal"></a>
			</div>

		 
		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="<c:url value="/"/>">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Người dùng</li>
			</ul>
			<h3>Người dùng</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>Đăng ký tài khoản</h5>
						<br /> 
						<form:form action="dang-ky-tk" method = "GET" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input type="email" class="span3" placeholder="Nhập Email" path="user"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mật khẩu</label>
								<div class="controls">
									<form:input type="password" class="span3" placeholder="Nhập mật khẩu" path="password"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Họ và tên</label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Nhập họ và tên" path="display_name"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Địa chỉ</label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Nhập địa chỉ" path="address"/>
								</div>
							</div>
							<div class="controls">
								<button type="submit" class="btn block">Đăng ký</button>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>Đăng nhập hệ thống</h5>
						<form:form action="dang-nhap" method = "POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Tài khoản</label>
								<div class="controls">
									<form:input type="email" class="span3" placeholder="Nhập Email" path="user"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mật khẩu</label>
								<div class="controls">
									<form:input type="password" class="span3" placeholder="Nhập mật khẩu" path="password"/>
								</div>
							</div>
						
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="defaultBtn">Đăng nhập</button>
									<a href="#">Quên mật khẩu?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>