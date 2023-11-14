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
					<div class="logo col-sm-3">
						<img src="/resources/img/Logo.png" alt="logo">
					</div>
					<div class="menu col-sm-6 navbar">
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
						</ul>
					</div>
					<div class="btnLogin_Cart col-sm-3">
						<input type="button" value="Đăng nhập"
							onclick="window.location.href='login';return false;"> <a
							href="#"> <img src="/resources/library/icon/Cart.svg"
							alt="cart">
						</a>
					</div>
				</div>
				<!--                 <div class="search">
                    <div class="menu_search">
                        <ul class="menu_search-list nav nav-tabs" role="tablist">
                            <li class="menu_search-item"><a class=" active" data-bs-toggle="tab" href="#home">Tour trọn
                                    gói</a></li>
                            <li class="menu_search-item"><a class="" data-bs-toggle="tab" href="#home2">Khách sạn</a>
                            </li>
                            <li class="menu_search-item "><a class="" data-bs-toggle="tab" href="#home3">Vé máy bay</a>
                            </li>
                            <li class="menu_search-item "><a class="" data-bs-toggle="tab" href="#home4">Combo VMB +
                                    KS</a></li>
                            <li class="menu_search-item "><a class="" data-bs-toggle="tab" href="#home5">Combo Xe +
                                    KS</a></li>
                            <li class="menu_search-item "><a class="" data-bs-toggle="tab" href="#home6">Tra cứu</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div id="home" class=" home tab-pane active" style="position: absolute;"><br>
                                <div class="menu_search-option">
                                    <div class="btn_option">
                                        <ul class="nav nav-tabs" role="tablist" style="border: none;">
                                            <li class="nav-item"><a class="btn_domestic active" data-bs-toggle="tab"
                                                    href="#domecstic1">Trong nước</a></li>
                                            <li class="nav-item"><a class="btn_foreign" data-bs-toggle="tab"
                                                    href="#foreign1">Nước ngoài</a></li>
                                        </ul>
                                    </div>
                                    <div class="tab-content">
                                        <div id="domecstic1" class="domecstic tab-pane active">
                                            <form action="" class="from_search">
                                                <div class="btn_start">
                                                    <p>Khởi hành</p>
                                                    <select class="form_select" id="start-city">
                                                        <option value="Thành phố Hồ Chí Minh" selected>Điểm khởi hành
                                                        </option>
                                                    </select>
                                                    <img src="/resources/library/icon/location-marker.svg" alt="">
                                                </div>
                                                <div class="btn_destination">
                                                    <p>Điểm đến</p>
                                                    <select class="form_select" id="destination-city">
                                                        <option value="">Điểm đến</option>
                                                    </select>
                                                    <img src="/resources/library/icon/location-marker.svg" alt="">
                                                </div>
                                                <div class="btn_date">
                                                    <p>Ngày khởi hành</p>
                                                    <input type="date" class="form_select" id="date-start"
                                                        value="2023-09-10">
                                                    <img src="/resources/library/icon/calendar-date.svg" alt="">
                                                </div>
                                                <div class="btn_date">
                                                    <p>Ngày kết thúc</p>
                                                    <input type="date" class="form_select" id="date-end"
                                                        value="2023-09-10">
                                                    <img src="/resources/library/icon/calendar-date.svg" alt="">
                                                </div>
                                                <div class="btn_search">
                                                    <input type="submit" value="Tìm kiếm">
                                                    <img src="/resources/library/icon/search.svg" alt="search">
                                                </div>
                                            </form>
                                        </div>
                                        <div id="foreign1" class="foreign tab-pane fade">
                                            <form action="" class="from_search">
                                                <div class="btn_start">
                                                    <p>Khởi hành</p>
                                                    <select class="form_select" id="start-city1">
                                                        <option value="Thành phố Hồ Chí Minh" selected>Điểm khởi hành
                                                        </option>
                                                    </select>
                                                    <img src="/resources/library/icon/location-marker.svg" alt="">
                                                </div>
                                                <div class="btn_destination">
                                                    <p>Điểm đến</p>
                                                    <select class="form_select" id="destination-city">
                                                        <option value="">Điểm đến</option>
                                                    </select>
                                                    <img src="/resources/library/icon/location-marker.svg" alt="">
                                                </div>
                                                <div class="btn_date">
                                                    <p>Ngày khởi hành</p>
                                                    <input type="date" class="form_select" id="date-start"
                                                        value="2023-09-09">
                                                    <img src="/resources/library/icon/calendar-date.svg" alt="">
                                                </div>
                                                <div class="btn_date">
                                                    <p>Ngày kết thúc</p>
                                                    <input type="date" class="form_select" id="date-end"
                                                        value="2023-09-09">
                                                    <img src="/resources./library/icon/calendar-date.svg" alt="">
                                                </div>
                                                <div class="btn_search">
                                                    <input type="submit" value="Tìm kiếm">
                                                    <img src="/resources/library/icon/search.svg" alt="search">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="home2" class=" home2 tab-pane fade" style="position: absolute;">
                                <form action="" class="form_home2">
                                    <div class="menu_Ks">
                                        <div class="menu_Ks-1">
                                            <div class="input1">
                                                <div class="label">
                                                    <label for="">Nhập điểm đến hoặc khách sạn</label>
                                                </div>
                                                <div class="input_txt">
                                                    <img src="/resources/library/icon/location-marker.svg" alt="">
                                                    <input type="text" name="" id=""
                                                        placeholder="Thành Phố Hồ Chí Minh">
                                                </div>
                                            </div>
                                            <div class="input2">
                                                <div class="input_txt-1">
                                                    <div class="txt_start">
                                                        <label for="">Ngày đi</label>
                                                        <div class="txt_start-input">
                                                            <img src="/resources/library/icon/calendar-date.svg" alt="">
                                                            <input type="date" name="" id="" value="2023-09-09">
                                                        </div>
                                                    </div>
                                                    <div class="txt_end">
                                                        <label for="">Ngày về</label>
                                                        <div class="txt_end-input">
                                                            <img src="/resources/library/icon/calendar-date.svg" alt="">
                                                            <input type="date" name="" id="" value="2023-09-09">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="menu_Ks-1">
                                            <div class="input3">
                                                <div class="label">
                                                    <label for="">Số người</label>
                                                </div>
                                                <div class="input_txt">
                                                    <img src="/resources/library/icon/person.svg" alt="">
                                                    <input type="number" name="" id="" placeholder="1 Người">
                                                </div>
                                            </div>
                                            <div class="input4">
                                                <div class="input_txt-1">
                                                    <div class="txt_room">
                                                        <label for="">Số phòng</label>
                                                        <div class="txt_room-input">
                                                            <img src="/resources/library/icon/room.svg" alt="">
                                                            <input type="number" name="" id="" placeholder="1 Phòng">
                                                        </div>
                                                    </div>
                                                    <div class="btn-search">
                                                        <div class="btn-search-input">
                                                            <input class="input-search" type="submit" name="" id=""
                                                                value="Tìm kiếm">
                                                            <img class="icon-search" src="/resources/library/icon/search.svg"
                                                                alt="">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div id="home3" class="home3 tab-pane fade" style="position: absolute;">
                                <form action="" class="form_home3">
                                    <div class="search_plane1">
                                        <div class="plane_1">
                                            <label for="">Khởi hành</label>
                                            <select class="form_select" name="" id="">
                                                <option value="">TP. Hồ Chí Minh</option>
                                            </select>
                                            <img src="/resources/library/icon/location-marker.svg" alt="">
                                        </div>
                                        <div class="plane_1">
                                            <label for="">Điểm đến</label>
                                            <select class="form_select" name="" id="">
                                                <option value="">Chọn điểm đến</option>
                                            </select>
                                            <img src="/resources/library/icon/location-marker.svg" alt="">
                                        </div>
                                        <div class="plane_3">
                                            <label for="">Ngày đi</label>
                                            <input type="date" name="" id="" value="2023-09-10">
                                            <img src="/resources/library/icon/calendar-date.svg" alt="">
                                        </div>
                                        <div class="plane_3">
                                            <label for="">Ngày về</label>
                                            <input type="date" name="" id="" value="2023-09-10">
                                            <img src="/resources/library/icon/calendar-date.svg" alt="">
                                        </div>
                                        <div class="plane_5">
                                            <label for="motchieu">Một chiều</label>
                                            <input type="radio" name="btn" id="motchieu" hidden>
                                            <label for="khuhoi">Khứ hồi</label>
                                            <input type="radio" name="btn" id="khuhoi" hidden>
                                        </div>
                                    </div>
                                    <div class="search_plane2">
                                        <div class="plane_6 plane_1">
                                            <label for="">Hãng Bay</label>
                                            <select class="form_select" name="" id="">
                                                <option value="">Bamboo Airway</option>
                                            </select>
                                            <img src="/resources/library/icon/plane.svg" alt="">
                                        </div>
                                        <div class="plane_7 plane_1">
                                            <label for="">Hạng vé</label>
                                            <select class="form_select" name="" id="">
                                                <option value="">Business class</option>
                                            </select> <img
												src="/resources/library/icon/ticket-01.svg" alt="">
										</div>
                                        <div class="plane_8 plane_1">
                                            <label for="">Số hành khách</label>
                                            <select class="form_select" name="" id="">
                                                <option value="">1 Người lớn</option>
                                            </select>
                                            <img src="/resources/library/icon/person.svg" alt="">
                                        </div>
                                        <div class="plane_9">
                                            <div class="btn_search plane_9-btn">
                                                <input type="submit" value="Tìm kiếm">
                                                <img src="/resources/library/icon/search.svg" alt="search">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div id="home4" class="home4 tab-pane fade" style="position: absolute; z-index: 2;">
                                <div class="menu_combo-option">
                                    <div class="btn_option" style="width: 1150px;">
                                        <ul class="nav nav-tabs" role="tablist" style="border: none;">
                                            <li class="nav-item"><a class="btn_domestic active" data-bs-toggle="tab"
                                                    href="#domecstic2">Trong nước</a></li>
                                            <li class="nav-item"><a class="btn_foreign" data-bs-toggle="tab"
                                                    href="#foreign2">Nước ngoài</a></li>
                                        </ul>
                                    </div>
                                    <div class="tab-content">
                                        <div id="domecstic2" class="domecstic tab-pane active">
                                            <form action="" class="form_combo">
                                                <div class="combo_Maybay">
                                                    <h4>Vé máy bay</h4>
                                                    <div class="veMayBay">
                                                        <div class="btn_start">
                                                            <p>Khởi hành</p>
                                                            <select class="form_select" id="start-city">
                                                                <option value="Thành phố Hồ Chí Minh" selected>Điểm khởi
                                                                    hành</option>
                                                            </select>
                                                            <img src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_destination">
                                                            <p>Điểm đến</p>
                                                            <select class="form_select" id="destination-city">
                                                                <option value="">Điểm đến</option>
                                                            </select>
                                                            <img src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_date">
                                                            <p>Ngày khởi hành</p>
                                                            <input type="date" class="form_select" id="date-start"
                                                                value="2023-09-10">
                                                            <img src="/resources/library/icon/calendar-date.svg" alt="">
                                                        </div>
                                                        <div class="btn_date">
                                                            <p>Ngày kết thúc</p>
                                                            <input type="date" class="form_select" id="date-end"
                                                                value="2023-09-10">
                                                            <img src="/resources/library/icon/calendar-date.svg" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="veMayBay2">
                                                        <div class="btn_start">
                                                            <p>Hạng vé</p>
                                                            <select class="form_select" name="" id="">
                                                                <option value="">Business class</option>
                                                            </select>
                                                            <img src="/resources/library/icon/ticket-01.svg" alt="">
                                                        </div>
                                                        <div class=" btn_Numbercus">
                                                            <p>Số hành khách</p>
                                                            <select class="form_select" name="" id="">
                                                                <option value="">1 Người lớn</option>
                                                            </select>
                                                            <img src="/resources/library/icon/person.svg" alt="">
                                                        </div>
                                                        <div class="btn_chuyendi">
                                                            <div class="btnMotChieu">
                                                                <label for="motchieu">Một chiều</label>
                                                                <input type="radio" name="btn" id="motchieu" hidden>
                                                            </div>
                                                            <div class="btnKhuHoi">
                                                                <label for="khuhoi">Khứ hồi</label>
                                                                <input type="radio" name="btn" id="khuhoi" hidden>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="combo_Khachsan">
                                                    <h4>Khách sạn</h4>
                                                    <div class="veKhachSan">
                                                        <div class="btn_DiemDen">
                                                            <p>Nhập điểm đến hoặc tên khách sạn</p>
                                                            <input type="text" name="" id=""
                                                                placeholder="TP. Hồ Chí Minh">
                                                            <img src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_NumberRoom">
                                                            <p>Số phòng</p>
                                                            <select class="form_select" name="" id="">
                                                                <option value="">1 Phòng</option>
                                                            </select>
                                                            <img src="/resources/library/icon/room.svg" alt="">
                                                        </div>
                                                        <div class="btn_Search-ks">
                                                            <input type="submit" value="Tìm kiếm">
                                                            <img src="/resources/library/icon/search.svg" alt="search">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div id="foreign2" class="foreign tab-pane fade">
                                            <form action="" class="form_combo">
                                                <div class="combo_Maybay">
                                                    <h4>Vé máy bay2</h4>
                                                    <div class="veMayBay">
                                                        <div class="btn_start">
                                                            <p>Khởi hành</p>
                                                            <select class="form_select" id="start-city">
                                                                <option value="Thành phố Hồ Chí Minh" selected>Điểm khởi
                                                                    hành</option>
                                                            </select>
                                                            <img src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_destination">
                                                            <p>Điểm đến</p>
                                                            <select class="form_select" id="destination-city">
                                                                <option value="">Điểm đến</option>
                                                            </select>
                                                            <img src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_date">
                                                            <p>Ngày khởi hành</p>
                                                            <input type="date" class="form_select" id="date-start"
                                                                value="2023-09-10">
                                                            <img src="/resources/library/icon/calendar-date.svg" alt="">
                                                        </div>
                                                        <div class="btn_date">
                                                            <p>Ngày kết thúc</p>
                                                            <input type="date" class="form_select" id="date-end"
                                                                value="2023-09-10">
                                                            <img src="/resources/library/icon/calendar-date.svg" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="veMayBay2">
                                                        <div class="btn_start">
                                                            <p>Hạng vé</p>
                                                            <select class="form_select" name="" id="">
                                                                <option value="">Business class</option>
                                                            </select>
                                                            <img src="/resources/library/icon/ticket-01.svg" alt="">
                                                        </div>
                                                        <div class=" btn_Numbercus">
                                                            <p>Số hành khách</p>
                                                            <select class="form_select" name="" id="">
                                                                <option value="">1 Người lớn</option>
                                                            </select>
                                                            <img src="/resources/library/icon/person.svg" alt="">
                                                        </div>
                                                        <div class="btn_chuyendi">
                                                            <div class="btnMotChieu">
                                                                <label for="motchieu">Một chiều</label>
                                                                <input type="radio" name="btn" id="motchieu" hidden>
                                                            </div>
                                                            <div class="btnKhuHoi">
                                                                <label for="khuhoi">Khứ hồi</label>
                                                                <input type="radio" name="btn" id="khuhoi" hidden>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="combo_Khachsan">
                                                    <h4>Khách sạn</h4>
                                                    <div class="veKhachSan">
                                                        <div class="btn_DiemDen">
                                                            <p>Nhập điểm đến hoặc tên khách sạn</p>
                                                            <input type="text" name="" id=""
                                                                placeholder="TP. Hồ Chí Minh">
                                                            <img src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_NumberRoom">
                                                            <p>Số phòng</p>
                                                            <select class="form_select" name="" id="">
                                                                <option value="">1 Phòng</option>
                                                            </select>
                                                            <img src="/resources/library/icon/room.svg" alt="">
                                                        </div>
                                                        <div class="btn_Search-ks">
                                                            <input type="submit" value="Tìm kiếm">
                                                            <img src="/resources/library/icon/search.svg" alt="search">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="home5" class="home5 tab-pane fade" style="position: absolute;">
                                <div class="menu_combo-option menu_combo-option-home5">
                                    <div class="btn_option" style="width: 1150px;">
                                        <ul class="nav nav-tabs" role="tablist" style="border: none;">
                                            <li class="nav-item"><a class="btn_domestic active" data-bs-toggle="tab"
                                                    href="#domecstic3">Trong nước</a></li>
                                            <li class="nav-item"><a class="btn_foreign" data-bs-toggle="tab"
                                                    href="#foreign3">Nước ngoài</a></li>
                                        </ul>
                                    </div>
                                    <div class="tab-content">
                                        <div id="domecstic3" class="domecstic tab-pane active">
                                            <form action="" class="">
                                                <div class="combo_Maybay">
                                                    <h4>Xe</h4>
                                                    <div class="veXe">
                                                        <div class="btn_start">
                                                            <p>Khởi hành</p>
                                                            <select class="form_select" id="start-city">
                                                                <option value="Thành phố Hồ Chí Minh" selected>Điểm khởi
                                                                    hành</option>
                                                            </select>
                                                            <img class="img_home5-location"
                                                                src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_destination">
                                                            <p>Điểm đến</p>
                                                            <select class="form_select" id="destination-city">
                                                                <option value="">Điểm đến</option>
                                                            </select>
                                                            <img class="img_home5-location"
                                                                src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_date">
                                                            <p>Ngày khởi hành</p>
                                                            <input type="date" class="form_select" id="date-start"
                                                                value="2023-09-10">
                                                            <img class="img_home5-ca"
                                                                src="/resources/library/icon/calendar-date.svg" alt="">
                                                        </div>
                                                        <div class="btn_date">
                                                            <p>Ngày kết thúc</p>
                                                            <input type="date" class="form_select" id="date-end"
                                                                value="2023-09-10">
                                                            <img class="img_home5-ca"
                                                                src="/resources/library/icon/calendar-date.svg" alt="">
                                                        </div>
                                                        <div class="btn_NumberPerson">
                                                            <p>Số người</p>
                                                            <select class="form_select" name="" id="">
                                                                <option value="">1 Người</option>
                                                            </select>
                                                            <img class="img_home5-person"
                                                                src="/resources/library/icon/person.svg" alt="">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="combo_Khachsan" style="padding-top: 0px;">
                                                    <h4>Khách sạn</h4>
                                                    <div class="veKhachSan">
                                                        <div class="btn_DiemDen">
                                                            <p>Nhập điểm đến hoặc tên khách sạn</p>
                                                            <input type="text" name="" id=""
                                                                placeholder="TP. Hồ Chí Minh">
                                                            <img src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_NumberRoom">
                                                            <p>Số phòng</p>
                                                            <select class="form_select" name="" id="">
                                                                <option value="">1 Phòng</option>
                                                            </select>
                                                            <img src="/resources/library/icon/room.svg" alt="">
                                                        </div>
                                                        <div class="btn_Search-ks">
                                                            <input type="submit" value="Tìm kiếm">
                                                            <img src="/resources/library/icon/search.svg" alt="search">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div id="foreign3" class="foreign tab-pane fade">
                                            <form action="" class="">
                                                <div class="combo_Maybay">
                                                    <h4>Xe2</h4>
                                                    <div class="veXe">
                                                        <div class="btn_start">
                                                            <p>Khởi hành</p>
                                                            <select class="form_select" id="start-city">
                                                                <option value="Thành phố Hồ Chí Minh" selected>Điểm khởi
                                                                    hành</option>
                                                            </select>
                                                            <img class="img_home5-location"
                                                                src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_destination">
                                                            <p>Điểm đến</p>
                                                            <select class="form_select" id="destination-city">
                                                                <option value="">Điểm đến</option>
                                                            </select>
                                                            <img class="img_home5-location"
                                                                src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_date">
                                                            <p>Ngày khởi hành</p>
                                                            <input type="date" class="form_select" id="date-start"
                                                                value="2023-09-10">
                                                            <img class="img_home5-ca"
                                                                src="/resources/library/icon/calendar-date.svg" alt="">
                                                        </div>
                                                        <div class="btn_date">
                                                            <p>Ngày kết thúc</p>
                                                            <input type="date" class="form_select" id="date-end"
                                                                value="2023-09-10">
                                                            <img class="img_home5-ca"
                                                                src="/resources/library/icon/calendar-date.svg" alt="">
                                                        </div>
                                                        <div class="btn_NumberPerson">
                                                            <p>Số người</p>
                                                            <select class="form_select" name="" id="">
                                                                <option value="">1 Người</option>
                                                            </select>
                                                            <img class="img_home5-person"
                                                                src="/resources/library/icon/person.svg" alt="">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="combo_Khachsan">
                                                    <h4>Khách sạn</h4>
                                                    <div class="veKhachSan">
                                                        <div class="btn_DiemDen">
                                                            <p>Nhập điểm đến hoặc tên khách sạn</p>
                                                            <input type="text" name="" id=""
                                                                placeholder="TP. Hồ Chí Minh">
                                                            <img src="/resources/library/icon/location-marker.svg" alt="">
                                                        </div>
                                                        <div class="btn_NumberRoom">
                                                            <p>Số phòng</p>
                                                            <select class="form_select" name="" id="">
                                                                <option value="">1 Phòng</option>
                                                            </select>
                                                            <img src="/resources/library/icon/room.svg" alt="">
                                                        </div>
                                                        <div class="btn_Search-ks">
                                                            <input type="submit" value="Tìm kiếm">
                                                            <img src="/resources/library/icon/search.svg" alt="search">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="home6" class=" home6 tab-pane fade" style="position: absolute;">
                                <div class="menu_search-option menu_search-option-home6">
                                    <div class="btn_option btn_option-home6">
                                        <ul class="nav nav-tabs" role="tablist" style="border: none;">
                                            <li class="nav-item"><a class="btn_domestic active" data-bs-toggle="tab"
                                                    href="#domecstic4">Tour trọn gói</a></li>
                                            <li class="nav-item"><a class="btn_foreign" data-bs-toggle="tab"
                                                    href="#foreign4">Vé Máy bay và Khách sạn</a></li>
                                        </ul>
                                    </div>
                                    <div class="tab-content">
                                        <div id="domecstic4" class="domecstic tab-pane active">
                                            <form action="" class="from_search form_search-home6">
                                                <div class="btn_Phone">
                                                    <p>Nhập số điện thoại</p>
                                                    <input type="text" name="" id="" placeholder="Nhập số điện thoại">
                                                </div>
                                                <div class="btn_Search-ks btn_Search-tracuu">
                                                    <input type="submit" value="Tìm kiếm">
                                                    <img src="/resources/library/icon/search.svg" alt="search">
                                                </div>
                                            </form>
                                        </div>
                                        <div id="foreign4" class="foreign tab-pane fade">
                                            <form action="" class="from_search form_search-home6">
                                                <div class="btn_Phone">
                                                    <p>Nhập số điện thoại</p>
                                                    <input type="text" name="" id="" placeholder="Nhập số điện thoại">
                                                </div>
                                                <div class="btn_Search-ks btn_Search-tracuu">
                                                    <input type="submit" value="Tìm kiếm">
                                                    <img src="/resources/library/icon/search.svg" alt="search">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
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
						<div class="items_card">
							<div class="card_item col">
								<div class="card_img">
									<a href="" class="card_link"> <img
										src="/resources/img/card1.png" alt="">
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
											<p>10</p>
										</div>
									</div>
								</div>
								<div class="card_time">
									<div class="card_day">
										<p>13/09/2023</p>
									</div>
									<p style="padding: 0 5px 0px 5px;">-</p>
									<div class="time">
										<p>6 Ngày</p>
									</div>
								</div>
								<div class="card_destination">
									<p>Miền Tây: Cần Thơ - Cà Mau - Đất Mũi - Bạc Liêu - Sóc
										Trăng - tham quan vườn trái cây</p>
								</div>
								<div class="card_start">
									<p>Nơi khởi hành:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>TP. Hồ Chí Minh</p>
								</div>
								<div class="oldprice">
									<p>Giá:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="txt_oldprice">8,500,000 VND</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="txt_sale">-8%</p>
								</div>
								<div class="newprice">
									<p>7,599,000</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>VND</p>
								</div>
								<div class="card_btnAddCart">
									<input type="submit" value="Thêm vào giỏ hàng"> <img
										src="/resources/library/icon/add.svg" alt="">
								</div>
							</div>
						</div>
						<div class="items_card">
							<div class="card_item col">
								<div class="card_img">
									<a href="" class="card_link"> <img
										src="/resources/img/card2.png" alt="">
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
											<p>8</p>
										</div>
									</div>
								</div>
								<div class="card_time">
									<div class="card_day">
										<p>13/09/2023</p>
									</div>
									<p style="padding: 0 5px 0px 5px;">-</p>
									<div class="time">
										<p>4 Ngày</p>
									</div>
								</div>
								<div class="card_destination">
									<p>Huế - La Vang - Động Phong Nha - Biển Nhật Lệ - KDL Bà
										Nà - Cầu Vàng - Sơn Trà - Hội An - Đà Nẵng (Khách sạn 4* trọn
										tour)</p>
								</div>
								<div class="card_start">
									<p>Nơi khởi hành:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>TP. Hồ Chí Minh</p>
								</div>
								<div class="oldprice">
									<p>Giá:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="txt_oldprice">3,500,000 VND</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="txt_sale">-8%</p>
								</div>
								<div class="newprice">
									<p>2,599,000</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>VND</p>
								</div>
								<div class="card_btnAddCart">
									<input type="submit" value="Thêm vào giỏ hàng"> <img
										src="/resources/library/icon/add.svg" alt="">
								</div>
							</div>
						</div>
						<div class="items_card">
							<div class="card_item col">
								<div class="card_img">
									<a href="" class="card_link"> <img
										src="/resources/img/card3.png" alt="">
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
											<p>7</p>
										</div>
									</div>
								</div>
								<div class="card_time">
									<div class="card_day">
										<p>13/09/2023</p>
									</div>
									<p style="padding: 0 5px 0px 5px;">-</p>
									<div class="time">
										<p>5 Ngày</p>
									</div>
								</div>
								<div class="card_destination">
									<p>Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình
										- Tràng An - Bái Đính | Thu bên nhau</p>
								</div>
								<div class="card_start">
									<p>Nơi khởi hành:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>TP. Hồ Chí Minh</p>
								</div>
								<div class="oldprice">
									<p>Giá:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="txt_oldprice">8,500,000 VND</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="txt_sale">-8%</p>
								</div>
								<div class="newprice">
									<p>7,599,000</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>VND</p>
								</div>
								<div class="card_btnAddCart">
									<input type="submit" value="Thêm vào giỏ hàng"> <img
										src="/resources/library/icon/add.svg" alt="">
								</div>
							</div>
						</div>
						<div class="items_card">
							<div class="card_item col">
								<div class="card_img">
									<a href="" class="card_link"> <img
										src="/resources/img/card3.png" alt="">
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
											<p>7</p>
										</div>
									</div>
								</div>
								<div class="card_time">
									<div class="card_day">
										<p>13/09/2023</p>
									</div>
									<p style="padding: 0 5px 0px 5px;">-</p>
									<div class="time">
										<p>5 Ngày</p>
									</div>
								</div>
								<div class="card_destination">
									<p>Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình
										- Tràng An - Bái Đính | Thu bên nhau</p>
								</div>
								<div class="card_start">
									<p>Nơi khởi hành:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>TP. Hồ Chí Minh</p>
								</div>
								<div class="oldprice">
									<p>Giá:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="txt_oldprice">8,500,000 VND</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="txt_sale">-8%</p>
								</div>
								<div class="newprice">
									<p>7,599,000</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>VND</p>
								</div>
								<div class="card_btnAddCart">
									<input type="submit" value="Thêm vào giỏ hàng"> <img
										src="/resources/library/icon/add.svg" alt="">
								</div>
							</div>
						</div>
						<div class="items_card">
							<div class="card_item col">
								<div class="card_img">
									<a href="" class="card_link"> <img
										src="/resources/img/card2.png" alt="">
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
											<p>8</p>
										</div>
									</div>
								</div>
								<div class="card_time">
									<div class="card_day">
										<p>13/09/2023</p>
									</div>
									<p style="padding: 0 5px 0px 5px;">-</p>
									<div class="time">
										<p>4 Ngày</p>
									</div>
								</div>
								<div class="card_destination">
									<p>Huế - La Vang - Động Phong Nha - Biển Nhật Lệ - KDL Bà
										Nà - Cầu Vàng - Sơn Trà - Hội An - Đà Nẵng (Khách sạn 4* trọn
										tour)</p>
								</div>
								<div class="card_start">
									<p>Nơi khởi hành:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>TP. Hồ Chí Minh</p>
								</div>
								<div class="oldprice">
									<p>Giá:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="txt_oldprice">3,500,000 VND</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="txt_sale">-8%</p>
								</div>
								<div class="newprice">
									<p>2,599,000</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p>VND</p>
								</div>
								<div class="card_btnAddCart">
									<input type="submit" value="Thêm vào giỏ hàng"> <img
										src="/resources/library/icon/add.svg" alt="">
								</div>
							</div>
						</div>
						<c:forEach var="tours" items="${tours}">
							<form:form>
								<div class="items_card">
									<div class="card_item col">
										<div class="card_img">
											<a href="" class="card_link"> <c:if
													test="${not empty tours.imagesList}">
													<img src="/resources/img/PhuQuoc1.png" alt="img"
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
													<p>${tours.imagesList}</p>
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
											<p>${tours.touristAttraction}</p>
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
					<div class="cardSpecial">
						<div class="cardSpecial_img">
							<a href=""> <img src="/resources/img/special1.png" alt="">
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
										L'Amor Boutique 4 sao (Bao gồm Ăn sáng)</p>
								</div>
								<div class="detail_content-start card_start">
									<p>Vé máy bay khứ hồi Vietravel Airlines + Phòng Tiêu chuẩn
										+ Ăn sáng</p>
								</div>
								<div class="detail_price">
									<p>Giá:</p>
									<p style="padding: 0 5px 0px 5px;"></p>
									<p class="price">1,690,000 VND</p>
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