<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

<!-- link css -->
<link rel="stylesheet" href="/resources/css/resetGH.css" />
<link rel="stylesheet" href="/resources/css/styleGH.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet" />
<title>Booking</title>
</head>
<body>
	<div class="cart">
		<div class="top">
			<h1 class="title">Đặt vé</h1>
			<a href="${pageContext.request.contextPath}/">
				<button class="back-button">Thoát</button>
			</a>
		</div>
		<div class="content">
			<form action="">
				<div class="cart-list">
					<div class="cart-item">
						<div class="code">
							<img src="/resources/library/icon/ticket-01.svg" alt="" /> <span
								class="code-id">${TRAVELPACKAGE.travelPackageId}</span>
						</div>
						<h3 class="name">${TRAVELPACKAGE.packageName}</h3>
						<span class="price">${TRAVELPACKAGE.price}</span>
						<p>
							Khởi hành: <span class="date">${TRAVELPACKAGE.departureDate}</span>
						</p>
						<p>
							Nơi khởi hành: <span class="from">${TRAVELPACKAGE.departure.location}</span>
						</p>
						<p>
							Số chổ còn nhận: <span class="remain">${TRAVELPACKAGE.availableSeats}</span>
						</p>
					</div>
				</div>
				<div class="form">
				<input type="hidden" name="TourId" value="${TRAVELPACKAGE.travelPackageId}">
					<div class="attention">
						<h2>Lưu ý</h2>
						<textarea name="attention" id="attention"></textarea>
					</div>

					<div class="pay">
						<h2>Phương thức thanh toán</h2>
						<div class="pay-list">
							<div class="pay-option">
								<h3>Thanh toán tiền mặt</h3>
								<input type="radio" name="pay" class="check-button" />
							</div>
						</div>
					</div>

					<h2>
						Tổng: <span class="total">${TRAVELPACKAGE.price} vnđ</span>
					</h2>

					<button type="submit" class="submit-button" onclick="booking()">Đặt ngay</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>