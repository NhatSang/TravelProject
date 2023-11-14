<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Combo Chi tiết</title>
<link rel="stylesheet" href="/resources/css/ComboDetail.css">
<link rel="stylesheet"
	href="/resources/library/bootstrap/css/bootstrap.min.css">

</head>

<body>
	<div class="menu_header">
		<div class="logo col-sm-3">
			<a href=""> <img src="/resources/img/Logo.png" alt="">
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
				src="/resources/library/icon/Cart.svg" alt="cart">
			</a>
		</div>
	</div>
	<div class="link_bar">
		<a href="">Du lịch</a>
<!-- 		 <a href="">Du lịch trong nước >></a> <a
			href="">Du lịch Vũng Tàu</a> -->
	</div>
	<div class="containerx">
		<div class="content">
			<div class="ticket">
				<img src="/resources/library/icon/ticket-01.svg" alt="">
				<p class="code_ticket">NDSGN869-020-121123XE-VLXX</p>
			</div>
			<div class="header_content">
				<div class="header_content-left">
					<p class="title_content">${detailCombo.packageName}</p>
					<div class="favourite_content">
						<a href=""> <img src="/resources/library/icon/favourite_2.svg"
							alt="">
						</a>
						<p>Thêm vào yêu thích</p>
					</div>
				</div>
				<div class="header_content-right">
					<div class="price_content">
						<p class="price">${detailCombo.price}VND</p>
						<p>/ khách</p>
					</div>
					<div class="btn_content">
						<div class="btn_DatNgay">
							<input type="button" value="Đặt ngay"> <img
								src="/resources/library/icon/shopping-cart-add1.svg" alt="">
						</div>
						<div class="btn_Call">
							<input type="button" value="Liên hệ tư vấn">
						</div>
					</div>
				</div>
			</div>
			<div class="img_content">
				<div class="img_chinh">
					<img src="/resources/img/vungtau4.png" alt="">
				</div>
				<div class="img_phu">
					<div class="img_phu-top">
						<img src="/resources/img/Vungtau (1).png" alt=""> <img
							src="/resources/img/Vungtau (3).png" alt="">
					</div>
					<img class="img_bottom" src="/resources/img/Vungtau (2).png" alt="">
				</div>
			</div>
			<div class="map_content">
				<div class="content_detail">
					<p>Biển xanh, nắng vàng, phong cảnh trữ tình cùng công trinh
						kiến trúc tầm cỡ và sự nhộn nhịp, hiện đại đến khó tả, Vũng Tàu
						luôn là một điểm đến đặc sắc dành cho du khách bốn phương.</p>
					<div class="content_time">
						<div class="time_checkin">
							<p>Giờ nhận phòng :</p>
							<p class="text-bold">${detailCombo.checkinTime}:00</p>
							<%-- <p>ngày</p>
							<p class="text-bold">${detailCombo.departureDate}</p> --%>
						</div>
						<div class="time_checkout">
							<p>Giờ trả phòng :</p>
							<p class="text-bold">${detailCombo.checkoutTime}:00</p>
							<%-- <p>ngày</p>
							<p class="text-bold">${detailCombo.returnDate}</p> --%>
						</div>
						<div class="policy-help">
							<a href="">Chính sách</a> <a href="">Hỗ trợ</a>
						</div>
					</div>
				</div>
				<div class="map">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.858237982652!2d106.68427047504255!3d10.822158889329442!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174deb3ef536f31%3A0x8b7bb8b7c956157b!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHcCBUUC5IQ00!5e0!3m2!1svi!2s!4v1694752774964!5m2!1svi!2s"
						width="600" height="290" style="border: 0;" allowfullscreen=""
						loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
			<div class="info_airline">
				<h1 class="title_airline">Thông tin hãng hàng không</h1>
				<div class="airline">
					<div class="detail_airline">
						<h4>VietNam Airlines</h4>
						<img src="/resources/img/airline.png" alt="">
						<p>${detailCombo.vehicleInf}</p>
					</div>
					<div class="detail_figlht">
						<div class="form_detail">
							<h4>Thông tin lịch trình</h4>
							<div class="form_full">
								<div class="form_left">
									<div class="day_start">
										<p>Ngày đi:</p>
										<p class="text-bold">${detailCombo.departureDate}</p>
									</div>
									<div class="destination_start-end">
										<div class="destination_start">
											<p>${detailCombo.departure.location}</p>
											<p>(XXX)</p>
										</div>
										<div class="destination_end">
											<p>${detailCombo.destination.location}</p>
											<p>(XXX)</p>
										</div>
									</div>
									<div class="trip">
										<img src="/resources/library/icon/Ellipse 8.svg" alt="">
										<p>------------</p>
										<img src="/resources/library/icon/plane1.svg" alt="">
										<p>------------</p>
										<img src="/resources/library/icon/Ellipse 9.svg" alt="">
									</div>
									<div class="trip_time-left">
										<p class="text-bold">5:00</p>
										<p>Bay thẳng</p>
										<p class="text-bold">6:00</p>
									</div>

								</div>
								<div class="form_between">
									<div></div>
								</div>
								<div class="form_right">
									<div class="day_end">
										<p>Ngày về:</p>
										<p class="text-bold">${detailCombo.returnDate}</p>
									</div>
									<div class="destination_start-end">
										<div class="destination_end">
											<p>${detailCombo.destination.location}</p>
											<p>(XXX)</p>
										</div>
										<div class="destination_start">
											<p>${detailCombo.departure.location}</p>
											<p>(XXX)</p>
										</div>
									</div>
									<div class="trip">
										<img src="/resources/library/icon/Ellipse 8.svg" alt="">
										<p>------------</p>
										<img src="/resources/library/icon/plane1.svg" alt="">
										<p>------------</p>
										<img src="/resources/library/icon/Ellipse 9.svg" alt="">
									</div>
									<div class="trip_time-right">
										<p class="text-bold">5:00</p>
										<p>Bay thẳng</p>
										<p class="text-bold">6:00</p>
									</div>

								</div>
							</div>
							z
							<div class="code_trip">
								<p>Mã chuyến bay</p>
								<img class="circle_left" src="/resources/library/icon/Ellipse 11.svg"
									alt=""> <img class="circle_right"
									src="/resources/library/icon/Ellipse 11.svg" alt="">
								<p class="trip_code">XNXX999</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="detail_service">
				<div class="info_service">
					<h1 class="info_service-title">Thông tin dịch vụ</h1>
					<div class="form_service">
						<div class="img_service">
							<img src="/resources/img/service.png" alt="">
						</div>
						<p class="txt_service">Khách sạn Fivitel Đà Nẵng tọa lạc tại
							388 Đ. Trần Hưng Đạo, An Hải Tây, Sơn Trà, Đà Nẵng, bên cạnh cây
							cầu Trần Thị Lý xinh đẹp - được thiết kế với 25 tầng gồm 157
							phòng sang trọng theo tiêu chuẩn 4 sao cùng lối thiết kế đẳng cấp
							vừa mang nét truyền thống Á Đông vừa mang dáng dấp cổ điển của
							kiến trúc Châu Âu. Tất cả các phòng có hướng nhìn trực diện ra
							sông với những cây cầu nổi tiếng và toàn cảnh thành phố. Phòng
							được trải thảm với tông màu nhẹ nhàng, giường ngủ bằng gỗ nguyên
							khối cùng trang trí hoa văn tinh tế sẽ mang đến cho quý khách một
							giấc ngủ ngon và những giấc mơ thật đẹp. Với lợi thế nằm tựa mình
							bên dòng sông Hàn thơ mộng nên tất cả các phòng của khách sạn đều
							có tầm nhìn thoáng hướng ra các địa điểm vui chơi giải trí –
							trung tâm thương mại – rừng Sơn Trà,…nổi tiếng của TP Đà Nẵng.
							Cũng từ khách sạn, du khách dễ dàng di chuyển đến các danh lam
							thắng cảnh khác của TP Huế, Hội An, Thánh địa Mỹ Sơn,…</p>
					</div>
				</div>
				<div class="combo_include">
					<h1 class="combo_include-title">Combo bao gồm</h1>
					<div class="include">
						<div class="include_detail">
							<ul>
								<li>Vé máy bay khứ hồi TP.HCM - Vũng Tàu (7kg xách tay, 15
									kg ký gửi)</li>
								<li>02 đêm nghỉ dưỡng tại khách sạn.</li>
								<li>Bữa sáng hằng ngày.</li>
								<li>Trà và cà phê cùng 2 chai nước suối.</li>
								<li>Thức uống khi làm thủ tục nhận phòng.</li>
								<li>Đường truyền Internet, phòng tập thể dục, hồ bơi.</li>
								<li>Thuế phí</li>
							</ul>
						</div>
					</div>
					<h1 class="combo_notinclude-title">Combo không bao gồm</h1>
					<div class="notinclude">
						<div class="notinclude_detail">
							<ul>
								<li>Chi phí cá nhân: ăn uống ngoài chương trình, giặt ủi,
									phụ thu phòng đơn…</li>
								<li>Chi phí tham quan ngoài chương trình.</li>
								<li>Các chi phí khác.</li>
								<li>Giá không áp dụng các giai đoạn lễ/tết.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="conditions">
				<h1 class="conditions_title">Điều kiện áp dụng</h1>
			</div>
			<div class="form_conditions">
				<ul class="list1">
					<li>Giá áp dụng cho khách quốc tịch Việt Nam. Khách quốc tịch
						nước ngoài vui lòng liên hệ nhân viên tư vấn.</li>
					<li>Giờ bay có thể thay đổi tùy thuộc vào hàng không.</li>
					<li>Đặt tối thiểu 2 khách/phòng. Khách thứ 3 hoặc đi một mình
						vui lòng phụ thu phòng đơn.</li>
					<li>Quý khách cần mang theo CMND/Passport (Hộ chiếu) bản chính
						còn hạn sử dụng/ Giấy khai sinh bản chính (trẻ em dưới 14 tuổi)
						khi đặt dịch vụ và làm thủ tục nhận phòng.</li>
					<li>Phụ thu cuối tuần, Lễ, Tết (nếu có) vui lòng liên hệ nhân
						viên để được tư vấn chi tiết.</li>
					<li>Tối đa 1 phòng ở kèm 2 trẻ em dưới 12 tuổi ngủ chung và ăn
						chung với bố mẹ.</li>
				</ul>
				<p class="text-bold">Điều kiện hoàn hủy:</p>
				<ul class="list2">
					<li>Combo không hoàn, không hủy, không đổi. Trường hợp hoàn,
						hủy, đổi Combo mất 100% trên giá Combo.</li>
				</ul>
				<p class="text-bold">Điều kiện thanh toán:</p>
				<ul class="list3">
					<li>Thanh toán 100% giá trị dịch vụ khi đăng ký.</li>
					<li>Đặt tối thiểu 2 người lớn/phòng. Trường hợp Quý khách đi
						một mình vui lòng phụ thu phòng đơn.</li>
					<li>Phụ thu cuối tuần, Lễ, Tết (nếu có) vui lòng liên hệ nhân
						viên để được tư vấn chi tiết.</li>
				</ul>
				<p class="text-bold" style="font-size: 15px;">Quý khách có nhu
					cầu cần xuất hóa đơn vui lòng cung cấp thông tin xuất hóa đơn cho
					nhân viên bán tour ngay khi đăng ký, không nhận xuất hóa đơn sau
					khi tour đã kết thúc.</p>
				<p class="text-bold" style="font-size: 15px;">Các chính sách
					khuyến mãi (nếu có) có thể hết hoặc tạm ngưng tùy thuộc vào khách
					sạn, Quý khách có thể liên hệ nhân viên để được tư vấn chi tiết.</p>
			</div>
		</div>
	</div>
	</div>
	<div class="quykhachcothethich">
		<h1 class="cothethich_title">Quý khách có thể thích</h1>
		<div>
			<div class="listCard row row-cols-3">
				<div class="items_card">
					<div class="card_item col">
						<div class="card_img">
							<a href="" class="card_link"> <img src="/resources/img/card1.png"
								alt="">
							</a> <a href="" class="card_favourite"> <img
								src="/resources/library/icon/favourite.svg" alt="">
							</a>
						</div>
						<div class="card_btn">
							<div class="btn_left">
								<div class="btn-1">
									<p>Giá tốt</p>
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
							<div class="btn_add">
								<input type="submit" value="Đặt ngay"> <img
									src="/resources/library/icon/add.svg" alt="">
							</div>
							<div class="btn_detail">
								<input type="submit" name="" id="" value="Chi tiết"> <img
									src="/resources/library/icon/detail.svg" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="items_card">
					<div class="card_item col">
						<div class="card_img">
							<a href="" class="card_link"> <img src="/resources/img/card2.png"
								alt="">
							</a> <a href="" class="card_favourite"> <img
								src="/resources/library/icon/favourite.svg" alt="">
							</a>
						</div>
						<div class="card_btn">
							<div class="btn_left">
								<div class="btn-1">
									<p>Sát giờ</p>
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
							<p>Huế - La Vang - Động Phong Nha - Biển Nhật Lệ - KDL Bà Nà
								- Cầu Vàng - Sơn Trà - Hội An - Đà Nẵng (Khách sạn 4* trọn tour)</p>
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
							<div class="btn_add">
								<input type="submit" value="Đặt ngay"> <img
									src="/resources/library/icon/add.svg" alt="">
							</div>
							<div class="btn_detail">
								<input type="submit" name="" id="" value="Chi tiết"> <img
									src="/resources/library/icon/detail.svg" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="items_card">
					<div class="card_item col">
						<div class="card_img">
							<a href="" class="card_link"> <img src="/resources/img/card3.png"
								alt="">
							</a> <a href="" class="card_favourite"> <img
								src="/resources/library/icon/favourite.svg" alt="">
							</a>
						</div>
						<div class="card_btn">
							<div class="btn_left">
								<div class="btn-1">
									<p>Giá tốt</p>
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
							<p>Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình -
								Tràng An - Bái Đính | Thu bên nhau</p>
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
							<div class="btn_add">
								<input type="submit" value="Đặt ngay"> <img
									src="/resources/library/icon/add.svg" alt="">
							</div>
							<div class="btn_detail">
								<input type="submit" name="" id="" value="Chi tiết"> <img
									src="/resources/library/icon/detail.svg" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="items_card">
					<div class="card_item col">
						<div class="card_img">
							<a href="" class="card_link"> <img src="/resources/img/card3.png"
								alt="">
							</a> <a href="" class="card_favourite"> <img
								src="/resources/library/icon/favourite.svg" alt="">
							</a>
						</div>
						<div class="card_btn">
							<div class="btn_left">
								<div class="btn-1">
									<p>Sát giờ</p>
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
							<p>Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình -
								Tràng An - Bái Đính | Thu bên nhau</p>
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
							<div class="btn_add">
								<input type="submit" value="Đặt ngay"> <img
									src="/resources/library/icon/add.svg" alt="">
							</div>
							<div class="btn_detail">
								<input type="submit" name="" id="" value="Chi tiết"> <img
									src="/resources/library/icon/detail.svg" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="items_card">
					<div class="card_item col">
						<div class="card_img">
							<a href="" class="card_link"> <img src="/resources/img/card2.png"
								alt="">
							</a> <a href="" class="card_favourite"> <img
								src="/resources/library/icon/favourite.svg" alt="">
							</a>
						</div>
						<div class="card_btn">
							<div class="btn_left">
								<div class="btn-1">
									<p>Giá tốt</p>
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
							<p>Huế - La Vang - Động Phong Nha - Biển Nhật Lệ - KDL Bà Nà
								- Cầu Vàng - Sơn Trà - Hội An - Đà Nẵng (Khách sạn 4* trọn tour)</p>
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
							<div class="btn_add">
								<input type="submit" value="Đặt ngay"> <img
									src="/resources/library/icon/add.svg" alt="">
							</div>
							<div class="btn_detail">
								<input type="submit" name="" id="" value="Chi tiết"> <img
									src="/resources/library/icon/detail.svg" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="items_card">
					<div class="card_item col">
						<div class="card_img">
							<a href="" class="card_link"> <img src="/resources/img/card1.png"
								alt="">
							</a> <a href="" class="card_favourite"> <img
								src="/resources/library/icon/favourite.svg" alt="">
							</a>
						</div>
						<div class="card_btn">
							<div class="btn_left">
								<div class="btn-1">
									<p>Giá tốt</p>
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
							<div class="btn_add">
								<input type="submit" value="Đặt ngay"> <img
									src="/resources/library/icon/add.svg" alt="">
							</div>
							<div class="btn_detail">
								<input type="submit" name="" id="" value="Chi tiết"> <img
									src="/resources/library/icon/detail.svg" alt="">
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
						<a href=""> <img src="/resources/library/icon/android.svg" alt="">
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
					<a href=""> <img class="chungnhan1" src="/resources/img/chungnhan1.png"
						alt="">
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
					<a href=""> <img src="/resources/library/icon/facebook.svg" alt="">
					</a> <a href=""> <img src="/resources/library/icon/ins.svg" alt="">
					</a> <a href=""> <img src="/resources/library/icon/youtube.svg" alt="">
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