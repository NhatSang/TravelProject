use DuLich
insert into Userr values(
'0101010101','test@gmail.com','testata','nhat Sang'
),
(
'0101010101','tes2t@gmail.com','tes2tata','sang nhat'
)

select * from Userr

/*0:admin, 1:customer(mac dinh)*/
insert into Account
values (1,0,'admin','admin'),
(2,1,'abc','test1')

insert into Departure
values (N'location1')

/* 1: trong nuoc, 0: nuoc ngoai*/
insert into Destination
values (1,N'location1'),
(0,N'location2')

/*Tour*/
/*vehicle: 1: xe, 0: may bay
internationalType: 1: trong nuoc, 0: nuoc ngoai
travelPackage_type: 1: tour, 2: combo
*/
insert into travel_package(travel_package_type,package_name,departure_date,return_date,price,description,available_seats,vehicle,departure_id,destination_id,number_days,tourist_attraction,cuisine,hotel,ideal_time,object,international_type)
values (1,N'tour1','2023-11-11','2023-11-20',20000,N'mo ta tour',10,1,1,1,9,N'cac diem  tham quan',N'Am thuc',N'khach san',N'thang 7',N'cap doi',1),
(1,N'tour2','2023-11-11','2023-11-20',20000,N'mo ta tour',10,0,1,2,9,N'cac diem  tham quan',N'Am thuc',N'khach san',N'thang 7',N'cap doi',0)

/*comboType: 0: xe+hotel, 1: maybay+hotel*/
insert into travel_package(travel_package_type,package_name,departure_date,return_date,price,description,available_seats,vehicle,departure_id,destination_id,checkin_time,checkout_time,vehicle_inf,combo_inf,combo_type)
values (2,N'combo1','2023-11-11','2023-11-14',1000000,N'mo ta combo',20,0,1,2,12,12,N'thong tin phuong tien: gio khoi hanh...',N'combo bao gom nhung gi ...',1)

select * from travel_package
insert into Images
values (1,'image1.png'),(1,'image2.png'),(2,'image3.png'),(3,'image4.png')