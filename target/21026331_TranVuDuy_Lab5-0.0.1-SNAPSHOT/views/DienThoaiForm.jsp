<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm điện thoại</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif; /* Chọn font chữ cho toàn bộ trang */
            background-color: #f9f9f9; /* Màu nền trang */
            margin: 0; /* Bỏ margin mặc định */
            padding: 20px; /* Padding cho toàn bộ trang */
        }

        .container {
            max-width: 600px; /* Độ rộng tối đa của form */
            margin: auto; /* Căn giữa form */
            background: white; /* Nền trắng cho form */
            padding: 20px; /* Padding cho form */
            border-radius: 8px; /* Bo tròn các góc */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Bóng cho form */
        }

        h1 {
            text-align: center; /* Căn giữa tiêu đề */
            color: #333; /* Màu chữ cho tiêu đề */
        }

        .content-container {
            display: flex;
            flex-direction: column;
            gap: 16px; /* Khoảng cách giữa các phần tử */
        }

        .group-input {
            display: flex;
            flex-direction: column;
            gap: 4px; /* Khoảng cách giữa label và input */
        }

        label {
            font-weight: bold; /* Đậm chữ cho label */
        }

        .error {
            color: red; /* Màu đỏ cho thông báo lỗi */
        }

        input[type="text"],
        input[type="file"],
        select {
            padding: 10px; /* Padding cho các input */
            border: 1px solid #ccc; /* Đường viền xám */
            border-radius: 4px; /* Bo tròn các góc */
            font-size: 1em; /* Kích thước chữ cho input */
        }

        input[type="submit"] {
            background-color: #28a745; /* Màu nền cho nút submit */
            color: white; /* Màu chữ cho nút submit */
            border: none; /* Bỏ viền cho nút submit */
            padding: 10px; /* Padding cho nút submit */
            border-radius: 4px; /* Bo tròn các góc cho nút submit */
            cursor: pointer; /* Hiệu ứng con trỏ tay */
            font-size: 1em; /* Kích thước chữ cho nút submit */
            transition: background-color 0.3s; /* Hiệu ứng chuyển màu cho nút submit */
        }

        input[type="submit"]:hover {
            background-color: #218838; /* Màu nền khi hover */
        }
    </style>
</head>
<body>
    <form action="dien-thoai" method="POST" enctype="multipart/form-data">
        <div class="container">
            <h1>Thêm điện thoại</h1>
            <div class="content-container">
                <div class="group-input">
                    <c:forEach var="violation" items="${errors}">
                        <c:if test="${ violation.propertyPath == 'tenDT' }">
                             <span class="error">${violation.message}</span>
                        </c:if>
                    </c:forEach>
                    <label for="tenDT">Tên điện thoại</label>
                    <input type="text" id="tenDT" name="tenDT"/>
                </div>
                
                <div class="group-input">
                    <c:forEach var="violation" items="${errors}">
                        <c:if test="${ violation.propertyPath == 'namSanXuat' }">
                             <span class="error">${violation.message}</span>
                        </c:if>
                    </c:forEach>
                    <c:if test="${not empty errorNamSX }">
                        <span class="error">${errorNamSX}</span>
                    </c:if>
                    <label for="namSX">Năm sản xuất</label>
                    <input type="text" id="namSX" name="namSX"/>
                </div>
                
                <div class="group-input">
                    <c:forEach var="violation" items="${errors}">
                        <c:if test="${ violation.propertyPath == 'cauHinh' }">
                             <span class="error">${violation.message}</span>
                        </c:if>
                    </c:forEach>
                    <label for="cauHinh">Cấu hình</label>
                    <input type="text" id="cauHinh" name="cauHinh"/>
                </div>
                
                <div class="group-input">
                    <label for="maNCC">Nhà cung cấp</label>
                    <select name="maNCC" id="maNCC">
                        <c:forEach var="ncc" items="${listNCC}">
                            <option value="${ncc.maNCC}">
                                ${ncc.tenNhaCC}
                            </option>
                        </c:forEach>
                    </select>
                </div>
                
                <div class="group-input">
                    <c:forEach var="violation" items="${errors}">
                        <c:if test="${ violation.propertyPath == 'hinhAnh' }">
                             <span class="error">${violation.message}</span>
                        </c:if>
                    </c:forEach>
                    <label for="hinhAnh">Hình ảnh</label>
                    <input type="file" id="hinhAnh" name="hinhAnh"/>
                </div>
                <div>
                    <input type="submit" value="Thêm"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
