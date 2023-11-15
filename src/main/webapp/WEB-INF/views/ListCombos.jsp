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
			onclick="window.location.href=''; return false;"
			class="button_manager" />
		<input type="button" value="Quản lý Combo Tour"
			onclick="window.location.href='.....'; return false;"
			class="button_manager"  style="background-color: #3B0EEE; color: #fff"/> <br> <br>
	</div>
	<div class="body_manager">
		<h1 class="title">QUẢN LÝ COMBO TOUR</h1>

		<input type="button" value="Thêm combo mới"
			onclick="window.location.href='addCombo'; return false;"
			class="add-button" /> <br> <br>

		<div class="table">

			<table>

				<tr>
					<th class="row_head_1">Mã combo</th>
					<th class="row_head_2">Tên combo</th>
					<th class="row_head_2">Nơi khỏi hành</th>
					<th class="row_head_2">Điểm đến</th>
					<th class="row_head_2">Ngày đi</th>
					<th class="row_head_2">Ngày về</th>
					<th class="row_head_2">Giá combo</th>
					<th class="row_head_2">Số chỗ còn</th>
					<th class="row_head_3">Chức năng</th>
					<!-- Add more columns as needed -->
				</tr>

				<c:forEach var="temp" items="${combos}">
					<c:url var="updateLink" value="/Combo/updateCombo">
						<c:param name="comboId" value="${temp.travelPackageId}"></c:param>
					</c:url>
					<c:url var="deleteLink" value="/Combo/deleteCombo">
						<c:param name="comboId" value="${temp.travelPackageId}"></c:param>
					</c:url>
					<tr>
						<td class="row_head">${temp.travelPackageId}</td>
						<td class="row_head">${temp.packageName}</td>
						<td class="row_head">${temp.departure.location}</td>
						<td class="row_head">${temp.destination.location}</td>
						<td class="row_head">${temp.departureDate}</td>
						<td class="row_head">${temp.returnDate}</td>
						<td class="row_head"><fmt:formatNumber>${temp.price}</fmt:formatNumber></td>
						<td class="row_head">${temp.availableSeats}</td>
						<td class="row_head" style="display: flex"><a href="${updateLink}"
							class="manager_button">Cập nhật</a>
							
							<a href="${deleteLink}"
							class="manager_button_delete">Xoá</a>
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>
</body>
</html>