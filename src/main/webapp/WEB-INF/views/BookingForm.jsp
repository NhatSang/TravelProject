<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Travel.co</title>
<link type="text/css" rel="stylesheet"
	href="/resources/css/styleUserForm.css" />
</head>
<body>
	<div>
	<input type="button" value="Quản lý Người Dùng"
			onclick="window.location.href='http://localhost:8080/user/showUsers'; return false;"
			class="button_manager" /> <input type="button" value="Quản lý Tour"
			onclick="window.location.href='http://localhost:8080/Tour/showListTours'; return false;"
			class="button_manager" /> <input type="button"
			value="Quản lý Combo Tour"
			onclick="window.location.href='http://localhost:8080/Combo/showListCombos'; return false;"
			class="button_manager"/>
			<input type="button"
			value="Quản lý Booking"
			onclick="window.location.href='http://localhost:8080/Booking/showBooking'; return false;"
			class="button_manager" style="background-color: #3B0EEE; color: #fff" />
		<br> <br>
	</div>
	<div class="body_manager">
		<h1 class="title">Quản lý Booking</h1>

		<form action="searchBooking" method="GET" >
					<input type="submit" value="Tìm kiếm"
					class="add-button" />
					
					<input type="text" placeholder="Tìm kiếm người dùng"
					 name="bookingId"  style="justify-content: center;width: 1310px;font-size: 15px;padding: 10px;height: 20px" />
				</form>

		<div class="table">
			<table>
				<tr>
					<th class="row_head_1">Mã hóa đơn</th>
					<th class="row_head_2">Tên Tour</th>
					<th class="row_head_2">Mã tour</th>
					<th class="row_head_2">Giá</th>
					<th class="row_head_2">Tên khách hàng</th>
					<th class="row_head_2">Số điện thoại</th>
					<th class="row_head_3">Email</th>
				
					
					<!-- Add more columns as needed -->
				</tr>
				<c:forEach var="tempBooking" items="${booking}">


					<tr>

						<td class="row_head">${tempBooking.bookingId}</td>
						<td class="row_head">${tempBooking.travelPackage.packageName}</td>
						<td class="row_head">${tempBooking.travelPackage.travelPackageId}</td>
						<td class="row_head">${tempBooking.travelPackage.price}</td>
						<td class="row_head">${tempBooking.user.fullName}</td>
						<td class="row_head">${tempBooking.user.phone}</td>
						<td class="row_head">${tempBooking.user.email}</td>
					
						
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>



</body>
</html>