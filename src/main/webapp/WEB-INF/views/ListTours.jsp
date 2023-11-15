<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet"
	href="/resources/css/styleUserForm.css" />
<title>Admin Travel.co</title>
</head>
<body>
	<div>
		<input type="button" value="Quản lý Người Dùng"
			onclick="window.location.href='.....'; return false;"
			class="button_manager" /> <input type="button" value="Quản lý Tour"
			onclick="window.location.href='Tour/showListTours'; return false;"
			class="button_manager" style="background-color: #3B0EEE;color: #fff" /> <input type="button"
			value="Quản lý Combo Tour"
			onclick="window.location.href='.....'; return false;"
			class="button_manager" /> <br> <br>
	</div>
	<div class="body_manager">
		<h1 class="title">QUẢN LÝ TOUR</h1>

		<input type="button" value="Thêm tour mới"
			onclick="window.location.href='addTour'; return false;"
			class="add-button" /> <br> <br>

		<div class="table">

			<table>

				<tr>
					<th class="row_head_1">Mã tour</th>
					<th class="row_head_2">Tên tour</th>
					<th class="row_head_2">Nơi khỏi hành</th>
					<th class="row_head_2">Điểm đến</th>
					<th class="row_head_2">Ngày đi</th>
					<th class="row_head_2">Ngày về</th>
					<th class="row_head_2">Giá tour</th>
					<th class="row_head_2">Số chỗ còn</th>
					<th class="row_head_3">Chức năng</th>
					<!-- Add more columns as needed -->
				</tr>

				<c:forEach var="tempTour" items="${LISTTOURS}">
					<c:url var="updateLink" value="/Tour/updateTour">
						<c:param name="tourId" value="${tempTour.travelPackageId}"></c:param>
					</c:url>
					<tr>
						<td class="row_head">${tempTour.travelPackageId}</td>
						<td class="row_head">${tempTour.packageName}</td>
						<td class="row_head">${tempTour.departure.location}</td>
						<td class="row_head">${tempTour.destination.location}</td>
						<td class="row_head">${tempTour.departureDate}</td>
						<td class="row_head">${tempTour.returnDate}</td>
						<td class="row_head"><fmt:formatNumber>${tempTour.price}</fmt:formatNumber></td>
						<td class="row_head">${tempTour.availableSeats}</td>
						<td class="row_head"><a href="${updateLink}"
							class="manager_button">Cập nhật</a>
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>
</body>
</html>