<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Travel.co</title>
<link type="text/css" rel="stylesheet"
	href="/resources/css/styleUserForm.css" />
</head>
<body>
	<div>
		<input type="button" value="Quản lý Người Dùng"
			onclick="window.location.href='.....'; return false;"
			class="button_manager" style="background-color: #3B0EEE; color: #fff" />
		<input type="button" value="Quản lý Tour"
			onclick="window.location.href='.....'; return false;"
			class="button_manager" /> <input type="button"
			value="Quản lý Combo Tour"
			onclick="window.location.href='.....'; return false;"
			class="button_manager" /> <br> <br>
	</div>
	<div class="body_manager">
		<h1 class="title">QUẢN LÝ NGƯỜI DÙNG</h1>

		<input type="button" value="Thêm người dùng"
			onclick="window.location.href='addUsers'; return false;"
			class="add-button" /> <br> <br>

		<div class="table">
			<table>
				<tr>
					<th class="row_head_1">User ID</th>
					<th class="row_head_2">Họ tên</th>
					<th class="row_head_2">Email</th>
					<th class="row_head_2">Số điện thoại</th>
					<th class="row_head_2">Địa chỉ</th>
					<th class="row_head_3">Chức năng</th>
					<!-- Add more columns as needed -->
				</tr>
				<c:forEach var="tempUser" items="${user}">
					<c:url var="updateLink" value="/user/updateUsers">
						<c:param name="userId" value="${tempUser.userId}"></c:param>
					</c:url>
					<c:url var="deleteLink" value="/user/deleteUsers">
						<c:param name="userId" value="${tempUser.userId}"></c:param>
					</c:url>
					<tr>

						<td class="row_head">${tempUser.userId}</td>
						<td class="row_head">${tempUser.fullName}</td>
						<td class="row_head">${tempUser.email}</td>
						<td class="row_head">${tempUser.phone}</td>
						<td class="row_head">${tempUser.address}</td>
						<td class="row_head"><a href="${updateLink}"
							class="manager_button">Cập nhật</a> <a href="${deleteLink}"
							onclick="if(!(confirm('Are you sure'))) return false;"
							class="manager_button_delete">Xóa</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>



</body>
</html>