<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Web Tour</title>
<!-- link CSS -->
<link rel="stylesheet" href="/resources/css/Home.css">
<!-- link font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Candal&family=Inter:wght@100;200;300;400;500;600;700;800;900&family=Lavishly+Yours&family=Mitr:wght@500&display=swap"
	rel="stylesheet">
<!-- link css swiper -->
<link rel="stylesheet"
	href="/resources/library/swiper/cdn.jsdelivr.net_npm_swiper@10.2.0_swiper-bundle.min.css">
<link rel="stylesheet"
	href="/resources/library/swiper/cdn.jsdelivr.net_npm_swiper@10.2.0_swiper.css">
<!-- link Bootstrap -->
<link rel="stylesheet"
	href="/resources/library/bootstrap/css/bootstrap.min.css">
<!-- link JS -->
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="/resources/js/app.js"></script>
<script src="/resources/library/bootstrap/js/bootstrap.bundle.min.js"></script>
<script
	src="/resources/library/swiper/cdn.jsdelivr.net_npm_swiper@10.2.0_swiper-element-bundle.min.js"></script>
<script
	src="/resources/library/swiper/cdn.jsdelivr.net_npm_swiper@10.2.0_swiper-bundle.min.js"></script>


</head>

<body>
	<div class="containerx">
		<div class="header">
			<div class="bg_header">
				<div class="menu_bar">
					<div class="logo col-sm-2">
						<img src="/resources/img/Logo.png" alt="logo">
					</div>
					<div class="menu col-sm-8 navbar">
						<ul class="menu_list navbar-nav">
							<li class="menu_item nav-item"><a class="nav-link" href="#">Trang
									chủ</a></li>
							<li class="menu_item nav-item dropdown"><a
								class=" dropdown-toggle" href="#" role="button"
								id="dropdownMenuLink" data-bs-toggle="dropdown"
								aria-expanded="false"> Du lịch </a>
								<ul style="position: absolute;" class="dropdown-menu"
									aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="#">Tour</a></li>
									<li><a class="dropdown-item" href="#">Combo Tour</a></li>
								</ul></li>
							<li class="menu_item nav-item"><a class="nav-link" href="#">Tin
									tức</a></li>
							<li class="menu_item nav-item"><a class="nav-link" href="#">Liên
									hệ</a></li>
							<li class="menu_item nav-item"><a class="nav-link" href="#">Khuyến
									mãi</a></li>
							<c:if
								test="${not empty sessionScope.USERID and sessionScope.ROLEUSER eq 'C'}">
								<li class="menu_item nav-item"><a class="nav-link" href="#">Quản
										lý</a></li>
							</c:if>
						</ul>
					</div>
					<div class="btnLogin_Cart col-sm-2">
						<c:if test="${ empty sessionScope.USERID}">
							<input type="button" value="Đăng nhập"
								onclick="window.location.href='login';return false;">
						</c:if>
						<%-- <c:if test="${not empty sessionScope.USERID}">
							<input type="button" value="Đăng xuất"
								onclick="window.location.href='logout';return false;">
						</c:if> --%>
						<a href="#"> <img src="/resources/library/icon/Cart.svg"
							alt="cart">
						</a>
					</div>
				</div>
			</div>
			<div class="content">
				<div class="uuDai">
					<h1 class="title_uudai">Ưu Đãi</h1>
					<div class="content_uudai">
						<swiper-container class="mySwiper" pagination="true"
							pagination-clickable="true" space-between="30"
							slides-per-view="3"> <swiper-slide>
						<div class="ct1 col">
							<a href=""> <img src="/resources/img/uudai1.png" alt="">
							</a>
						</div>
						</swiper-slide> <swiper-slide>
						<div class="ct1 col">
							<a href=""> <img src="/resources/img/uudai2.png" alt="">
							</a>
						</div>
						</swiper-slide> <swiper-slide>
						<div class="ct1 col">
							<a href=""> <img src="/resources/img/uudai3.png" alt="">
							</a>
						</div>
						</swiper-slide> <swiper-slide>
						<div class="ct1 col">
							<a href=""> <img src="/resources/img/uudai1.png" alt="">
							</a>
						</div>
						</swiper-slide> <swiper-slide>
						<div class="ct1 col">
							<a href=""> <img src="/resources/img/uudai2.png" alt="">
							</a>
						</div>
						</swiper-slide> <swiper-slide>
						<div class="ct1 col">
							<a href=""> <img src="/resources/img/uudai3.png" alt="">
							</a>
						</div>
						</swiper-slide> </swiper-container>
					</div>
				</div>
				<div class="uuDaiSatGio">
					<h1 class="title_uudai">Ưu đãi Tour</h1>
					<div class="listCard row row-cols-3">
						<c:forEach var="tours" items="${tours}">
							<form:form>
								<div class="items_card">
									<div class="card_item col">
										<div class="card_img">
											<a href="" class="card_link"> <c:if
													test="${not empty tours.imagesList}">
													<img src="/resources/img/${tours.imagesList.toArray()[1]}"
														alt="img"
														style="width: 340px; height: 184px; border-radius: 10px">
												</c:if>
											</a> <a href="" class="card_favourite"> <img
												src="/resources/library/icon/favourite.svg" alt="">
											</a>
										</div>
										<div class="card_btn">
											<div class="btn_left">
												<div class="btn-1">
													<p>Sát giờ</p>
												</div>
												<div class="btn-space"></div>
												<div class="btn-2">
													<p>Ưu đãi</p>
												</div>
											</div>
											<div class="btn_right">
												<div class="btn-3">
													<p>Số chỗ còn :</p>
												</div>
												<div class="btn-4">
													<p>${tours.availableSeats}</p>
												</div>
											</div>
										</div>
										<div class="card_time">
											<div class="card_day">
												<p>${tours.departureDate}</p>
											</div>
											<p style="padding: 0 5px 0px 5px;">-</p>
											<div class="time">
												<p>6 Ngày</p>
											</div>
										</div>
										<div class="card_destination">
											<p>${tours.packageName}</p>
										</div>
										<div class="card_start">
											<p>Nơi khởi hành:</p>
											<p style="padding: 0 5px 0px 5px;"></p>
											<p>${tours.departure.location}</p>
										</div>
										<div class="oldprice">
											<p>Giá:</p>
											<p style="padding: 0 5px 0px 5px;"></p>
											<p class="txt_oldprice">8,500,000 VND</p>
											<p style="padding: 0 5px 0px 5px;"></p>
											<p class="txt_sale">-8%</p>
										</div>
										<div class="newprice">
											<p>${tours.price}</p>
											<p style="padding: 0 5px 0px 5px;"></p>
											<p>VND</p>
										</div>
										<div class="card_btnAddCart">
											<input type="submit" value="Thêm vào giỏ hàng"> <img
												src="/resources/library/icon/add.svg" alt="">
										</div>
									</div>
								</div>
							</form:form>
						</c:forEach>
					</div>
				</div>
				<div class="uuDaiDacBiet">
					<h1 class="title_uuDaiDacBiet">Ưu đãi đặc biệt</h1>
					<c:forEach var="combo" items="${combos}">
						<form:form>
							<div class="cardSpecial">
								<div class="cardSpecial_img">
									<c:if test="${not empty combo.imagesList}">
										<img src="/resources/img/${combo.imagesList.toArray()[1]}"
											alt="img"
											style="width: 425px; height: 335px; border-radius: 10px">
									</c:if>
								</div>
								<div class="cardSpecial_detail">
									<div class="detail_header">
										<div class="header_left">
											<p>Vé máy bay + Khách sạn</p>
										</div>
										<div class="header_right">
											<img src="/resources/library/icon/rate.svg" alt="">
										</div>
									</div>
									<div class="detail_content">
										<div class="detail_content-time card_time">
											<div class="card_day">
												<p>${combo.departureDate}</p>
											</div>
											<p style="padding: 0 5px 0px 5px;">-</p>
											<div class="time">
												<p></p>
											</div>
										</div>
										<div class="detail_content-destination card_destination">
											<p>${combo.description}</p>
										</div>
										<div class="detail_content-start card_start">
											<p>Vé máy bay khứ hồi Vietravel Airlines + Phòng Tiêu
												chuẩn + Ăn sáng</p>
										</div>
										<div class="detail_price">
											<p>Giá:</p>
											<p style="padding: 0 5px 0px 5px;"></p>
											<p class="price">${combo.price}VND</p>
											<p style="padding: 0 5px 0px 5px;"></p>
											<p>/Người</p>
										</div>
										<div class="detail_btn">
											<div class="btn1">
												<input type="button" value="Thêm vào giỏ hàng"> <img
													src="/resources/library/icon/add.svg" alt="">
											</div>
											<div class="btn2">
												<input type="button" value="Ngày khác"> <img
													src="/resources/library/icon/calendar-date.svg" alt="">
											</div>
										</div>
									</div>
								</div>
							</div>
							<br>
							<br>
						</form:form>
					</c:forEach>
					<div class="cardSpecial">
						<div class="cardSpecial_img">
							<a href=""> <img src="/resources/img/special2.png" alt="">
							</a>
						</div>
						<div class="cardSpecial_detail">
							<div class="detail_header">
								<div class="header_left">
									<p>Vé máy bay + Khách sạn</p>
								</div>
								<div class="header_right">
									<img src="/resources/library/icon/rate.svg" alt="">
								</div>
							</div>
							<div class="detail_content">
								<div class="detail_content-time card_time">
									<div class="card_day">
										<p>13/09/2023</p>
									</div>
									<p style="padding: 0 5px 0px 5px;">-</p>
									<div class="time">
										<p>6 Ngày</p>
									</div>
								</div>
								<div class="detail_content-destination card_destination">
									<p>Combo Vũng Tàu 3N2Đ: Vé máy bay khứ hồi + The IMPERIAL 4
										sao (Bao gồm Ăn sáng)</p>
								</div>
								<div class="detail_content-start card_start">
									<p>Vé máy bay khứ hồi Vietravel Airlines + Phòng Tiêu chuẩn
										+ Ăn sáng</p>
								</div>
								<div class="detail_price">
									<p>Giá:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="price">2,690,000 VND</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>/Người</p>
								</div>
								<div class="detail_btn">
									<div class="btn1">
										<input type="button" value="Thêm vào giỏ hàng"> <img
											src="/resources/library/icon/add.svg" alt="">
									</div>
									<div class="btn2">
										<input type="button" value="Ngày khác"> <img
											src="/resources/library/icon/calendar-date.svg" alt="">
									</div>
								</div>
							</div>
						</div>
					</div>
					<br> <br>
					<div class="cardSpecial">
						<div class="cardSpecial_img">
							<a href=""> <img src="/resources/img/special3.png" alt="">
							</a>
						</div>
						<div class="cardSpecial_detail">
							<div class="detail_header">
								<div class="header_left">
									<p>Vé máy bay + Khách sạn</p>
								</div>
								<div class="header_right">
									<img src="/resources/library/icon/rate.svg" alt="">
								</div>
							</div>
							<div class="detail_content">
								<div class="detail_content-time card_time">
									<div class="card_day">
										<p>13/09/2023</p>
									</div>
									<p style="padding: 0 5px 0px 5px;">-</p>
									<div class="time">
										<p>6 Ngày</p>
									</div>
								</div>
								<div class="detail_content-destination card_destination">
									<p>Combo Quy Nhơn 3N2Đ: Vé máy bay khứ hồi + Khách sạn
										Pearl Beach 3 sao (Bao gồm Ăn sáng)</p>
								</div>
								<div class="detail_content-start card_start">
									<p>Vé máy bay khứ hồi Vietravel Airlines + Phòng Tiêu chuẩn
										+ Ăn sáng</p>
								</div>
								<div class="detail_price">
									<p>Giá:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="price">3,690,000 VND</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>/Người</p>
								</div>
								<div class="detail_btn">
									<div class="btn1">
										<input type="button" value="Thêm vào giỏ hàng"> <img
											src="/resources/library/icon/add.svg" alt="">
									</div>
									<div class="btn2">
										<input type="button" value="Ngày khác"> <img
											src="/resources/library/icon/calendar-date.svg" alt="">
									</div>
								</div>
							</div>
						</div>
					</div>
					<br> <br>
				</div>
				<div class="diaDiemUuThich">
					<h1 class="title_daiDiemUuThich">Địa điểm ưa thích</h1>
					<div class="listItems_favorite row">
						<div class="items_DiaDiemUuThich col-xl">
							<div class="cardFavorite">
								<div class="cardFavorite_img">
									<a href=""> <img src="/resources/img/favorite1 (1).png"
										alt="">
									</a>
								</div>
								<div class="cardFavorite_detail">
									<div class="cardFavorite_detail-name">
										<p>Phú Quốc</p>
									</div>
									<div class="cardFavorite_detail-come">
										<p>Đã có:</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p class="come_number">987,467</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p>lượt khách</p>
									</div>
								</div>
							</div>
						</div>
						<div class="items_DiaDiemUuThich col-xl">
							<div class="cardFavorite">
								<div class="cardFavorite_img">
									<a href=""> <img src="/resources/img/favorite1 (2).png"
										alt="">
									</a>
								</div>
								<div class="cardFavorite_detail">
									<div class="cardFavorite_detail-name">
										<p>Đà Lạt</p>
									</div>
									<div class="cardFavorite_detail-come">
										<p>Đã có:</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p class="come_number">787,467</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p>lượt khách</p>
									</div>
								</div>
							</div>
						</div>
						<div class="items_DiaDiemUuThich col-xl">
							<div class="cardFavorite">
								<div class="cardFavorite_img">
									<a href=""> <img src="/resources/img/favorite1 (3).png"
										alt="">
									</a>
								</div>
								<div class="cardFavorite_detail">
									<div class="cardFavorite_detail-name">
										<p>Nha Trang</p>
									</div>
									<div class="cardFavorite_detail-come">
										<p>Đã có:</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p class="come_number">387,467</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p>lượt khách</p>
									</div>
								</div>
							</div>
						</div>
						<div class="items_DiaDiemUuThich col-xl">
							<div class="cardFavorite">
								<div class="cardFavorite_img">
									<a href=""> <img src="/resources/img/favorite1 (4).png"
										alt="">
									</a>
								</div>
								<div class="cardFavorite_detail">
									<div class="cardFavorite_detail-name">
										<p>Đà nẵng</p>
									</div>
									<div class="cardFavorite_detail-come">
										<p>Đã có:</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p class="come_number">987,467</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p>lượt khách</p>
									</div>
								</div>
							</div>
						</div>
						<div class="items_DiaDiemUuThich col-xl">
							<div class="cardFavorite">
								<div class="cardFavorite_img">
									<a href=""> <img src="/resources/img/favorite1 (5).png"
										alt="">
									</a>
								</div>
								<div class="cardFavorite_detail">
									<div class="cardFavorite_detail-name">
										<p>Châu Úc</p>
									</div>
									<div class="cardFavorite_detail-come">
										<p>Đã có:</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p class="come_number">987,997</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p>lượt khách</p>
									</div>
								</div>
							</div>
						</div>
						<div class="items_DiaDiemUuThich col-xl">
							<div class="cardFavorite">
								<div class="cardFavorite_img">
									<a href=""> <img src="/resources/img/favorite1 (6).png"
										alt="">
									</a>
								</div>
								<div class="cardFavorite_detail">
									<div class="cardFavorite_detail-name">
										<p>Châu Mỹ</p>
									</div>
									<div class="cardFavorite_detail-come">
										<p>Đã có:</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p class="come_number">777,467</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p>lượt khách</p>
									</div>
								</div>
							</div>
						</div>
						<div class="items_DiaDiemUuThich col-xl">
							<div class="cardFavorite">
								<div class="cardFavorite_img">
									<a href=""> <img src="/resources/img/favorite1 (7).png"
										alt="">
									</a>
								</div>
								<div class="cardFavorite_detail">
									<div class="cardFavorite_detail-name">
										<p>Châu Âu</p>
									</div>
									<div class="cardFavorite_detail-come">
										<p>Đã có:</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p class="come_number">667,467</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p>lượt khách</p>
									</div>
								</div>
							</div>
						</div>
						<div class="items_DiaDiemUuThich col-xl">
							<div class="cardFavorite">
								<div class="cardFavorite_img">
									<a href=""> <img src="/resources/img/favorite1 (8).png"
										alt="">
									</a>
								</div>
								<div class="cardFavorite_detail">
									<div class="cardFavorite_detail-name">
										<p>Châu Á</p>
									</div>
									<div class="cardFavorite_detail-come">
										<p>Đã có:</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p class="come_number">999,999</p>
										<p style="padding: 0 2px 0px 2px;"></p>
										<p>lượt khách</p>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="reason">
					<h1 class="title_reason">Vì sao nên chọn Travel.co</h1>
					<div class="listReason row">
						<div class="col-xl">
							<div class="item_reason">
								<div class="item_reason-icon">
									<img src="/resources/library/icon/reason (1).svg" alt="">
									<img src="/resources/library/icon/credit-card-check.svg" alt="">
								</div>
								<div class="item_reason-name">
									<p>Thanh toán</p>
								</div>
								<div class="item_reason-detail">
									<p>Thanh toán tiện lợi, dễ dàng</p>
								</div>
							</div>
						</div>
						<div class="col-xl">
							<div class="item_reason">
								<div class="item_reason-icon">
									<img src="/resources/library/icon/reason (1).svg" alt="">
									<img src="/resources/library/icon/check-verified-03.svg" alt="">
								</div>
								<div class="item_reason-name">
									<p>Sản phẩm - Dịch vụ</p>
								</div>
								<div class="item_reason-detail">
									<p>Đa dạng, chất lượng cao, an toàn</p>
								</div>
							</div>
						</div>
						<div class="col-xl item_center">
							<div class="item_reason">
								<div class="item_reason-icon">
									<img src="/resources/library/icon/reason (1).svg" alt="">
									<img src="/resources/library/icon/message-smile-square.svg"
										alt="">
								</div>
								<div class="item_reason-name">
									<p>Hỗ trợ</p>
								</div>
								<div class="item_reason-detail">
									<p>Hotline & trực tuyến (08h00 - 22h00)</p>
								</div>
							</div>
						</div>
						<div class="col-xl">
							<div class="item_reason">
								<div class="item_reason-icon">
									<img src="/resources/library/icon/reason (1).svg" alt="">
									<img src="/resources/library/icon/wallet-02.svg" alt="">
								</div>
								<div class="item_reason-name">
									<p>Giá cả</p>
								</div>
								<div class="item_reason-detail">
									<p>Luôn có mức giá tốt nhất thị trường</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="footer_content1 row">
			<div class="content_detail col-xl">
				<div class="detail_header">
					<h4>Du lịch trong nước</h4>
				</div>
				<div class="detail_link">
					<a href="">Hạ Lọng</a> <a href="">Ninh Bình</a> <a href="">Đà
						Nẵng</a> <a href="">Hội An</a>
				</div>
			</div>
			<div class="content_detail col-xl">
				<div class="detail_header">
					<h4>Du lịch nước ngoài</h4>
				</div>
				<div class="detail_link">
					<a href="">Ấn Độ</a> <a href="">Hàn Quốc</a> <a href="">Úc</a> <a
						href="">Singapore</a>
				</div>
			</div>
			<div class="content_detail col-xl">
				<div class="detail_header">
					<h4>Dòng Tour</h4>
				</div>
				<div class="detail_link">
					<a href="">Cao cấp</a> <a href="">Tiêu chuẩn</a> <a href="">Tiết
						kiệm</a> <a href="">Giá tốt</a>
				</div>
			</div>
			<div class="content_detail col-xl">
				<div class="detail_header">
					<h4>Ứng dụng di động</h4>
				</div>
				<div class="detail_app">
					<div class="app_android">
						<p>Android</p>
						<a href=""> <img src="/resources/library/icon/android.svg"
							alt="">
						</a>
					</div>
					<div class="app_ios">
						<p>IOS</p>
						<a href=""> <img src="/resources/library/icon/ios.svg" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_content2 row">
			<div class="content_detail2 col-xl">
				<div class="detail_header">
					<h4>Liên hệ</h4>
				</div>
				<div class="detail_link">
					<a href="">190 Pasteur, Phường Võ Thị Sáu, Quận 3, TPHCM</a> <a
						href="">(+84 28) 3822 8898</a> <a href="">(+84 28) 3829 9142</a> <a
						href="">info@travelco.com</a>
				</div>
			</div>
			<div class="content_detail2 col-xl">
				<div class="detail_header">
					<h4>Thông tin</h4>
				</div>
				<div class="detail_link">
					<a href="">Tạp chí du lịch</a> <a href="">Tin tức</a> <a href="">Site
						map</a> <a href="">Chính sách quyền riêng tư</a> <a href="">Thỏa
						thuận sử dụng</a>
				</div>
			</div>
			<div class="content_detail2 col-xl">
				<div class="detail_header">
					<h4>Chứng nhận</h4>
				</div>
				<div class="detail_link">
					<a href=""> <img class="chungnhan1"
						src="/resources/img/chungnhan1.png" alt="">
					</a> <a href=""> <img src="/resources/img/chungnhan2.png" alt="">
					</a>
				</div>
			</div>
			<div class="content_detail2 col-xl">
				<div class="detail_header">
					<h4>Chứng nhận thanh toán</h4>
				</div>
				<div class="detail_link">
					<div class="thanhtoan_row">
						<a href=""> <img src="/resources/img/thanhtoan (1).png" alt="">
						</a> <a href=""> <img style="padding-left: 20px;"
							src="/resources/img/thanhtoan (2).png" alt="">
						</a>
					</div>
					<div class="thanhtoan_row">
						<a href=""> <img src="/resources/img/thanhtoan (3).png" alt="">
						</a> <a href=""> <img style="padding-left: 20px;"
							src="/resources/img/thanhtoan (4).png" alt="">
						</a>
					</div>
					<div class="thanhtoan_row">
						<a href=""> <img src="/resources/img/thanhtoan (5).png" alt="">
						</a> <a href=""> <img style="padding-left: 20px;"
							src="/resources/img/thanhtoan (6).png" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_content3 row">
			<div class="content_detail col-xl">
				<div class="detail_header">
					<h4>Mạng xã hội</h4>
				</div>
				<div class="mxh">
					<a href=""> <img src="/resources/library/icon/facebook.svg"
						alt="">
					</a> <a href=""> <img src="/resources/library/icon/ins.svg" alt="">
					</a> <a href=""> <img src="/resources/library/icon/youtube.svg"
						alt="">
					</a> <a href=""> <img src="/resources/library/icon/mxh.svg" alt="">
					</a>
				</div>
			</div>
			<div class="content_detail col-xl">
				<div class="detail_header">
					<h4>Hot Line</h4>
				</div>
				<div class="detail_hotline">
					<input type="button" value="1900 1113"> <img
						src="/resources/library/icon/phone.svg" alt="">
				</div>
				<p>Từ 8:00 - 22:00 hàng ngày</p>
			</div>
			<div class="content_detail col-xl">
				<div class="detail_header">
					<h4>Nhận tin qua Email</h4>
				</div>
				<div class="detail_input">
					<form action="">
						<input type="email" placeholder="nhập email ..."> <img
							src="/resources/library/icon/email.svg" alt=""> <input
							type="button" value="Gửi">
					</form>
				</div>
			</div>
			<div class="content_detail col-xl">
				<div class="detail_header">
					<h5>n</h5>
				</div>
				<div class="detail_app"></div>
			</div>
		</div>
	</div>
	<div class="giayphep">
		<p>Số giấy phép kinh doanh lữ hành Quốc tế: 79-234/2014/TCDL-GP
			LHQT</p>
	</div>
</body>

</html>