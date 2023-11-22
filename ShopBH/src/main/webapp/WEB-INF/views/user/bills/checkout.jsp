<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>

<title>Thanh toán</title>
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
				<div class="span9">
					<div class="well">
						<br />
						<form:form action="checkout" method = "POST" modelAttribute="bills" class="form-horizontal">
							<h3>Thanh toán đơn hàng</h3>
							<div class="control-group">
								<label class="control-label">Họ tên <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="Nhập họ tên" path="display_name"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Email <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Nhập Email" path="user"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Số điện thoại <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Nhập số điện thoại" path="phone"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Địa chỉ <sup>*</sup></label>
								<div class="controls">
									<form:textarea path="address" rows="5" cols="30"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Ghi chú <sup>*</sup></label>
								<div class="controls">
									<form:textarea path="note" rows="5" cols="30"/>
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<input type="submit"name ="submitAccount" value="Thanh toán"
											class="shopBtn exclusive">
								</div>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
			</div>

		</div>
	</div>
</body>