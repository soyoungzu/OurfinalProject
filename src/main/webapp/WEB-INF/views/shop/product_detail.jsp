<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product_detail</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/menu.jsp" %>

<br>
<h2>상품 상세 정보</h2>
<table>
	<tr>
		<td><img src="${path}/resources/images/${dto.product_url}"
		width="300px" height="300px"></td>
				<td align="center">
				<table>
					<tr>
						<td>상품분류</td>
						<td>${dto.product_kind}</td>
					</tr>
					<tr>
						<td>상품명</td>
						<td>${dto.product_name}</td>
					</tr>
					<tr>
						<td>가격</td>
						<td>${dto.price}</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>${dto.product_desc}</td>		
					</tr>
					<tr>
						<td colspan="2">
							<form name="form1" method="post"
							action="${path}/shop/cart/insert.do">
							<input type="hidden" name="product_id"
							value="${dto.product_id}">
							<select name="amount">
							<!-- 상품 개수 선택 (1~15개) -->
							<c:forEach begin="1" end="15" var="i">
							<option value="${i}">${i}</option>
							</c:forEach>
							</select>
							<input type="submit" value="장바구니에 담기">
							</form>
						</td>
					</tr>
			</table>
		</td>
	</tr>
</table>
</body>
</html>