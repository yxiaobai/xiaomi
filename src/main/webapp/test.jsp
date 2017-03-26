<%@ page import="com.entity.GoodsInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>测试</title>
</head>
<body>
<a href="test">tt</a>
<%
    List<GoodsInfo> li=(List<GoodsInfo>) request.getAttribute("goodsInfo");
    PrintWriter o=response.getWriter();
    o.print(li.toString());
%>
<c:forEach items="${goodsInfo}" var="st">
    <div>${st.goodsName}</div>
</c:forEach>
------------------------------
<br>
<c:forEach begin="0" end="10" var="i">
    ${i}<br>
</c:forEach>
</body>
</html>