go
use DuLich
go
insert into Userr(phone,email,address,full_name) values
('0101010101','test@gmail.com','testata','nhat Sang'),
('0202020202','vananh@gmail.com','Ha Noi','Nguyen Van Anh'),
('0303030303','thithanh@gmail.com','HCM','Tran Thi Thanh'),
('0404040404','vanhung@gmail.com','Da Nang','Nguyen Van Hung'),
('0505050505','thutrang@gmail.com','Hue','Ho Thi Trang'),
('0606060606','cuongdt@gmail.com','Ha Noi','Do Tien Cuong'),
('0707070707','maithao@gmail.com','HCM','Tran Thi Mai Thao'),
('0808080808','quocdat@gmail.com','Da Nang','Pham Quoc Dat'),
('0909090909','lananh@gmail.com','Hue','Nguyen Thi Lan Anh'),
('1010101010','minhngoc@gmail.com','Ha Noi','Bui Minh Ngoc'),
('1111111111','tienphong@gmail.com','HCM','Le Tien Phong');
go
select * from Userr
go
/*0:admin, 1:customer(mac dinh)*/
insert into Account(role,user_id,username,password) values
(0,1,'admin','admin'),
(1,2,'abc','test1'),
(1,3,'nguyenvana','123123'),
(1,4,'tranthithanh','456789'),
(1,5,'levanhung','147258'),
(1,6,'hotrithu','963852'),
(1,7,'dotiencuong','852147'),
(1,8,'tranthimai','357951'),
(1,9,'phaquocdat','159357'),
(1,10,'nguyentilan','569874')
go
select * from Account
go
insert into Departure
values 
(N'Hà Nội'),
(N'Hồ Chí Minh'),
(N'Đà Nẵng'),
(N'Huế'),
(N'Nha Trang'),
(N'Phú Quốc'),
(N'Đà Lạt'),
(N'Hạ Long'),
(N'Cần Thơ'),
(N'Vũng Tàu'),
(N'Hải Phòng');
go
select * from  Departure
go
/* 0: trong nuoc, 1: nuoc ngoai*/
insert into Destination(type,location)
values 
(0,N'Hà Nội'),
(0,N'Hồ Chí Minh'),
(0,N'Đà Nẵng'),
(0,N'Huế'),
(0,N'Nha Trang'),
(0,N'Phú Quốc'),
(0,N'Đà Lạt'),
(0,N'Hạ Long'),
(0,N'Cần Thơ'),
(0,N'Vũng Tàu'),
(0,N'Hải Phòng'),
(1, N'London'),
(1, N'New York'),
(1, N'Dubai'),
(1, N'Rome'),
(1, N'Bali'),
(1, N'Osaka'),
(1, N'Jeju'),
(1, N'Hawaii'),
(1, N'Phuket')
go
select * from Destination
go
/*Tour*/
/*vehicle: 0: xe, 1: may bay
internationalType: 0: trong nuoc, 1: nuoc ngoai
travelPackage_type: 1: tour, 2: combo
*/
insert into travel_package(travel_package_type,package_name,departure_date,return_date,price,description,available_seats,vehicle,departure_id,destination_id,number_days,tourist_attraction,cuisine,hotel,ideal_time,object,international_type)
values 
(1,N'Tour Miền Trung','2023-11-14','2023-12-19',6990000,N'Quý khách không thể bỏ lỡ những sự kiện đáng mong chờ nhất trong năm tại Đà Nẵng.',4,0,3,3,4,N'Đại Nội, Chùa Thiên Mụ, Động Phong Nha, Khu du lịch Bà Nà, Phố cổ Hội An',N'Theo thực đơn',N'Khách sạn 4 sao',N'quanh năm',N'Gia đình nhiều thế hệ',0),
(1,N'Tour Miền Trung','2023-11-19','2023-11-23',6990000,N'Tham quan thành phố Huế',2,0,4,4,4,N'Đà Nẵng, Sơn Trà, Hội An, Huế, Mỹ Khê, Ngũ Hành Sơn, Đầm Lập An, Đại Nội, Chùa Thiên Mụ, Chùa Linh Ứng, Bán Đảo Sơn Trà, Động Phong Nha',N'Buffet sáng, Theo thực đơn, Đặc sản địa phương',N'Khách sạn 4 sao',N'Quanh năm',N'Cặp đôi, Gia đình nhiều thế hệ, Thanh niên',0),
(1,N'Tour Miền Trung','2023-11-16','2023-11-20',3190000,N'Nha Trang với khí hậu ôn hòa, biển xanh trong quanh năm cùng những điểm vui chơi bậc nhất và không ngừng đổi mới hằng ngày luôn thu hút du khách gần xa.',6,0,5,5,4,N'4 địa điểm ngoài trời, 2 địa điểm trong nhà',N'Theo thực đơn',N'Khách sạn 5 sao',N'Quanh năm',N'Gia đình nhiều thế hệ',0),
(1,N'Tour Châu Âu','2023-12-24','2024-1-2',88000000,N'Anh Quốc - Scotland 10 ngày hàng không 5* EMIRATES AIRLINES - đón Giáng sinh tại Vương quốc Anh',5,1,6,6,9,N'15 địa điểm ngoài trời, 6 địa điểm trong nhà',N'Buffet sáng',N'Khách sạn 4 sao',N'Quanh năm',N'Gia đình nhiều thế hệ, Cặp đôi, Thanh niên',1),
(1,N'Tour Châu Mỹ','2023-11-25','2023-12-5',86000000,N'Hành trình liên tuyến bờ Đông Tây giúp Quý khách khám phá trọn vẹn Hoa Kỳ qua những thành phố lớn nhất nhì nước Mỹ',9,1,7,7,10,N'Hoa Kỳ, Mỹ, Los Angeles, New York, Philadelphia, Washington DC, Las Vegas, San Diego',N'Buffet sáng, Theo thực đơn',N'Khách sạn 4 sao',N'Quanh năm',N'Cặp đôi, Gia đình nhiều thế hệ, Thanh niên',1),
(1,N'Tour Châu Á','2023-11-22','2023-11-27',74000000,N'Dubai: Du Thuyền Vịnh Marina Bay – Bữa tối trên không – Cafe bánh phủ vàng – Buffet tại khách sạn 5*',3,1,8,8,5,N'Dubai, Abu Dhabi , Bastakiya, Burj Khalifa, Vịnh Marina',N'Buffet sáng, Theo thực đơn',N'Khách sạn 4 sao',N'Quanh năm',N'Cặp đôi, Gia đình nhiều thế hệ, Thanh niên',1),
(1,N'Tour Châu Á','2023-11-17','2023-11-23',41000000,N'Nhật Bản: Tokyo - Núi Phú Sĩ - Oshino Hakkai - Obara - Nagoya - Kyoto - Kobe - Osaka,Hái trái cây,Ngắm Hoa Anh Đào mùa thu,Thu Bên Nhau',1,1,9,9,6,N'Tokyo, Núi Phú Sĩ, Kyoto, Osaka, Asakusa Kannon, Oshino Hakkai, Nagoya, Nhật Bản',N'Buffet sáng, Theo thực đơn, Đặc sản địa phương',N'Khách sạn 4 sao',N'Quanh năm',N'Cặp đôi, Gia đình nhiều thế hệ, Thanh niên',1)
go
/*comboType: 0: xe+hotel, 1: maybay+hotel*/
insert into travel_package(travel_package_type,package_name,departure_date,return_date,price,description,available_seats,vehicle,departure_id,destination_id,checkin_time,checkout_time,vehicle_inf,combo_inf,combo_type)
values
(2,N'Combo Quy Nhơn','2023-11-28','2023-12-1',2100000,N'Combo Quy Nhơn 3N2Đ: Vé máy bay khứ hồi + Khách sạn LAmor Boutique 4 sao (Bao gồm Ăn sáng) ',10,1,10,10,15,12,N'Vietravel Airlines',N'Vé máy bay khứ hồi HCM-Quy Nhơn,02 đêm lưu trú tại phòng tiêu chuẩn,Ăn sáng tại khách sạn.Miễn phí kết nối Internet không dây tại khách sạn.Sử dụng hồ bơi, phòng gym khách sạn',1),
(2,N'Combo Malaysia','2023-12-04','2023-12-15',1400000,N'Combo Malaysia: Vé máy bay khứ hồi + 02 đêm tại Resort World Awana Genting 4 sao và 1 đêm khách sạn tại Kuala Lumpur 4 sao',2,1,11,11,15,12,N'Vietravel Airlines',N'2 Đêm nghỉ tại Resort World Awana Superior Deluxe room 4*,1 đêm nghỉ tại KUL Ibis KLCC, Sunway Velocity, Mercure KL 4*',1),
(2,N'Combo Phú Quốc','2023-11-13','2023-11-15',2700000,N'Combo Phú Quốc 3N2Đ: Vé máy bay khứ hồi + Khách sạn Wyndham Garden Grandworld Phú Quốc 4 sao',5,1,2,12,15,12,N'Vietravel Airlines',N'Vé máy bay khứ hồi Hồ Chí Minh - Phú Quốc - Hồ Chí Minh với 7kg hành lý xách tay,02 đêm nghỉ dưỡng tại hạng phòng Standard',1),
(2,N'Combo Đà Nẵng','2023-11-14','2023-11-16',3700000,N'Combo Đà Nẵng: Dịch vụ vé máy bay + 2 đêm nghỉ dưỡng tại Khách sạn Naman Retreat 5 sao',1,1,2,13,13,12,N'Vietravel Airlines',N'Vé máy bay khứ hồi TP.HCM - ĐÀ NẴNG (7kg xách tay, 15 kg ký gửi),02 đêm nghỉ dưỡng tại khách sạn,Bữa sáng tại khu nghỉ dưỡng,Trà và cà phê cùng 2 chai nước suối',1),
(2,N'Combo Đài Loan','2023-11-30','2023-12-4',8990000,N'Combo Đài Loan: Vé máy bay khứ hồi + 02 đêm khách sạn 3 sao',6,1,2,14,15,12,N'Vietjet Air',N'Vé máy bay khứ hồi Tp HCM  - Cao Hùng, Đài Bắc – Tp HCM,01 đêm khách sạn tại Cao Hùng 3 sao và 01 đêm khách sạn tại Đà Bắc 3 sao  bao gồm ăn sáng,Tặng hành lý 20 kg ký gửi + 7 kg sách tay ',1)
go
select * from travel_package
go
insert into Images
values
(2,'DaNang1.png'), (2,'DaNang2.png'), (2,'DaNang3.png'), (2,'DaNang4.png'),
(3,'NhaTrang1.png'),(3,'NhaTrang2.png'),(3,'NhaTrang3.png'),(3,'NhaTrang4.png'),
(4,'Anh1.png'),(4,'Anh2.png'),(4,'Anh3.png'),(4,'Anh4.png'),
(5,'My1.png'),(5,'My2.png'),(5,'My3.png'),(5,'My4.png'),
(6,'Dubai1.png'),(6,'Dubai2.png'),(6,'Dubai3.png'),(6,'Dubai4.png'),
(7,'Nhat1.png'),(7,'Nhat2.png'),(7,'Nhat3.png'),(7,'Nhat4.png'),
(8,'QuyNhon1.png'),(8,'QuyNhon2.png'),(8,'QuyNhon3.png'),(8,'QuyNhon4.png'),
(9,'Malaysia1.png'),(9,'Malaysia2.png'),(9,'Malaysia3.png'),(9,'Malaysia4.png'),
(10,'DaiLoan1.png'),(10,'DaiLoan2.png'),(10,'DaiLoan3.png'),(10,'DaiLoan4.png')
go
select * from Images






