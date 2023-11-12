<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Travel.co</title>
<link rel="stylesheet" href="../css/ComboDetail.css">
<link rel="stylesheet"
	href="../../library/bootstrap/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
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
	<div class="link_bar">
		<a href="">Du lịch >></a> <a href="">Du lịch trong nước >></a> <a
			href="">Du lịch Vũng Tàu</a>
	</div>
	<div class="containerx" style="height: 2600px !important;">
		<div class="content">
			<div class="ticket">
				<img src="../../library/icon/ticket-01.svg" alt="">
				<p class="code_ticket">NDSGN869-020-121123XE-VLXX</p>
			</div>
			<div class="header_content">
				<div class="header_content-left">
					<p class="title_content">Siêu Sale &#x1F525; | VŨng Tàu - Sắc
						Màu Biển Xanh | Kích Cầu Du Lịch</p>
					<div class="favourite_content">
						<a href=""> <img src="../../library/icon/favourite_2.svg"
							alt="">
						</a>
						<p>Thêm vào yêu thích</p>
					</div>
				</div>
				<div class="header_content-right">
					<div class="price_content">
						<p class="price">299,000 VND</p>
						<p>/ khách</p>
					</div>
					<div class="btn_content">
						<div class="btn_DatNgay">
							<input type="button" value="Đặt ngay"> <img
								src="../../library/icon/shopping-cart-add1.svg" alt="">
						</div>
						<div class="btn_Call">
							<input type="button" value="Liên hệ tư vấn">
						</div>
					</div>
				</div>
			</div>
			<div class="img_content">
				<div class="img_chinh">
					<img src="../img/vungtau4.png" alt="">
				</div>
				<div class="img_phu">
					<div class="img_phu-top">
						<img src="../img/Vungtau (1).png" alt=""> <img
							src="../img/Vungtau (3).png" alt="">
					</div>
					<img class="img_bottom" src="../img/Vungtau (2).png" alt="">
				</div>
			</div>
			<div class="map_content">
				<div class="content_detail">
					<p>Biển xanh, nắng vàng, phong cảnh trữ tình cùng công trinh
						kiến trúc tầm cỡ và sự nhộn nhịp, hiện đại đến khó tả, Vũng Tàu
						luôn là một điểm đến đặc sắc dành cho du khách bốn phương.</p>
					<div class="content_time">
						<div class="time_checkin">
							<p>Khởi hành :</p>
							<p class="text-bold">12/11/2023</p>
							<p>Giờ đi</p>
							<p class="text-bold">5:30</p>
						</div>
						<div class="time_checkout">
							<p>Tập trung :</p>
							<p class="text-bold">5:00</p>
							<p>ngày</p>
							<p class="text-bold">12/11/2023</p>
						</div>
						<div class="time_checkout">
							<p>Thời gian :</p>
							<p class="text-bold">1 ngày</p>
						</div>
						<div class="time_checkout">
							<p>Nơi khởi hành :</p>
							<p class="text-bold">TP. Hồ Chí Minh</p>
						</div>
						<div class="time_checkout">
							<p>Số chỗ còn :</p>
							<p class="text-bold">9</p>
						</div>
					</div>
				</div>
				<div class="inf-tour">
					<div class="row-inf" style="margin-bottom: 20px;">
						<div class="col-inf">
							<div class="icon">
								<img src="" alt="img">
							</div>
							<p>Thời gian</p>
							<span>1 ngày</span>
						</div>
						<div class="col-inf">
							<div class="icon">
								<img src="" alt="img">
							</div>
							<p>Phương tiện</p>
							<span>Xe du lịch</span>
						</div>
						<div class="col-inf">
							<div class="icon">
								<img src="" alt="img">
							</div>
							<p>Thời gian</p>
							<span>Vũng Tàu, Tượng Chúa Kito, Vạn Phật Tòng Tâm</span>
						</div>
						<div class="col-inf">
							<div class="icon">
								<img src="" alt="img">
							</div>
							<p>Ẩm thực</p>
							<span>Theo thực đơn</span>
						</div>
					</div>
					<div class="row-inf" style="margin-bottom: 20px;">
						<div class="col-inf">
							<div class="icon">
								<img src="" alt="img">
							</div>
							<p>Khách sạn</p>
						</div>
						<div class="col-inf">
							<div class="icon">
								<img src="" alt="img">
							</div>
							<p>Thời gian lý tưởng</p>
							<span>Quanh năm</span>
						</div>
						<div class="col-inf">
							<div class="icon">
								<img src="" alt="img">
							</div>
							<p>Đối tượng</p>
							<span>Gia đình nhiều thế hệ</span>
						</div>
						<div class="col-inf">
							<div class="icon">
								<img src="" alt="img">
							</div>
							<p>Ưu đãi</p>
							<span>Đã bao gồm trong giá tour</span>
						</div>
					</div>
				</div>
			</div>
			<div class="info_airline">
				<h1 class="title_airline">Lịch trình</h1>
				<div class="Schedule">
					<h6>Ngày 1 - TP.HCM - VŨNG TÀU - BIỂN XANH VẪY GỌI (Ăn trưa)</h6>
					<P>Quý khách tập trung tại Vietravel (190 Pasteur, Quận 3) khởi
						hành đi Bà Rịa - Vũng Tàu theo tuyến đường cao tốc TP. Hồ Chí Minh
						- Long Thành. Trên đường đoàn chiêm ngưỡng Nhà thờ giáo xứ Song
						Vĩnh: đẹp tựa cung điện nguy nga, với kiến trúc mang phong cách
						Gothic - kiểu thiết kế đặc trưng nở rộ từ nửa sau thời Trung cổ ở
						Tây Âu. Đến TP. Vũng Tàu, đoàn tham quan: - Tượng Chúa Kito: trên
						đỉnh Tao Phùng, từ trên cánh tay của Tượng Chúa, Quý khách sẽ cảm
						nhận được hương biển đan trong gió và chiêm ngưỡng toàn diện vẻ
						đẹp của phố biển Vũng Tàu mộng mơ. - Bãi biển Thùy Vân (bãi sau
						Vũng Tàu): Quý khách hòa mình cùng dòng nước xanh mát hay phơi
						mình đón ánh nắng lung linh trên bãi cát vàng trải dài trong không
						khí nhộn nhịp nơi phố biển. - Vạn Phật Quang Đại Tòng Lâm Tự: một
						ngôi đại tự bao gồm nhiều quần thể kiến trúc quy mô như tịnh thất
						và trường Phật học. Chùa còn sở hữu những kỷ lục như Ngôi chùa có
						tượng Di Lặc Bồ Tát nguyên khối bằng đá hoa cương lớn nhất; Ngôi
						chùa có tượng Phật nhiều nhất… Trên đường về lại TP. Hồ Chí Minh,
						đoàn dừng chân tại Bò Sữa Long Thành - mua sắm những đặc sản làm
						quà cho người thân, bạn bè. Xe đưa đoàn về điểm đón ban đầu, kết
						thúc chuyến du lịch.</P>
				</div>
			</div>
			<div class="detail_service">
				<div class="info_service">
					<h1 class="info_service-title">Chi tiết tour</h1>
					<div class="form_detail1">
						<h4>Thông tin hãng xe</h4>
						<div class="form_full"
							style="margin-top: 60px; margin-bottom: 40px;">
							<div class="form_left">
								<div class="day_start">
									<p>Ngày đi:</p>
									<p class="text-bold">01/01/2023</p>
								</div>
								<div class="destination_start-end">
									<div class="destination_start">
										<p>TP. Hồ Chí Minh</p>
										<p>(SGN)</p>
									</div>
									<div class="destination_end">
										<p>Vũng Tàu</p>
										<p>(VTN)</p>
									</div>
								</div>
								<div class="trip">
									<img src="../../library/icon/Ellipse 8.svg" alt="">
									<p>------------</p>
									<img src="../../library/icon/plane1.svg" alt="">
									<p>------------</p>
									<img src="../../library/icon/Ellipse 9.svg" alt="">
								</div>
								<div class="trip_time-left">
									<p class="text-bold">5:00</p>
									<p>đi thẳng</p>
									<p class="text-bold">6:00</p>
								</div>

							</div>
							<div class="form_between">
								<div></div>
							</div>
							<div class="form_right">
								<div class="day_end">
									<p>Ngày về:</p>
									<p class="text-bold">01/01/2023</p>
								</div>
								<div class="destination_start-end">
									<div class="destination_end">
										<p>Vũng Tàu</p>
										<p>(VTN)</p>
									</div>
									<div class="destination_start">
										<p>TP. Hồ Chí Minh</p>
										<p>(SGN)</p>
									</div>
								</div>
								<div class="trip">
									<img src="../../library/icon/Ellipse 8.svg" alt="">
									<p>------------</p>
									<img src="../../library/icon/plane1.svg" alt="">
									<p>------------</p>
									<img src="../../library/icon/Ellipse 9.svg" alt="">
								</div>
								<div class="trip_time-right">
									<p class="text-bold">5:00</p>
									<p>đi thẳng</p>
									<p class="text-bold">6:00</p>
								</div>
							</div>
						</div>
						<div>
							<h4>Thông tin tập trung</h4>
							<p>
								Ngày giờ tập trung: <span style="font-weight: bold;">5:00-12/11/2023</span>
							</p>
							<p>
								Nơi tập trung: <span style="font-weight: bold;">998 Quang
									Trung, phường 8,Gò Vấp, TP.HCM</span>
							</p>
						</div>
					</div>
				</div>
				<div class="combo_include">
					<h1 class="combo_include-title">Giá tour và phụ thu phòng đơn</h1>
					<div
						style="border-radius: 20px; margin-top: 30px; background-color: #fff; padding: 10px;">
						<table class="table table-borderless" style="border-radius: 20px;">
							<thead>
								<tr>
									<th>Loại khách</th>
									<th>Giá tour</th>
									<th>Land tour</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Người lớn (từ 12 tuổi trở lên)</td>
									<td>299,000 vnđ</td>
									<td>299,000 vnđ</td>
								</tr>
								<tr>
									<td>Người lớn (từ 12 tuổi trở lên)</td>
									<td>299,000 vnđ</td>
									<td>299,000 vnđ</td>
								</tr>
								<tr>
									<td>Người lớn (từ 12 tuổi trở lên)</td>
									<td>299,000 vnđ</td>
									<td>299,000 vnđ</td>
								</tr>
								<tr>
									<td>Người lớn (từ 12 tuổi trở lên)</td>
									<td>299,000 vnđ</td>
									<td>299,000 vnđ</td>
								</tr>
								<tr>
									<td>Người lớn (từ 12 tuổi trở lên)</td>
									<td>299,000 vnđ</td>
									<td>299,000 vnđ</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="notinclude" style="margin-top: 50px;">
						<div class="notinclude_detail ">
							<h4>Thông tin hướng dẫn viên</h4>
							<div style="margin-top: 30px;">
								<p>
									Hướng dẫn viên đoàn: <span style="font-weight: bold;">Đang
										cập nhật</span>
								</p>
								<p>
									Hướng dẫn viên tiễn: <span style="font-weight: bold;">Đang
										cập nhật</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="note-info">
				<div class="title">
					<h1>Thông tin cần lưu ý</h1>
				</div>
				<div class="row-collapse">
					<div class="col-collapse">
						<button type="button" class="btn-collapse" data-toggle="collapse"
							data-target="#price_include">Giá tuor bao gồm</button>
						<div id="price_include" class="collapse">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

						</div>
					</div>
					<div class="col-collapse">
						<button type="button" class="btn-collapse" data-toggle="collapse"
							data-target="#cancel_tour">Lưu ý khi chuyển/hủy tour</button>
						<div id="cancel_tour" class="collapse">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
					</div>
				</div>
				<div class="row-collapse">
					<div class="col-collapse">
						<button type="button" class="btn-collapse" data-toggle="collapse"
							data-target="#price_noinclude">Giá tuor không bao gồm</button>
						<div id="price_noinclude" class="collapse">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

						</div>
					</div>
					<div class="col-collapse">
						<button type="button" class="btn-collapse" data-toggle="collapse"
							data-target="#cancel_nortour">Các điều kiện hủy tour đối
							với ngày thường</button>
						<div id="cancel_nortour" class="collapse">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
					</div>
				</div>
				<div class="row-collapse">
					<div class="col-collapse">
						<button type="button" class="btn-collapse" data-toggle="collapse"
							data-target="#price_kid">Giá vé trẻ em</button>
						<div id="price_kid" class="collapse">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

						</div>
					</div>
					<div class="col-collapse">
						<button type="button" class="btn-collapse" data-toggle="collapse"
							data-target="#cancel_spetour">Các điều kiện hủy tour đồi
							với ngày lễ, tết</button>
						<div id="cancel_spetour" class="collapse">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
					</div>
				</div>
				<div class="row-collapse">
					<div class="col-collapse">
						<button type="button" class="btn-collapse" data-toggle="collapse"
							data-target="#cond_abate">Điều kiện thanh toán</button>
						<div id="cond_abate" class="collapse">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

						</div>
					</div>
					<div class="col-collapse">
						<button type="button" class="btn-collapse" data-toggle="collapse"
							data-target="#majeure_case">Trường hợp bất khả kháng</button>
						<div id="majeure_case" class="collapse">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
					</div>
				</div>
				<div class="row-collapse">
					<div class="col-collapse">
						<button type="button" class="btn-collapse" data-toggle="collapse"
							data-target="#cond_register">Các điều kiện khi đăng ký
							tour</button>
						<div id="cond_register" class="collapse">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

						</div>
					</div>
					<div class="col-collapse">
						<button type="button" class="btn-collapse" data-toggle="collapse"
							data-target="#contact">liên hệ</button>
						<div id="contact" class="collapse">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="quykhachcothethich ">
		<h1 class="cothethich_title ">Quý khách có thể thích</h1>
		<div>
			<div class="listCard row row-cols-3 ">
				<div class="items_card ">
					<div class="card_item col ">
						<div class="card_img ">
							<a href=" " class="card_link "> <img src="../img/card1.png "
								alt=" ">
							</a> <a href=" " class="card_favourite "> <img
								src="../../library/icon/favourite.svg " alt=" ">
							</a>
						</div>
						<div class="card_btn ">
							<div class="btn_left ">
								<div class="btn-1 ">
									<p>Giá tốt</p>
								</div>
							</div>
							<div class="btn_right ">
								<div class="btn-3 ">
									<p>Số chỗ còn :</p>
								</div>
								<div class="btn-4 ">
									<p>10</p>
								</div>
							</div>
						</div>
						<div class="card_time ">
							<div class="card_day ">
								<p>13/09/2023</p>
							</div>
							<p style="padding: 0 5px 0px 5px;">-</p>
							<div class="time ">
								<p>6 Ngày</p>
							</div>
						</div>
						<div class="card_destination ">
							<p>Miền Tây: Cần Thơ - Cà Mau - Đất Mũi - Bạc Liêu - Sóc
								Trăng - tham quan vườn trái cây</p>
						</div>
						<div class="card_start ">
							<p>Nơi khởi hành:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>TP. Hồ Chí Minh</p>
						</div>
						<div class="oldprice ">
							<p>Giá:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_oldprice ">8,500,000 VND</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_sale ">-8%</p>
						</div>
						<div class="newprice ">
							<p>7,599,000</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>VND</p>
						</div>
						<div class="card_btnAddCart ">
							<div class="btn_add">
								<input type="submit " value="Đặt ngay "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/add.svg " alt=" ">
							</div>
							<div class="btn_detail ">
								<input type="submit " name=" " id=" " value="Chi tiết "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/detail.svg " alt=" ">
							</div>
						</div>
					</div>
				</div>
				<div class="items_card ">
					<div class="card_item col ">
						<div class="card_img ">
							<a href=" " class="card_link "> <img src="../img/card2.png "
								alt=" ">
							</a> <a href=" " class="card_favourite "> <img
								src="../../library/icon/favourite.svg " alt=" ">
							</a>
						</div>
						<div class="card_btn ">
							<div class="btn_left ">
								<div class="btn-1 ">
									<p>Sát giờ</p>
								</div>
							</div>
							<div class="btn_right ">
								<div class="btn-3 ">
									<p>Số chỗ còn :</p>
								</div>
								<div class="btn-4 ">
									<p>8</p>
								</div>
							</div>
						</div>
						<div class="card_time ">
							<div class="card_day ">
								<p>13/09/2023</p>
							</div>
							<p style="padding: 0 5px 0px 5px;">-</p>
							<div class="time ">
								<p>4 Ngày</p>
							</div>
						</div>
						<div class="card_destination ">
							<p>Huế - La Vang - Động Phong Nha - Biển Nhật Lệ - KDL Bà Nà
								- Cầu Vàng - Sơn Trà - Hội An - Đà Nẵng (Khách sạn 4* trọn tour)</p>
						</div>
						<div class="card_start ">
							<p>Nơi khởi hành:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>TP. Hồ Chí Minh</p>
						</div>
						<div class="oldprice ">
							<p>Giá:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_oldprice ">3,500,000 VND</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_sale ">-8%</p>
						</div>
						<div class="newprice ">
							<p>2,599,000</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>VND</p>
						</div>
						<div class="card_btnAddCart ">
							<div class="btn_add ">
								<input type="submit " value="Đặt ngay "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/add.svg " alt=" ">
							</div>
							<div class="btn_detail ">
								<input type="submit " name=" " id=" " value="Chi tiết "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/detail.svg " alt=" ">
							</div>
						</div>
					</div>
				</div>
				<div class="items_card ">
					<div class="card_item col ">
						<div class="card_img ">
							<a href=" " class="card_link "> <img src="../img/card3.png "
								alt=" ">
							</a> <a href=" " class="card_favourite "> <img
								src="../../library/icon/favourite.svg " alt=" ">
							</a>
						</div>
						<div class="card_btn ">
							<div class="btn_left ">
								<div class="btn-1 ">
									<p>Giá tốt</p>
								</div>
							</div>
							<div class="btn_right ">
								<div class="btn-3 ">
									<p>Số chỗ còn :</p>
								</div>
								<div class="btn-4 ">
									<p>7</p>
								</div>
							</div>
						</div>
						<div class="card_time ">
							<div class="card_day ">
								<p>13/09/2023</p>
							</div>
							<p style="padding: 0 5px 0px 5px;">-</p>
							<div class="time ">
								<p>5 Ngày</p>
							</div>
						</div>
						<div class="card_destination ">
							<p>Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình -
								Tràng An - Bái Đính | Thu bên nhau</p>
						</div>
						<div class="card_start ">
							<p>Nơi khởi hành:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>TP. Hồ Chí Minh</p>
						</div>
						<div class="oldprice ">
							<p>Giá:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_oldprice ">8,500,000 VND</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_sale ">-8%</p>
						</div>
						<div class="newprice ">
							<p>7,599,000</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>VND</p>
						</div>
						<div class="card_btnAddCart ">
							<div class="btn_add ">
								<input type="submit " value="Đặt ngay "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/add.svg " alt=" ">
							</div>
							<div class="btn_detail ">
								<input type="submit " name=" " id=" " value="Chi tiết "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/detail.svg " alt=" ">
							</div>
						</div>
					</div>
				</div>
				<div class="items_card ">
					<div class="card_item col ">
						<div class="card_img ">
							<a href=" " class="card_link "> <img src="../img/card3.png "
								alt=" ">
							</a> <a href=" " class="card_favourite "> <img
								src="../../library/icon/favourite.svg " alt=" ">
							</a>
						</div>
						<div class="card_btn ">
							<div class="btn_left ">
								<div class="btn-1 ">
									<p>Sát giờ</p>
								</div>
							</div>
							<div class="btn_right ">
								<div class="btn-3 ">
									<p>Số chỗ còn :</p>
								</div>
								<div class="btn-4 ">
									<p>7</p>
								</div>
							</div>
						</div>
						<div class="card_time ">
							<div class="card_day ">
								<p>13/09/2023</p>
							</div>
							<p style="padding: 0 5px 0px 5px;">-</p>
							<div class="time ">
								<p>5 Ngày</p>
							</div>
						</div>
						<div class="card_destination ">
							<p>Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình -
								Tràng An - Bái Đính | Thu bên nhau</p>
						</div>
						<div class="card_start ">
							<p>Nơi khởi hành:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>TP. Hồ Chí Minh</p>
						</div>
						<div class="oldprice ">
							<p>Giá:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_oldprice ">8,500,000 VND</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_sale ">-8%</p>
						</div>
						<div class="newprice ">
							<p>7,599,000</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>VND</p>
						</div>
						<div class="card_btnAddCart ">
							<div class="btn_add ">
								<input type="submit " value="Đặt ngay "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/add.svg " alt=" ">
							</div>
							<div class="btn_detail ">
								<input type="submit " name=" " id=" " value="Chi tiết "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/detail.svg " alt=" ">
							</div>
						</div>
					</div>
				</div>
				<div class="items_card ">
					<div class="card_item col ">
						<div class="card_img ">
							<a href=" " class="card_link "> <img src="../img/card2.png "
								alt=" ">
							</a> <a href=" " class="card_favourite "> <img
								src="../../library/icon/favourite.svg " alt=" ">
							</a>
						</div>
						<div class="card_btn ">
							<div class="btn_left ">
								<div class="btn-1 ">
									<p>Giá tốt</p>
								</div>
							</div>
							<div class="btn_right ">
								<div class="btn-3 ">
									<p>Số chỗ còn :</p>
								</div>
								<div class="btn-4 ">
									<p>8</p>
								</div>
							</div>
						</div>
						<div class="card_time ">
							<div class="card_day ">
								<p>13/09/2023</p>
							</div>
							<p style="padding: 0 5px 0px 5px;">-</p>
							<div class="time ">
								<p>4 Ngày</p>
							</div>
						</div>
						<div class="card_destination ">
							<p>Huế - La Vang - Động Phong Nha - Biển Nhật Lệ - KDL Bà Nà
								- Cầu Vàng - Sơn Trà - Hội An - Đà Nẵng (Khách sạn 4* trọn tour)</p>
						</div>
						<div class="card_start ">
							<p>Nơi khởi hành:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>TP. Hồ Chí Minh</p>
						</div>
						<div class="oldprice ">
							<p>Giá:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_oldprice ">3,500,000 VND</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_sale ">-8%</p>
						</div>
						<div class="newprice ">
							<p>2,599,000</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>VND</p>
						</div>
						<div class="card_btnAddCart ">
							<div class="btn_add ">
								<input type="submit " value="Đặt ngay "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/add.svg " alt=" ">
							</div>
							<div class="btn_detail ">
								<input type="submit " name=" " id=" " value="Chi tiết "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/detail.svg " alt=" ">
							</div>
						</div>
					</div>
				</div>
				<div class="items_card ">
					<div class="card_item col ">
						<div class="card_img ">
							<a href=" " class="card_link "> <img src="../img/card1.png "
								alt=" ">
							</a> <a href=" " class="card_favourite "> <img
								src="../../library/icon/favourite.svg " alt=" ">
							</a>
						</div>
						<div class="card_btn ">
							<div class="btn_left ">
								<div class="btn-1 ">
									<p>Giá tốt</p>
								</div>
							</div>
							<div class="btn_right ">
								<div class="btn-3 ">
									<p>Số chỗ còn :</p>
								</div>
								<div class="btn-4 ">
									<p>10</p>
								</div>
							</div>
						</div>
						<div class="card_time ">
							<div class="card_day ">
								<p>13/09/2023</p>
							</div>
							<p style="padding: 0 5px 0px 5px;">-</p>
							<div class="time ">
								<p>6 Ngày</p>
							</div>
						</div>
						<div class="card_destination ">
							<p>Miền Tây: Cần Thơ - Cà Mau - Đất Mũi - Bạc Liêu - Sóc
								Trăng - tham quan vườn trái cây</p>
						</div>
						<div class="card_start ">
							<p>Nơi khởi hành:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>TP. Hồ Chí Minh</p>
						</div>
						<div class="oldprice ">
							<p>Giá:</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_oldprice ">8,500,000 VND</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p class="txt_sale ">-8%</p>
						</div>
						<div class="newprice ">
							<p>7,599,000</p>
							<p style="padding: 0 5px 0px 5px;"></p>
							<p>VND</p>
						</div>
						<div class="card_btnAddCart ">
							<div class="btn_add ">
								<input type="submit " value="Đặt ngay "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/add.svg " alt=" ">
							</div>
							<div class="btn_detail ">
								<input type="submit " name=" " id=" " value="Chi tiết "
									style="padding-left: 40px !important;"> <img
									src="../../library/icon/detail.svg " alt=" ">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer ">
		<div class="footer_content1 row ">
			<div class="content_detail col-xl ">
				<div class="detail_header ">
					<h4>Du lịch trong nước</h4>
				</div>
				<div class="detail_link ">
					<a href=" ">Hạ Lọng</a> <a href=" ">Ninh Bình</a> <a href=" ">Đà
						Nẵng</a> <a href=" ">Hội An</a>
				</div>
			</div>
			<div class="content_detail col-xl ">
				<div class="detail_header ">
					<h4>Du lịch nước ngoài</h4>
				</div>
				<div class="detail_link ">
					<a href=" ">Ấn Độ</a> <a href=" ">Hàn Quốc</a> <a href=" ">Úc</a> <a
						href=" ">Singapore</a>
				</div>
			</div>
			<div class="content_detail col-xl ">
				<div class="detail_header ">
					<h4>Dòng Tour</h4>
				</div>
				<div class="detail_link ">
					<a href=" ">Cao cấp</a> <a href=" ">Tiêu chuẩn</a> <a href=" ">Tiết
						kiệm</a> <a href=" ">Giá tốt</a>
				</div>
			</div>
			<div class="content_detail col-xl ">
				<div class="detail_header ">
					<h4>Ứng dụng di động</h4>
				</div>
				<div class="detail_app ">
					<div class="app_android ">
						<p>Android</p>
						<a href=" "> <img src="../../library/icon/android.svg "
							alt=" ">
						</a>
					</div>
					<div class="app_ios ">
						<p>IOS</p>
						<a href=" "> <img src="../../library/icon/ios.svg " alt=" ">
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_content2 row ">
			<div class="content_detail2 col-xl ">
				<div class="detail_header ">
					<h4>Liên hệ</h4>
				</div>
				<div class="detail_link ">
					<a href=" ">190 Pasteur, Phường Võ Thị Sáu, Quận 3, TPHCM</a> <a
						href=" ">(+84 28) 3822 8898</a> <a href=" ">(+84 28) 3829 9142</a>
					<a href=" ">info@travelco.com</a>
				</div>
			</div>
			<div class="content_detail2 col-xl ">
				<div class="detail_header ">
					<h4>Thông tin</h4>
				</div>
				<div class="detail_link ">
					<a href=" ">Tạp chí du lịch</a> <a href=" ">Tin tức</a> <a href=" ">Site
						map</a> <a href=" ">Chính sách quyền riêng tư</a> <a href=" ">Thỏa
						thuận sử dụng</a>
				</div>
			</div>
			<div class="content_detail2 col-xl ">
				<div class="detail_header ">
					<h4>Chứng nhận</h4>
				</div>
				<div class="detail_link ">
					<a href=" "> <img class="chungnhan1 "
						src="../img/chungnhan1.png " alt=" ">
					</a> <a href=" "> <img src="../img/chungnhan2.png " alt=" ">
					</a>
				</div>
			</div>
			<div class="content_detail2 col-xl ">
				<div class="detail_header ">
					<h4>Chứng nhận thanh toán</h4>
				</div>
				<div class="detail_link ">
					<div class="thanhtoan_row ">
						<a href=" "> <img src="../img/thanhtoan (1).png " alt=" ">
						</a> <a href=" "> <img style="padding-left: 20px;"
							src="../img/thanhtoan (2).png " alt=" ">
						</a>
					</div>
					<div class="thanhtoan_row ">
						<a href=" "> <img src="../img/thanhtoan (3).png " alt=" ">
						</a> <a href=" "> <img style="padding-left: 20px;"
							src="../img/thanhtoan (4).png " alt=" ">
						</a>
					</div>
					<div class="thanhtoan_row ">
						<a href=" "> <img src="../img/thanhtoan (5).png " alt=" ">
						</a> <a href=" "> <img style="padding-left: 20px;"
							src="../img/thanhtoan (6).png " alt=" ">
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_content3 row ">
			<div class="content_detail col-xl ">
				<div class="detail_header ">
					<h4>Mạng xã hội</h4>
				</div>
				<div class="mxh ">
					<a href=" "> <img src="../../library/icon/facebook.svg "
						alt=" ">
					</a> <a href=" "> <img src="../../library/icon/ins.svg " alt=" ">
					</a> <a href=" "> <img src="../../library/icon/youtube.svg "
						alt=" ">
					</a> <a href=" "> <img src="../../library/icon/mxh.svg " alt=" ">
					</a>
				</div>
			</div>
			<div class="content_detail col-xl ">
				<div class="detail_header ">
					<h4>Hot Line</h4>
				</div>
				<div class="detail_hotline ">
					<input type="button " value="1900 1113 "
						style="padding-left: 40px !important;"> <img
						src="../../library/icon/phone.svg " alt=" ">
				</div>
				<p>Từ 8:00 - 22:00 hàng ngày</p>
			</div>
			<div class="content_detail col-xl ">
				<div class="detail_header ">
					<h4>Nhận tin qua Email</h4>
				</div>
				<div class="detail_input ">
					<form action=" ">
						<input type="email " placeholder="nhập email ... "> <img
							src="../../library/icon/email.svg " alt=" "> <input
							type="button " value="Gửi ">
					</form>
				</div>
			</div>
			<div class="content_detail col-xl ">
				<div class="detail_header ">
					<h5>n</h5>
				</div>
				<div class="detail_app "></div>
			</div>
		</div>
	</div>
	<div class="giayphep ">
		<p>Số giấy phép kinh doanh lữ hành Quốc tế: 79-234/2014/TCDL-GP
			LHQT</p>
	</div>
</body>

</html>