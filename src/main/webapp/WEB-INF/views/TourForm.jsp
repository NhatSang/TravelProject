<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Travel.co</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>

	<table>
		<form:form action="saveTour" method="POST" modelAttribute="TOUR">
			<form:hidden path="travelPackageId" />
			<tr>
				<td>Tour:</td>
				<td><form:input path="packageName" required="true"/></td>
			</tr>
			<tr>
				<td>Ngày đi:</td>
				<td><form:input path="departureDate" id="departureDate"
						required="true" class="datepicker" /></td>
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
				<td>Ngày về:</td>
				<td><form:input path="returnDate" id="returnDate"
						required="true" class="datepicker" /></td>
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
				<td>Giá:</td>
				<td><form:input path="price" required="true"/></td>
			</tr>
			<tr>
				<td>Mô tả:</td>
				<td><form:textarea path="description" required="true"/></td>
			</tr>
			<tr>
				<td>Số chỗ:</td>
				<td><form:input path="availableSeats" required="true"/></td>
			</tr>
			<tr>
				<td>Hình ảnh:</td>
				<td><input type="file" name="imagesList" id="imagesList"
					accept="image/*" multiple /></td>
			</tr>
			<tr>
				<td>Phương tiện:</td>
				<td><form:select path="vehicle">
						<form:options items="${EVehicle.values()}" />
					</form:select></td>
			</tr>
			<tr>
				<td>Nơi khỏi hành:</td>
				<td><form:select path="departure"
						id="departureLocation" required="true">
						<form:option value="" label="-- Chọn nơi khởi hành --" />
						<form:options items="${LISTDEP}"
							itemLabel="location" />
					</form:select></td>
			</tr>
			<tr>
				<td>Điểm đến:</td>
				<td><form:select path="destination"
						id="destinationLocation" required="true">
						<form:option value="" label="-- chọn điểm đến --" />
						<form:options items="${LISTDES}"
							itemLabel="location" />
					</form:select></td>
			</tr>
			<tr>
				<td>Số ngày:</td>
				<td><form:input path="numberDays" required="true"/></td>
			</tr>
			<tr>
				<td>Điểm tham quan:</td>
				<td><form:input path="touristAttraction" required="true"/></td>
			</tr>
			<tr>
				<td>Ẩm thực:</td>
				<td><form:input path="cuisine" required="true"/></td>
			</tr>
			<tr>
				<td>Khách sạn:</td>
				<td><form:input path="hotel" required="true"/></td>
			</tr>
			<tr>
				<td>Thời gian lý tưởng:</td>
				<td><form:input path="idealTime" required="true"/></td>
			</tr>
			<tr>
				<td>Đối tượng:</td>
				<td><form:input path="object" required="true"/></td>
			</tr>
			<tr>
				<td>Loai tour:</td>
				<td><form:select path="internationalType">
						<form:options items="${EInternationalType.values()}" />
					</form:select></td>
			</tr>
			<tr>
			<td colspan="2"><input type="submit" value="Lưu"/></td>
			</tr>
		</form:form>
	</table>
</body>
</html>