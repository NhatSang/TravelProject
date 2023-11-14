<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel.co</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/Result.css">
    <script src="../js/Result.js"></script>
</head>

<body>
    <div class="header"></div>
    <div class="row" style="margin-top: 30px;margin-bottom: 20px;">
        <ul class="wrapper">
            <li itemprop="">
                <a href="#">Du lịch</a>
            </li>
            &raquo;
            <li>
                <a href="#">Danh sách combo du lịch Bà Rịa Vũng Tàu khởi hành từ TP. Hồ Chí Minh</a>
            </li>
        </ul>
    </div>
    <div class="section">
        <form action="">
            <div>
                <div class="section1" style="height: 1912px;">
                    <div style="padding-left: 25px;">
                        <h3 s>Lọc kết quả</h1>
                    </div>
                    <div class="first-row">
                        <h5>Tất cả</h5>
                    </div>
                    <div class="section_filter" style="padding-left: 25px;">
                        <div class="row-filter-2">
                            <div class="btn-group" role="group">
                                <div class="row" style="margin:0 ;">
                                    <button class="btn col" id="" value="trongNuoc">Trong nước</button>
                                    <button class="btn col" id="" value="NuocNgoai">Nước Ngoài</button>
                                </div>
                            </div>
                        </div>
                        <div class="row-filter" style="height: 46px;margin-bottom: 25px;">
                            <select name="combo" id="combo" class="custom-select">
                                <option value="0" selected>Vé máy bay + Khách sạn</option>
                            </select>
                        </div>
                        <div class="row-filter-2">
                            <div class="btn-group" role="group">
                                <div class="row" style="margin:0 ;">
                                    <button class="btn col" id="" value="motChieu">Một chiều</button>
                                    <button class="btn col" id="" value="khuHoi">Khứ hồi</button>
                                </div>
                            </div>
                        </div>
                        <div style="margin-bottom: 10px;">
                            <span style="margin: 0 ;width: 45%; font-weight: bold;">Vé máy bay</span>
                            <hr style="float:right; clear: both;border-top: 1px solid #000; width: 72%;">
                        </div>
                        <div class="row-filter">
                            <label>Khởi hành</label><br>
                            <select name="khoiHanh" id="khoiHanh" class="custom-select">
                                <option value="0" selected>--Tất cả--</option>
                                <option value="1">Bình Dương</option>
                                <option value="2">Buôn Ma Thuộc</option>
                                <option value="3">Cà Mau</option>
                                <option value="4">Cần Thơ</option>
                                <option value="5">Đà Lạt</option>
                                <option value="6">Đà Nẵng</option>
                                <option value="7">Hà Nội</option>
                                <option value="8">Hải Phòng</option>
                                <option value="9">Huế</option>
                                <option value="10">Long Xuyên</option>
                                <option value="11">Nha Trang</option>
                                <option value="12">Phú Quốc</option>
                                <option value="13">Quảng Ngãi</option>
                                <option value="14">Quảng Ninh</option>
                                <option value="15">Quy Nhơn</option>
                                <option value="16">Rạch Giá</option>
                                <option value="17">Thanh Hóa</option>
                                <option value="18">TP. Hồ Chí Minh</option>
                                <option value="19">Vinh</option>
                                <option value="20">Vũng Tàu</option>
                            </select>
                        </div>
                        <div class="row-filter">
                            <label>Điểm đến</label><br>
                            <select name="diemDenMayBay" id="diemDenMayBay" class="custom-select">
                                <option value="0" selected>--Chọn điểm đến--</option>
                                <option value="1">An Giang</option>
                                <option value="2">Bà Rịa - Vũng Tàu</option>
                                <option value="3">Bắc Kạn</option>
                                <option value="4">Bạc Liêu</option>
                                <option value="5">Bắc Ninh</option>
                                <option value="6">Bến Tre</option>
                                <option value="7">Bình Định</option>
                                <option value="8">Bình Dương</option>
                                <option value="9">Bình Phước</option>
                                <option value="10">Bình Thuận</option>
                                <option value="11">Buôn Ma Thuộc</option>
                                <option value="12">Cà Mau</option>
                                <option value="13">Cần Thơ</option>
                                <option value="14">Cao Bằng</option>
                                <option value="15">Côn Đảo</option>
                                <option value="16">Đà Lạt</option>
                                <option value="17">Đà Nẵng</option>
                                <option value="18">Đắk Nông</option>
                                <option value="19">Điện Biên</option>
                                <option value="20">Đồng Nai</option>
                                <option value="21">Đông Tháp</option>
                                <option value="22">Nghệ An</option>
                                <option value="23">Hà Giang</option>
                                <option value="24">Hạ Long</option>
                                <option value="25">Hà Nam</option>
                                <option value="26">Hà Nội</option>
                            </select>
                        </div>
                        <div class="row-filter">
                            <label>Ngày đi</label><br>
                            <div class="date-box">
                                <!-- set không cho chọn các ngày hôm đặt 2 ngày -->
                                <input type="date" min="2023-09-14">
                            </div>
                        </div>
                        <div class="row-filter-2">
                            <div class="btn-group" role="group">
                                <div class="row" style="margin:0 ;">
                                    <button class="btn col" id="" value="">Economy</button>
                                    <button class="btn col" id="" value="">Thương gia</button>
                                </div>
                            </div>
                        </div>
                        <div style="margin-bottom: 20px;">
                            <label for="">Hành khách</label>
                            <div class="custom-number">
                                <div class="custom-lable">
                                    <label for="">Người lớn</label>
                                    <p>Từ 12 tuổi trở lên</p>
                                </div>
                                <div class="custom-number-input" data-value="0">
                                    <span class="custom-number-button" data-action="decrement">-</span>
                                    <input type="number" id="customNumber1" name="customNumber1" value="0" min="0" readonly>
                                    <span class="custom-number-button" data-action="increment">+</span>
                                </div>
                            </div>
                            <div class="custom-number">
                                <div class="custom-lable">
                                    <label for="">Trẻ em</label>
                                    <p>Từ 5 - 11 tuổi</p>
                                </div>
                                <div class="custom-number-input" data-value="0">
                                    <span class="custom-number-button" data-action="decrement">-</span>
                                    <input type="number" id="customNumber2" name="customNumber2" value="0" min="0" readonly>
                                    <span class="custom-number-button" data-action="increment">+</span>
                                </div>
                            </div>
                            <div class="custom-number">
                                <div class="custom-lable">
                                    <label for="">Trẻ em</label>
                                    <p>Từ 2 - 4 tuổi</p>
                                </div>
                                <div class="custom-number-input" data-value="0">
                                    <span class="custom-number-button" data-action="decrement">-</span>
                                    <input type="number" id="customNumber3" name="customNumber3" value="0" min="0" readonly>
                                    <span class="custom-number-button" data-action="increment">+</span>
                                </div>
                            </div>
                            <div class="custom-number">
                                <div class="custom-lable">
                                    <label for="">Em bé</label>
                                    <p>Dưới 2 tuổi</p>
                                </div>
                                <div class="custom-number-input" data-value="0">
                                    <span class="custom-number-button" data-action="decrement">-</span>
                                    <input type="number" id="customNumber4" name="customNumber4" value="0" min="0" readonly>
                                    <span class="custom-number-button" data-action="increment">+</span>
                                </div>
                            </div>
                        </div>
                        <div style="margin-bottom: 10px;">
                            <span style="margin: 0 ;width: 45%; font-weight: bold;">Khách sạn</span>
                            <hr style="float:right; clear: both;border-top: 1px solid #000; width: 75%;">
                        </div>
                        <div class="row-filter">
                            <label>Điểm đến</label><br>
                            <select name="diemDenKhachSan" id="diemDenKhachSan" class="custom-select">
                                <option value="0" selected>--Chọn điểm đến--</option>
                                <option value="1">An Giang</option>
                                <option value="2">Bà Rịa - Vũng Tàu</option>
                                <option value="3">Bắc Kạn</option>
                                <option value="4">Bạc Liêu</option>
                                <option value="5">Bắc Ninh</option>
                                <option value="6">Bến Tre</option>
                                <option value="7">Bình Định</option>
                                <option value="8">Bình Dương</option>
                                <option value="9">Bình Phước</option>
                                <option value="10">Bình Thuận</option>
                                <option value="11">Buôn Ma Thuộc</option>
                                <option value="12">Cà Mau</option>
                                <option value="13">Cần Thơ</option>
                                <option value="14">Cao Bằng</option>
                                <option value="15">Côn Đảo</option>
                                <option value="16">Đà Lạt</option>
                                <option value="17">Đà Nẵng</option>
                                <option value="18">Đắk Nông</option>
                                <option value="19">Điện Biên</option>
                                <option value="20">Đồng Nai</option>
                                <option value="21">Đông Tháp</option>
                                <option value="22">Nghệ An</option>
                                <option value="23">Hà Giang</option>
                                <option value="24">Hạ Long</option>
                                <option value="25">Hà Nam</option>
                                <option value="26">Hà Nội</option>
                            </select>
                        </div>
                        <div style="margin-bottom: 10px;">
                            <span style="margin: 0 ;width: 45%; font-weight: bold;">Bộ lọc tìm kiếm</span>
                            <hr style="float:right; clear: both;border-top: 1px solid #000; width: 65%;">
                        </div>
                        <div class="row-filter-2">
                            <label>Ngân sách</label><br>
                            <div class="btn-group" role="group">
                                <div>
                                    <button class="btn col" id="" value="0-1 triệu">0-1 triệu</button>
                                    <button class="btn col" id="" value="2-5">2-5 triệu</button>
                                </div>

                                <div>
                                    <button class="btn col" id="" value="1-2">1-2 triệu</button>
                                    <button class="btn col" id="" value="5+">5+ triệu</button>
                                </div>
                            </div>
                        </div>
                        <div style="margin-bottom: 20px;">
                            <label style="margin-bottom: 10px;">Hiển thị những chuyến đi</label><br>
                            <div>
                                <label class="slider-checkbox">
                                    <input type="checkbox" id="khuyenMai">
                                    <span class="slider"></span>
                                </label>
                                <span>Khuyến mãi</span>
                            </div>
                        </div>
                        <div>
                            <label for="" style="margin-bottom: 20px;">Tiện nghi</label>
                            <div class="row row-cols-2">
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Ấm đun nước điện</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Bồn tắm</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Bãi biển riêng</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Đưa đón sân bay</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Bàn làm việc</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Dịch vụ tàu/cano</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Bồn rửa mặt thấp hơn</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Giáp biển</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Bồn tắm hơi</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Điều hòa không khí</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">CLB trẻ em</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Ban công</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Dịch vụ cho thuê xe</label>
                                </div>
                                <div class="col col-checkbox">
                                    <input type="checkbox" name="" id="">
                                    <label for="">Bếp</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section2">
                    <div style="display: flex; margin-top: 20px;margin-bottom: 10px;">
                        <div style="float: left;display: flex; width: 30%;justify-items: center;align-items: center;">
                            <p>Chúng tôi tìm thấy <span style="font-weight: bold; color: #3B0EEE;">20</span> combo</p>
                        </div>
                        <div style="float: right;width: 250px;position: relative;right: -40%;">
                            <span>sắp xếp theo</span>
                            <select name="sapXep" id="" class="custom-select" style="width: 150px;height:40px ;text-align: center;">
                            <option value="0" selected>--Tất cả--</option>
                            <option value="1">option1</option>
                            <option value="2">option2</option>
                        </select>
                        </div>
                    </div>
                    <div class="list-card" style="clear: both;">
                        <div class="card-combo">
                            <div class="card-img-combo">
                                <a href="#"><img src="../img/favorite1 (2).png" alt="img"></a>
                            </div>
                            <div class="card-content-combo">
                                <div>
                                    <div class="inf-combo">Vé máy bay + khách sạn</div>
                                    <div class="vote">
                                        <div class="rating">
                                            <input type="radio" name="rating" id="star1" value="1"><label for="star1"></label>
                                            <input type="radio" name="rating" id="star2" value="2"><label for="star2"></label>
                                            <input type="radio" name="rating" id="star3" value="3"><label for="star3"></label>
                                            <input type="radio" name="rating" id="star4" value="4"><label for="star4"></label>
                                            <input type="radio" name="rating" id="star5" value="5"><label for="star5"></label>
                                        </div>
                                    </div>
                                    <div style="opacity: 70%; clear: both;font-size: smaller;margin-bottom: 5px;">
                                        <span>09/11/2023</span> &ndash; <span>6 ngày</span>
                                    </div>
                                    <div class="card-title" style="height: 60px;">
                                        <a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
                                    </div>
                                    <div style="opacity: 70%;font-size: smaller;">
                                        <span>Vé máy bay khứ hồi Viettravel Airlines + Phòng tiêu chuẩn + Ăn sáng</span>
                                    </div>
                                    <div class="price-combo">
                                        <p>Giá: <span>10,799,000</span><span> vnđ</span> /Người</p>
                                    </div>
                                    <div class="card-footer-combo">
                                        <div class="btn-addcart">
                                            <button><img src="../../library/icon/add.svg" alt=""> Thêm vào giỏ</button>
                                        </div>
                                        <div class="btn-ngaykhac">
                                            <button><img src="../../library/icon/calendar-date.svg" alt="">Ngày khác</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-combo">
                            <div class="card-img-combo">
                                <a href="#"><img src="../img/favorite1 (2).png" alt="img"></a>
                            </div>
                            <div class="card-content-combo">
                                <div>
                                    <div class="inf-combo">Vé máy bay + khách sạn</div>
                                    <div class="vote">
                                        <div class="rating">
                                            <input type="radio" name="rating" id="star1" value="1"><label for="star1"></label>
                                            <input type="radio" name="rating" id="star2" value="2"><label for="star2"></label>
                                            <input type="radio" name="rating" id="star3" value="3"><label for="star3"></label>
                                            <input type="radio" name="rating" id="star4" value="4"><label for="star4"></label>
                                            <input type="radio" name="rating" id="star5" value="5"><label for="star5"></label>
                                        </div>
                                    </div>
                                    <div style="opacity: 70%; clear: both;font-size: smaller;margin-bottom: 5px;">
                                        <span>09/11/2023</span> &ndash; <span>6 ngày</span>
                                    </div>
                                    <div class="card-title" style="height: 60px;">
                                        <a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
                                    </div>
                                    <div style="opacity: 70%;font-size: smaller;">
                                        <span>Vé máy bay khứ hồi Viettravel Airlines + Phòng tiêu chuẩn + Ăn sáng</span>
                                    </div>
                                    <div class="price-combo">
                                        <p>Giá: <span>10,799,000</span><span> vnđ</span> /Người</p>
                                    </div>
                                    <div class="card-footer-combo">
                                        <div class="btn-addcart">
                                            <button><img src="../../library/icon/add.svg" alt=""> Thêm vào giỏ</button>
                                        </div>
                                        <div class="btn-ngaykhac">
                                            <button><img src="../../library/icon/calendar-date.svg" alt="">Ngày khác</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-combo">
                            <div class="card-img-combo">
                                <a href="#"><img src="../img/favorite1 (2).png" alt="img"></a>
                            </div>
                            <div class="card-content-combo">
                                <div>
                                    <div class="inf-combo">Vé máy bay + khách sạn</div>
                                    <div class="vote">
                                        <div class="rating">
                                            <input type="radio" name="rating" id="star1" value="1"><label for="star1"></label>
                                            <input type="radio" name="rating" id="star2" value="2"><label for="star2"></label>
                                            <input type="radio" name="rating" id="star3" value="3"><label for="star3"></label>
                                            <input type="radio" name="rating" id="star4" value="4"><label for="star4"></label>
                                            <input type="radio" name="rating" id="star5" value="5"><label for="star5"></label>
                                        </div>
                                    </div>
                                    <div style="opacity: 70%; clear: both;font-size: smaller;margin-bottom: 5px;">
                                        <span>09/11/2023</span> &ndash; <span>6 ngày</span>
                                    </div>
                                    <div class="card-title" style="height: 60px;">
                                        <a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
                                    </div>
                                    <div style="opacity: 70%;font-size: smaller;">
                                        <span>Vé máy bay khứ hồi Viettravel Airlines + Phòng tiêu chuẩn + Ăn sáng</span>
                                    </div>
                                    <div class="price-combo">
                                        <p>Giá: <span>10,799,000</span><span> vnđ</span> /Người</p>
                                    </div>
                                    <div class="card-footer-combo">
                                        <div class="btn-addcart">
                                            <button><img src="../../library/icon/add.svg" alt=""> Thêm vào giỏ</button>
                                        </div>
                                        <div class="btn-ngaykhac">
                                            <button><img src="../../library/icon/calendar-date.svg" alt="">Ngày khác</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-combo">
                            <div class="card-img-combo">
                                <a href="#"><img src="../img/favorite1 (2).png" alt="img"></a>
                            </div>
                            <div class="card-content-combo">
                                <div>
                                    <div class="inf-combo">Vé máy bay + khách sạn</div>
                                    <div class="vote">
                                        <div class="rating">
                                            <input type="radio" name="rating" id="star1" value="1"><label for="star1"></label>
                                            <input type="radio" name="rating" id="star2" value="2"><label for="star2"></label>
                                            <input type="radio" name="rating" id="star3" value="3"><label for="star3"></label>
                                            <input type="radio" name="rating" id="star4" value="4"><label for="star4"></label>
                                            <input type="radio" name="rating" id="star5" value="5"><label for="star5"></label>
                                        </div>
                                    </div>
                                    <div style="opacity: 70%; clear: both;font-size: smaller;margin-bottom: 5px;">
                                        <span>09/11/2023</span> &ndash; <span>6 ngày</span>
                                    </div>
                                    <div class="card-title" style="height: 60px;">
                                        <a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
                                    </div>
                                    <div style="opacity: 70%;font-size: smaller;">
                                        <span>Vé máy bay khứ hồi Viettravel Airlines + Phòng tiêu chuẩn + Ăn sáng</span>
                                    </div>
                                    <div class="price-combo">
                                        <p>Giá: <span>10,799,000</span><span> vnđ</span> /Người</p>
                                    </div>
                                    <div class="card-footer-combo">
                                        <div class="btn-addcart">
                                            <button><img src="../../library/icon/add.svg" alt=""> Thêm vào giỏ</button>
                                        </div>
                                        <div class="btn-ngaykhac">
                                            <button><img src="../../library/icon/calendar-date.svg" alt="">Ngày khác</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-combo">
                            <div class="card-img-combo">
                                <a href="#"><img src="../img/favorite1 (2).png" alt="img"></a>
                            </div>
                            <div class="card-content-combo">
                                <div>
                                    <div class="inf-combo">Vé máy bay + khách sạn</div>
                                    <div class="vote">
                                        <div class="rating">
                                            <input type="radio" name="rating" id="star1" value="1"><label for="star1"></label>
                                            <input type="radio" name="rating" id="star2" value="2"><label for="star2"></label>
                                            <input type="radio" name="rating" id="star3" value="3"><label for="star3"></label>
                                            <input type="radio" name="rating" id="star4" value="4"><label for="star4"></label>
                                            <input type="radio" name="rating" id="star5" value="5"><label for="star5"></label>
                                        </div>
                                    </div>
                                    <div style="opacity: 70%; clear: both;font-size: smaller;margin-bottom: 5px;">
                                        <span>09/11/2023</span> &ndash; <span>6 ngày</span>
                                    </div>
                                    <div class="card-title" style="height: 60px;">
                                        <a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
                                    </div>
                                    <div style="opacity: 70%;font-size: smaller;">
                                        <span>Vé máy bay khứ hồi Viettravel Airlines + Phòng tiêu chuẩn + Ăn sáng</span>
                                    </div>
                                    <div class="price-combo">
                                        <p>Giá: <span>10,799,000</span><span> vnđ</span> /Người</p>
                                    </div>
                                    <div class="card-footer-combo">
                                        <div class="btn-addcart">
                                            <button><img src="../../library/icon/add.svg" alt=""> Thêm vào giỏ</button>
                                        </div>
                                        <div class="btn-ngaykhac">
                                            <button><img src="../../library/icon/calendar-date.svg" alt="">Ngày khác</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-combo">
                            <div class="card-img-combo">
                                <a href="#"><img src="../img/favorite1 (2).png" alt="img"></a>
                            </div>
                            <div class="card-content-combo">
                                <div>
                                    <div class="inf-combo">Vé máy bay + khách sạn</div>
                                    <div class="vote">
                                        <div class="rating">
                                            <input type="radio" name="rating" id="star1" value="1"><label for="star1"></label>
                                            <input type="radio" name="rating" id="star2" value="2"><label for="star2"></label>
                                            <input type="radio" name="rating" id="star3" value="3"><label for="star3"></label>
                                            <input type="radio" name="rating" id="star4" value="4"><label for="star4"></label>
                                            <input type="radio" name="rating" id="star5" value="5"><label for="star5"></label>
                                        </div>
                                    </div>
                                    <div style="opacity: 70%; clear: both;font-size: smaller;margin-bottom: 5px;">
                                        <span>09/11/2023</span> &ndash; <span>6 ngày</span>
                                    </div>
                                    <div class="card-title" style="height: 60px;">
                                        <a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
                                    </div>
                                    <div style="opacity: 70%;font-size: smaller;">
                                        <span>Vé máy bay khứ hồi Viettravel Airlines + Phòng tiêu chuẩn + Ăn sáng</span>
                                    </div>
                                    <div class="price-combo">
                                        <p>Giá: <span>10,799,000</span><span> vnđ</span> /Người</p>
                                    </div>
                                    <div class="card-footer-combo">
                                        <div class="btn-addcart">
                                            <button><img src="../../library/icon/add.svg" alt=""> Thêm vào giỏ</button>
                                        </div>
                                        <div class="btn-ngaykhac">
                                            <button><img src="../../library/icon/calendar-date.svg" alt="">Ngày khác</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-combo">
                            <div class="card-img-combo">
                                <a href="#"><img src="../img/favorite1 (2).png" alt="img"></a>
                            </div>
                            <div class="card-content-combo">
                                <div>
                                    <div class="inf-combo">Vé máy bay + khách sạn</div>
                                    <div class="vote">
                                        <div class="rating">
                                            <input type="radio" name="rating" id="star1" value="1"><label for="star1"></label>
                                            <input type="radio" name="rating" id="star2" value="2"><label for="star2"></label>
                                            <input type="radio" name="rating" id="star3" value="3"><label for="star3"></label>
                                            <input type="radio" name="rating" id="star4" value="4"><label for="star4"></label>
                                            <input type="radio" name="rating" id="star5" value="5"><label for="star5"></label>
                                        </div>
                                    </div>
                                    <div style="opacity: 70%; clear: both;font-size: smaller;margin-bottom: 5px;">
                                        <span>09/11/2023</span> &ndash; <span>6 ngày</span>
                                    </div>
                                    <div class="card-title" style="height: 60px;">
                                        <a href="#">Sapa - Fansipan - Hà Nội - Yên Tử - Hạ Long - Ninh Bình - Tràng An - Bái Đính | Thu bên nhau</a>
                                    </div>
                                    <div style="opacity: 70%;font-size: smaller;">
                                        <span>Vé máy bay khứ hồi Viettravel Airlines + Phòng tiêu chuẩn + Ăn sáng</span>
                                    </div>
                                    <div class="price-combo">
                                        <p>Giá: <span>10,799,000</span><span> vnđ</span> /Người</p>
                                    </div>
                                    <div class="card-footer-combo">
                                        <div class="btn-addcart">
                                            <button><img src="../../library/icon/add.svg" alt=""> Thêm vào giỏ</button>
                                        </div>
                                        <div class="btn-ngaykhac">
                                            <button><img src="../../library/icon/calendar-date.svg" alt="">Ngày khác</button>
                                        </div>
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
        </form>
    </div>
</body>

</html>