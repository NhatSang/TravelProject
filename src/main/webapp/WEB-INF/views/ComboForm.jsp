<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Travel.co</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link type="text/css" rel="stylesheet"
	href="/resources/css/styleAddUserForm.css" />
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>

	<div class="body_manager">
		<div class="container" style="height: 870px">
			<h2 class="title">CẬP NHẬT COMBO</h2>
			<table>
				<form:form action="saveCombo" method="POST" modelAttribute="combo">
					<form:hidden path="travelPackageId" />
					<tr>
						<td class="row_1">Tên Combo:</td>
						<td><form:input path="packageName" required="true"
								class="row_2" /></td>
					</tr>
					<tr>
						<td class="row_1">Ngày đi:</td>
						<td><form:input path="departureDate" id="departureDate"
								required="true" class="datepicker row_2" /></td>
						<script>
							$(document).ready(function() {
								$(".datepicker").datepicker({
									dateFormat : 'yy-mm-dd', // Set the desired date format
									changeMonth : true,
									changeYear : true
								// Add other options as needed
								});
							});
						</script>
					</tr>

					<tr>
						<td class="row_1">Ngày về:</td>
						<td><form:input path="returnDate" id="returnDate"
								required="true" class="datepicker row_2" /></td>
						<script>
							$(document).ready(function() {
								$(".datepicker").datepicker({
									dateFormat : 'yy-mm-dd', // Set the desired date format
									changeMonth : true,
									changeYear : true
								// Add other options as needed
								});
							});
						</script>
					</tr>
					<tr>
						<td class="row_1">Giá:</td>
						<td><form:input path="price" required="true" class="row_2" /></td>
					</tr>
					<tr>
						<td class="row_1">Mô tả:</td>
						<td><form:textarea path="description" required="true"
								class="row_2" /></td>
					</tr>
					<tr>
						<td class="row_1">Số chỗ:</td>
						<td><form:input path="availableSeats" required="true"
								class="row_2" type="number" /></td>
					</tr>
					<tr>
						<td class="row_1">Hình ảnh:</td>
						<td><input class="row_2" type="file" name="imagesList"
							id="imagesList" accept="image/*" multiple /></td>
					</tr>
					<%-- 					<tr>
						<td class="row_1">Phương tiện:</td>
						<td><form:select path="vehicle" class="row_2">
								<form:options items="${EVehicle.values()}" />
							</form:select></td>
					</tr> --%>
					<tr>
						<td class="row_1">Nơi khỏi hành:</td>
						<td><form:select path="departure" id="departureLocation"
								required="true" class="row_2">
								<form:option value="" label="-- Chọn nơi khởi hành --" />
								<form:options items="${departures}" itemLabel="location" />
							</form:select></td>
					</tr>
					<tr>
						<td class="row_1">Điểm đến:</td>
						<td><form:select path="destination" id="destinationLocation"
								required="true" class="row_2">
								<form:option value="" label="-- chọn điểm đến --" />
								<form:options items="${destinations}" itemLabel="location" />
							</form:select></td>
					</tr>
					<tr>
						<td class="row_1">Giờ checkin:</td>
						<td><form:input path="checkinTime" required="true"
								class="row_2" type="number" min="0" max="23" step="1" /></td>
					</tr>
					<tr>
						<td class="row_1">Giờ checkout:</td>
						<td><form:input path="checkoutTime" required="true"
								class="row_2" type="number" min="0" max="23" step="1" /></td>
					</tr>
					<tr>
						<td class="row_1">Thông tin Combo:</td>
						<td><form:input path="comboInf" required="true" class="row_2" /></td>
					</tr>
					<tr>
						<td class="row_1">Loai Combo:</td>
						<td><form:select path="comboType" class="row_2">
								<form:options items="${EComboType.values()}" />
							</form:select></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Lưu" class="save"
							style="width: 200px; margin-left: 50px" /></td>
					</tr>
				</form:form>
			</table>
		</div>
	</div>
</body>
</html>