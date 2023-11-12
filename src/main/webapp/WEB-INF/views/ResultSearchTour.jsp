<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Travel.co</title>
<link type="text/css" rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="/resources/css/Result.css">
<!-- <link rel="stylesheet" href="/resources/css/Home.css"> -->
<link type="text/css" rel="stylesheet" href="/resources/css/Header_Footer.css">
<script src="/resources/js/Result.js"></script>

</head>

<body>

	<div class="menu_header">
		<div class="logo col-sm-3">
			<a href=""> <img src="../img/Logo.png" alt="">
			</a>
		</div>
		<div class="menu col-sm-6 navbar">
			<ul class="menu_list navbar-nav">
				<li class="menu_item nav-item"><a class="nav-link" href="#">Trang
						chủ</a></li>
				<li class="menu_item nav-item"><a class="nav-link" href="#">Du
						lịch</a></li>
				<li class="menu_item nav-item"><a class="nav-link" href="#">Tin
						tức</a></li>
				<li class="menu_item nav-item"><a class="nav-link" href="#">Liên
						hệ</a></li>
				<li class="menu_item nav-item"><a class="nav-link" href="#">Khuyến
						mãi</a></li>
			</ul>
		</div>
		<div class="btnLogin_Cart col-sm-3">
			<input type="button" value="Đăng nhập"> <a href=""> <img
				src="../../library/icon/Cart.svg" alt="cart">
			</a>
		</div>
	</div>
	<div class="containerx">
		<div class="row" style="margin-top: 30px; margin-bottom: 20px;">
			<ul class="wrapper">
				<li itemprop=""><a href="#">Du lịch</a></li> &raquo;
				<li><a href="#">Danh sách tour du lịch</a></li>
			</ul>
		</div>
		<div class="section">
			<form action="" >
				<div>
					<div class="section1">
						<div style="padding-left: 25px;">
							<h3 s>
								Lọc kết quả
								</h1>
						</div>
						<div class="first-row">
							<h5>Bà Rịa - Vũng Tàu</h5>
						</div>

						<div class="section_filter" style="padding-left: 25px;">
							<div class="row-filter">
								<label>Loại hình tour</label><br> <select name="loaiTour"
									id="loaiTour" class="custom-select">
									<option value="-1" selected>--Tất cả--</option>
									<option value="0">Tour trọn gói</option>
									<option value="1">Tour gia đình</option>
								</select>
							</div>
							<div class="row-filter">
								<label>Khởi hành</label><br>
								<form action="" method="get">
									<select name="departureId" id="departureId"
										class="custom-select">
										<option value="0" selected>--Tất cả--</option>
										<c:forEach var="tempDep" items="${LISTDEP}">
											<option value="${tempDep.departureId}">${tempDep.location}</option>
										</c:forEach>

									</select>
								</form>
							</div>
							<div class="row-filter">
								<label>Điểm đến</label><br>
								<form action="" method="get"> 
								<select name="destinationId"
									id="destinationId" class="custom-select">
									<option value="0" selected>--Chọn điểm đến--</option>
									<c:forEach var="tempDes" items="${LISTDES}">
											<option value="${tempDes.destinationId}">${tempDes.location}</option>
										</c:forEach>
								</select>
								</form>
							</div>
							<div class="row-filter-2">
								<label>Số ngày</label><br>
								<div class="btn-group" role="group">
									<div>
										<button class="btn col" id="" value="1-3">1-3 ngày</button>
										<button class="btn col" id="" value="8-14">8-14 ngày</button>
									</div>

									<div>
										<button class="btn col" id="" value="4-7">4-7 ngày</button>
										<button class="btn col" id="" value="15+">Trên 14
											ngày</button>
									</div>
								</div>
							</div>
							<div class="row-filter">
								<label>Ngày đi</label><br>
								<div class="date-box">
									<!-- set không cho chọn các ngày hôm đặt 2 ngày -->
									<input type="date" min="2023-09-14">
								</div>
							</div>
							<div class="row-filter-2">
								<label>Số người</label><br>
								<div class="btn-group" role="group">
									<div>
										<button class="btn col" id="" value="1">1 người</button>
										<button class="btn col" id="" value="3-5">3-5 người</button>
									</div>

									<div>
										<button class="btn col" id="" value="2">2 người</button>
										<button class="btn col" id="" value="5+">5+ người</button>
									</div>
								</div>
							</div>
							<div class="row-filter-2">
								<label>Dòng tour</label><br>
								<div class="btn-group" role="group">
									<div>
										<button class="btn col" id="" value="caocap">Cao cấp</button>
										<button class="btn col" id="" value="tietkiem">Tiết
											kiệm</button>
									</div>

									<div>
										<button class="btn col" id="" value="tieuchuan">Tiêu
											chuẩn</button>
										<button class="btn col" id="" value="giatot">Giá tốt</button>
									</div>
								</div>
							</div>
							<div style="margin-bottom: 10px;">
								<span style="margin: 0; width: 45%; font-weight: bold;">Bộ
									lọc tìm kiếm</span>
								<hr
									style="float: right; clear: both; border-top: 1px solid #000; width: 65%;">
							</div>
							<div class="row-filter-2">
								<label>Ngân sách</label><br>
								<div class="btn-group" role="group">
									<div>
										<button class="btn col" id="" value="0-1 triệu">0-1
											triệu</button>
										<button class="btn col" id="" value="2-5">2-5 triệu</button>
									</div>

									<div>
										<button class="btn col" id="" value="1-2">1-2 triệu</button>
										<button class="btn col" id="" value="5+">5+ triệu</button>
									</div>
								</div>
							</div>
							<div class="row-filter-2">
								<label>Thông tin vận chuyển</label><br>
								<div class="btn-group" role="group">
									<div class="row" style="margin: 0;">
										<button class="btn col" id="" value="maybay">Máy bay</button>
										<button class="btn col" id="" value="oto">Ô tô</button>
									</div>
								</div>
							</div>
							<div>
								<label style="margin-bottom: 10px;">Hiển thị những
									chuyến đi</label><br>
								<div>
									<label class="slider-checkbox"> <input type="checkbox"
										id="khuyenMai"> <span class="slider"></span>
									</label> <span>Khuyến mãi</span>
								</div>
								<div>
									<label class="slider-checkbox"> <input type="checkbox"
										id="conCho"> <span class="slider"></span>
									</label> <span>Còn chỗ</span>
								</div>
							</div>
						</div>
					</div>
					<div class="section2">
						<div style="display: flex; margin-top: 20px;">
							<div
								style="float: left; display: flex; width: 30%; justify-items: center; align-items: center;">
								<p>
									Chúng tôi tìm thấy <span
										style="font-weight: bold; color: #3B0EEE;">20</span> tour
								</p>
							</div>
							<div
								style="float: right; width: 250px; position: relative; right: -40%;">
								<span>sắp xếp theo</span> <select name="sapXep" id=""
									class="custom-select"
									style="width: 150px; height: 40px; text-align: center;">
									<option value="0" selected>--Tất cả--</option>
									<option value="1">option1</option>
									<option value="2">option2</option>
								</select>
							</div>
						</div>
						<div class="row row-cols-3" style="clear: both;">
							<div class="item-card">
								<div class="card">
									<div class="card-img">
										<a href="#"> <img class="card-avt"
											src="../img/Vungtau (1).png" alt="img">
										</a> <a href="#"> <img class="card-icon"
											src="../../library/icon/favourite.svg" alt="">
										</a>
									</div>
									<div class="card-content">
										<div style="margin-bottom: 5px;">
											<div class="card-inf1">Giá tốt</div>
											<div class="card-inf2">
												Số chỗ còn <span style="color: red; margin-left: 10px;">04</span>
											</div>
										</div>
										<div
											style="opacity: 70%; clear: both; font-size: smaller; margin-bottom: 5px;">
											<span>09/11/2023</span> &ndash; <span>6 ngày</span>
										</div>
										<div class="card-title">
											<a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long -
												Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
										</div>
										<div style="opacity: 70%; font-size: smaller;">
											<span>Nơi khởi hành: </span><span>TP. Hồ Chí Minh</span>
										</div>
										<div
											style="color: red; font-size: x-large; font-weight: bold;">
											<span>10,799,000</span><span> vnđ</span>
										</div>
									</div>
									<div class="card-btn row row-cols-2">
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn"
													style="background-color: #3B0EEE; color: #fff;">
													<span><img src="../../library/icon/add.svg" alt="">
														Đặt ngay</span>
												</div>
											</a>
										</div>
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn">
													<span><img src="../../library/icon/detail.svg"
														alt=""> Chi tiết</span>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item-card">
								<div class="card">
									<div class="card-img">
										<a href="#"> <img class="card-avt"
											src="../img/Vungtau (1).png" alt="img">
										</a> <a href="#"> <img class="card-icon"
											src="../../library/icon/favourite.svg" alt="">
										</a>
									</div>
									<div class="card-content">
										<div style="margin-bottom: 5px;">
											<div class="card-inf1">Giá tốt</div>
											<div class="card-inf2">
												Số chỗ còn <span style="color: red; margin-left: 10px;">04</span>
											</div>
										</div>
										<div
											style="opacity: 70%; clear: both; font-size: smaller; margin-bottom: 5px;">
											<span>09/11/2023</span> &ndash; <span>6 ngày</span>
										</div>
										<div class="card-title">
											<a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long -
												Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
										</div>
										<div style="opacity: 70%; font-size: smaller;">
											<span>Nơi khởi hành: </span><span>TP. Hồ Chí Minh</span>
										</div>
										<div
											style="color: red; font-size: x-large; font-weight: bold;">
											<span>10,799,000</span><span> vnđ</span>
										</div>
									</div>
									<div class="card-btn row row-cols-2">
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn"
													style="background-color: #3B0EEE; color: #fff;">
													<span><img src="../../library/icon/add.svg" alt="">
														Đặt ngay</span>
												</div>
											</a>
										</div>
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn">
													<span><img src="../../library/icon/detail.svg"
														alt=""> Chi tiết</span>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item-card">
								<div class="card">
									<div class="card-img">
										<a href="#"> <img class="card-avt"
											src="../img/Vungtau (1).png" alt="img">
										</a> <a href="#"> <img class="card-icon"
											src="../../library/icon/favourite.svg" alt="">
										</a>
									</div>
									<div class="card-content">
										<div style="margin-bottom: 5px;">
											<div class="card-inf1">Giá tốt</div>
											<div class="card-inf2">
												Số chỗ còn <span style="color: red; margin-left: 10px;">04</span>
											</div>
										</div>
										<div
											style="opacity: 70%; clear: both; font-size: smaller; margin-bottom: 5px;">
											<span>09/11/2023</span> &ndash; <span>6 ngày</span>
										</div>
										<div class="card-title">
											<a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long -
												Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
										</div>
										<div style="opacity: 70%; font-size: smaller;">
											<span>Nơi khởi hành: </span><span>TP. Hồ Chí Minh</span>
										</div>
										<div
											style="color: red; font-size: x-large; font-weight: bold;">
											<span>10,799,000</span><span> vnđ</span>
										</div>
									</div>
									<div class="card-btn row row-cols-2">
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn"
													style="background-color: #3B0EEE; color: #fff;">
													<span><img src="../../library/icon/add.svg" alt="">
														Đặt ngay</span>
												</div>
											</a>
										</div>
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn">
													<span><img src="../../library/icon/detail.svg"
														alt=""> Chi tiết</span>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item-card">
								<div class="card">
									<div class="card-img">
										<a href="#"> <img class="card-avt"
											src="../img/Vungtau (1).png" alt="img">
										</a> <a href="#"> <img class="card-icon"
											src="../../library/icon/favourite.svg" alt="">
										</a>
									</div>
									<div class="card-content">
										<div style="margin-bottom: 5px;">
											<div class="card-inf1">Giá tốt</div>
											<div class="card-inf2">
												Số chỗ còn <span style="color: red; margin-left: 10px;">04</span>
											</div>
										</div>
										<div
											style="opacity: 70%; clear: both; font-size: smaller; margin-bottom: 5px;">
											<span>09/11/2023</span> &ndash; <span>6 ngày</span>
										</div>
										<div class="card-title">
											<a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long -
												Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
										</div>
										<div style="opacity: 70%; font-size: smaller;">
											<span>Nơi khởi hành: </span><span>TP. Hồ Chí Minh</span>
										</div>
										<div
											style="color: red; font-size: x-large; font-weight: bold;">
											<span>10,799,000</span><span> vnđ</span>
										</div>
									</div>
									<div class="card-btn row row-cols-2">
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn"
													style="background-color: #3B0EEE; color: #fff;">
													<span><img src="../../library/icon/add.svg" alt="">
														Đặt ngay</span>
												</div>
											</a>
										</div>
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn">
													<span><img src="../../library/icon/detail.svg"
														alt=""> Chi tiết</span>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item-card">
								<div class="card">
									<div class="card-img">
										<a href="#"> <img class="card-avt"
											src="../img/Vungtau (1).png" alt="img">
										</a> <a href="#"> <img class="card-icon"
											src="../../library/icon/favourite.svg" alt="">
										</a>
									</div>
									<div class="card-content">
										<div style="margin-bottom: 5px;">
											<div class="card-inf1">Giá tốt</div>
											<div class="card-inf2">
												Số chỗ còn <span style="color: red; margin-left: 10px;">04</span>
											</div>
										</div>
										<div
											style="opacity: 70%; clear: both; font-size: smaller; margin-bottom: 5px;">
											<span>09/11/2023</span> &ndash; <span>6 ngày</span>
										</div>
										<div class="card-title">
											<a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long -
												Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
										</div>
										<div style="opacity: 70%; font-size: smaller;">
											<span>Nơi khởi hành: </span><span>TP. Hồ Chí Minh</span>
										</div>
										<div
											style="color: red; font-size: x-large; font-weight: bold;">
											<span>10,799,000</span><span> vnđ</span>
										</div>
									</div>
									<div class="card-btn row row-cols-2">
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn"
													style="background-color: #3B0EEE; color: #fff;">
													<span><img src="../../library/icon/add.svg" alt="">
														Đặt ngay</span>
												</div>
											</a>
										</div>
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn">
													<span><img src="../../library/icon/detail.svg"
														alt=""> Chi tiết</span>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item-card">
								<div class="card">
									<div class="card-img">
										<a href="#"> <img class="card-avt"
											src="../img/Vungtau (1).png" alt="img">
										</a> <a href="#"> <img class="card-icon"
											src="../../library/icon/favourite.svg" alt="">
										</a>
									</div>
									<div class="card-content">
										<div style="margin-bottom: 5px;">
											<div class="card-inf1">Giá tốt</div>
											<div class="card-inf2">
												Số chỗ còn <span style="color: red; margin-left: 10px;">04</span>
											</div>
										</div>
										<div
											style="opacity: 70%; clear: both; font-size: smaller; margin-bottom: 5px;">
											<span>09/11/2023</span> &ndash; <span>6 ngày</span>
										</div>
										<div class="card-title">
											<a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long -
												Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
										</div>
										<div style="opacity: 70%; font-size: smaller;">
											<span>Nơi khởi hành: </span><span>TP. Hồ Chí Minh</span>
										</div>
										<div
											style="color: red; font-size: x-large; font-weight: bold;">
											<span>10,799,000</span><span> vnđ</span>
										</div>
									</div>
									<div class="card-btn row row-cols-2">
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn"
													style="background-color: #3B0EEE; color: #fff;">
													<span><img src="../../library/icon/add.svg" alt="">
														Đặt ngay</span>
												</div>
											</a>
										</div>
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn">
													<span><img src="../../library/icon/detail.svg"
														alt=""> Chi tiết</span>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item-card">
								<div class="card">
									<div class="card-img">
										<a href="#"> <img class="card-avt"
											src="../img/Vungtau (1).png" alt="img">
										</a> <a href="#"> <img class="card-icon"
											src="../../library/icon/favourite.svg" alt="">
										</a>
									</div>
									<div class="card-content">
										<div style="margin-bottom: 5px;">
											<div class="card-inf1">Giá tốt</div>
											<div class="card-inf2">
												Số chỗ còn <span style="color: red; margin-left: 10px;">04</span>
											</div>
										</div>
										<div
											style="opacity: 70%; clear: both; font-size: smaller; margin-bottom: 5px;">
											<span>09/11/2023</span> &ndash; <span>6 ngày</span>
										</div>
										<div class="card-title">
											<a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long -
												Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
										</div>
										<div style="opacity: 70%; font-size: smaller;">
											<span>Nơi khởi hành: </span><span>TP. Hồ Chí Minh</span>
										</div>
										<div
											style="color: red; font-size: x-large; font-weight: bold;">
											<span>10,799,000</span><span> vnđ</span>
										</div>
									</div>
									<div class="card-btn row row-cols-2">
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn"
													style="background-color: #3B0EEE; color: #fff;">
													<span><img src="../../library/icon/add.svg" alt="">
														Đặt ngay</span>
												</div>
											</a>
										</div>
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn">
													<span><img src="../../library/icon/detail.svg"
														alt=""> Chi tiết</span>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item-card">
								<div class="card">
									<div class="card-img">
										<a href="#"> <img class="card-avt"
											src="../img/Vungtau (1).png" alt="img">
										</a> <a href="#"> <img class="card-icon"
											src="../../library/icon/favourite.svg" alt="">
										</a>
									</div>
									<div class="card-content">
										<div style="margin-bottom: 5px;">
											<div class="card-inf1">Giá tốt</div>
											<div class="card-inf2">
												Số chỗ còn <span style="color: red; margin-left: 10px;">04</span>
											</div>
										</div>
										<div
											style="opacity: 70%; clear: both; font-size: smaller; margin-bottom: 5px;">
											<span>09/11/2023</span> &ndash; <span>6 ngày</span>
										</div>
										<div class="card-title">
											<a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long -
												Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
										</div>
										<div style="opacity: 70%; font-size: smaller;">
											<span>Nơi khởi hành: </span><span>TP. Hồ Chí Minh</span>
										</div>
										<div
											style="color: red; font-size: x-large; font-weight: bold;">
											<span>10,799,000</span><span> vnđ</span>
										</div>
									</div>
									<div class="card-btn row row-cols-2">
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn"
													style="background-color: #3B0EEE; color: #fff;">
													<span><img src="../../library/icon/add.svg" alt="">
														Đặt ngay</span>
												</div>
											</a>
										</div>
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn">
													<span><img src="../../library/icon/detail.svg"
														alt=""> Chi tiết</span>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="item-card">
								<div class="card">
									<div class="card-img">
										<a href="#"> <img class="card-avt"
											src="../img/Vungtau (1).png" alt="img">
										</a> <a href="#"> <img class="card-icon"
											src="../../library/icon/favourite.svg" alt="">
										</a>
									</div>
									<div class="card-content">
										<div style="margin-bottom: 5px;">
											<div class="card-inf1">Giá tốt</div>
											<div class="card-inf2">
												Số chỗ còn <span style="color: red; margin-left: 10px;">04</span>
											</div>
										</div>
										<div
											style="opacity: 70%; clear: both; font-size: smaller; margin-bottom: 5px;">
											<span>09/11/2023</span> &ndash; <span>6 ngày</span>
										</div>
										<div class="card-title">
											<a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long -
												Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
										</div>
										<div style="opacity: 70%; font-size: smaller;">
											<span>Nơi khởi hành: </span><span>TP. Hồ Chí Minh</span>
										</div>
										<div
											style="color: red; font-size: x-large; font-weight: bold;">
											<span>10,799,000</span><span> vnđ</span>
										</div>
									</div>
									<div class="card-btn row row-cols-2">
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn"
													style="background-color: #3B0EEE; color: #fff;">
													<span><img src="../../library/icon/add.svg" alt="">
														Đặt ngay</span>
												</div>
											</a>
										</div>
										<div style="padding: 0 5px 0 5px;">
											<a href="#">
												<div class="a-btn">
													<span><img src="../../library/icon/detail.svg"
														alt=""> Chi tiết</span>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="pag">
							<ul class="pagination">
								<li class="page-item "><a class="page-link" href="#">Previous</a></li>
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="section3">
					<h1>Điểm đến ưa thích</h1>
					<div class=" row row-cols-4 "
						style="display: flex; align-items: center; justify-content: center;">
						<div class="card "
							style="width: 300px; height: 300px; border: none; margin: 10px; background-color: transparent;">
							<div class="card-img " style="height: 200px;">
								<a href="# "><img class="card-avt "
									src="../img/favorite1 (1).png " alt="img "></a>
							</div>
							<div class="card-title "
								style="width: 100%; height: 40px; font-size: 25px; margin-top: 20px;">
								<a href="# ">Đà Nẵng</a>
							</div>
						</div>
						<div class="card "
							style="width: 300px; height: 300px; border: none; margin: 10px; background-color: transparent;">
							<div class="card-img " style="height: 200px;">
								<a href="# "><img class="card-avt "
									src="../img/favorite1 (1).png " alt="img "></a>
							</div>
							<div class="card-title "
								style="width: 100%; height: 40px; font-size: 25px; margin-top: 20px;">
								<a href="# ">Đà Nẵng</a>
							</div>
						</div>
						<div class="card "
							style="width: 300px; height: 300px; border: none; margin: 10px; background-color: transparent;">
							<div class="card-img " style="height: 200px;">
								<a href="# "><img class="card-avt "
									src="../img/favorite1 (1).png " alt="img "></a>
							</div>
							<div class="card-title "
								style="width: 100%; height: 40px; font-size: 25px; margin-top: 20px;">
								<a href="# ">Đà Nẵng</a>
							</div>
						</div>
						<div class="card "
							style="width: 300px; height: 300px; border: none; margin: 10px; background-color: transparent;">
							<div class="card-img " style="height: 200px;">
								<a href="# "><img class="card-avt "
									src="../img/favorite1 (1).png " alt="img "></a>
							</div>
							<div class="card-title "
								style="width: 100%; height: 40px; font-size: 25px; margin-top: 20px;">
								<a href="# ">Đà Nẵng</a>
							</div>
						</div>
					</div>
				</div>
		</div>
		</form>
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
						<a href=""> <img src="../../library/icon/android.svg" alt="">
						</a>
					</div>
					<div class="app_ios">
						<p>IOS</p>
						<a href=""> <img src="../../library/icon/ios.svg" alt="">
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
					<a href=""> <img class="chungnhan1" src="../img/chungnhan1.png"
						alt="">
					</a> <a href=""> <img src="../img/chungnhan2.png" alt="">
					</a>
				</div>
			</div>
			<div class="content_detail2 col-xl">
				<div class="detail_header">
					<h4>Chứng nhận thanh toán</h4>
				</div>
				<div class="detail_link">
					<div class="thanhtoan_row">
						<a href=""> <img src="../img/thanhtoan (1).png" alt="">
						</a> <a href=""> <img style="padding-left: 20px;"
							src="../img/thanhtoan (2).png" alt="">
						</a>
					</div>
					<div class="thanhtoan_row">
						<a href=""> <img src="../img/thanhtoan (3).png" alt="">
						</a> <a href=""> <img style="padding-left: 20px;"
							src="../img/thanhtoan (4).png" alt="">
						</a>
					</div>
					<div class="thanhtoan_row">
						<a href=""> <img src="../img/thanhtoan (5).png" alt="">
						</a> <a href=""> <img style="padding-left: 20px;"
							src="../img/thanhtoan (6).png" alt="">
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
					<a href=""> <img src="../../library/icon/facebook.svg" alt="">
					</a> <a href=""> <img src="../../library/icon/ins.svg" alt="">
					</a> <a href=""> <img src="../../library/icon/youtube.svg" alt="">
					</a> <a href=""> <img src="../../library/icon/mxh.svg" alt="">
					</a>
				</div>
			</div>
			<div class="content_detail col-xl">
				<div class="detail_header">
					<h4>Hot Line</h4>
				</div>
				<div class="detail_hotline">
					<input type="button" value="1900 1113"> <img
						src="../../library/icon/phone.svg" alt="">
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
							src="../../library/icon/email.svg" alt=""> <input
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