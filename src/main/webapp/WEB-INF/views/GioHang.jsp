<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Giỏ hàng</title>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<!-- link css -->
<link rel="stylesheet" href="/resources/css/resetGH.css" />
<link rel="stylesheet" href="/resources/css/styleGH.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet" />


</head>
<body>
	<div class="cart">
		<div class="top">
			<h1 class="title">Giỏ hàng</h1>
			<a href="${pageContext.request.contextPath}/">
				<button class="back-button">Thoát</button>
			</a>
		</div>
		<form:form action="" modelAttribute="">
			<div class="content">
				<div class="cart-list">
					<c:forEach var="cart" items="${sessionScope.userCart}">
						<div class="cart-item">
							<input type="checkbox" class="check-button" />
							<div class="code">
								<img src="/resource/library/icon/ticket-01.svg" alt="" /> <span
									class="code-id">${cart.availableSeats}</span>
							</div>
							<h3 class="name">Siêu Sale 🔥 | ${cart.packageName}</h3>
							<span class="price"> ${cart.packageName} VND</span>
							<p>
								Khởi hành: <span class="date"> ${cart.departureDate} </span>
							</p>
							<p>
								Nơi khởi hành: <span class="from">
									${cart.departure.location } </span>
							</p>
							<p>
								Số chổ còn nhận: <span class="remain">
									${cart.availableSeats} </span>
							</p>
							<p>
								Giá: <span class="service"> <fmt:formatNumber>${cart.price}</fmt:formatNumber>VND
								</span>
							</p>
							 <button type="button" class="delete-button" onclick="window.location.href = '/deleteCartItem?itemId='${cart.travelPackageId}">Xóa</button>
						</div>
					</c:forEach>
				</div>
				<div class="form">
					<div class="info">
						<h2>Thông tin liên lạc</h2>
						<div class="wrapper">
							<label for="fullname">Họ và tên *</label> <input type="text"
								name="fullname" id="fullname" placeholder=""
								value="${sessionScope.User.fullName}" />
						</div>
						<div class="wrapper">
							<label for="email">Email *</label> <input type="email"
								name="email" id="email" value="${sessionScope.User.email}" />
						</div>
						<div class="wrapper">
							<label for="phone">Số điện thoại *</label> <input type="text"
								name="phone" id="phone" value="${sessionScope.User.phone}" />
						</div>
						<div class="wrapper">
							<label for="address">Địa chỉ</label> <input type="text"
								name="address" id="address" placeholder=""
								value="${sessionScope.User.address}" />
						</div>
					</div>

					<div class="attention">
						<h2>Lưu ý</h2>
						<textarea name="attention" id="attention"></textarea>
					</div>

					<div class="pay">
						<h2>Phương thức thanh toán</h2>
						<div class="pay-list">
							<!-- <div class="pay-option">
								<img src="/resource/library/icon/applepay.svg" alt="" /> <input
									type="radio" name="pay" class="check-button" />
							</div>
							<div class="pay-option">
								<img src="/resource/library/icon/momo.svg" alt="" /> <input
									type="radio" name="pay" class="check-button" />
							</div> -->
							<div class="pay-option">
								<h3>Thanh toán tiền mặt</h3>
								<input type="radio" name="pay" class="check-button" checked />
							</div>
						</div>
					</div>

					<h2>
						Tổng: <span class="total">2,299,000 vnđ</span>
					</h2>

					<button type="submit" class="submit-button">Thanh toán</button>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>