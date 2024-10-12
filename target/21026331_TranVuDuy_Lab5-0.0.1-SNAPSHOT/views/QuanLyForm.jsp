<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý</title>
<style type="text/css">
	body {
		font-family: Arial, sans-serif;
		margin: 20px;
		background-color: #f8f8f8;
	}
	
	h1 {
		color: #333;
	}

	table {
		width: 100%;
		border-collapse: collapse;
		margin-top: 20px;
		background-color: #fff;
		box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	}

	th, td {
		padding: 12px;
		text-align: left;
		border-bottom: 1px solid #ddd;
	}

	th {
		background-color: #f2f2f2;
		color: #555;
	}

	tr:hover {
		background-color: #f1f1f1;
	}

	img {
		width: 150px;
		border-radius: 8px; /* Bo tròn các góc của hình ảnh */
	}

	.container {
		display: flex;
		flex-direction: column;
	}

	.button {
		display: inline-block;
		padding: 8px 16px;
		background-color: #007BFF; /* Màu nền của nút */
		color: white; /* Màu chữ */
		text-align: center;
		text-decoration: none; /* Bỏ gạch chân */
		border-radius: 5px; /* Bo tròn các góc */
		transition: background-color 0.3s; /* Hiệu ứng chuyển màu */
	}

	.button:hover {
		background-color: #0056b3; /* Màu khi hover */
	}
</style>
</head>
<body>
	<div class="container">
		<h1>Quản lý điện thoại</h1>
		<table border="1">
			<tr>
				<th>Mã điện thoại</th>
				<th>Tên điện thoại</th>
				<th>Mã nhà cung cấp</th>
				<th>Năm sản xuất</th>
				<th>Cấu hình</th>
				<th>Hình ảnh</th>
				<th>Action</th>
			</tr>
			<c:forEach var="dt" items="${listDT}">
				<tr>
					<td>${dt.maDT}</td>
					<td>${dt.tenDT}</td>
					<td>${dt.nhaCungCap.maNCC}</td>
					<td>${dt.namSanXuat}</td>
					<td>${dt.cauHinh}</td>
					<td>
						<img alt="" src="${pageContext.request.contextPath}/uploads/${dt.hinhAnh}">
					</td>
					<td>
						<a href="${pageContext.request.contextPath}/manage?id=${dt.maDT}" class="button">Xóa</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
