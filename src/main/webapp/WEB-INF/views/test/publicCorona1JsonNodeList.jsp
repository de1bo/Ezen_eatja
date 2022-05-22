<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<head>
</head>
<body>
publicCorona1JsonNodeList

<br>node : <c:out value="${node }"/>
<br>node.header : <c:out value="${node.get('header') }"/>
<br>node.header.resultCode : <c:out value="${node.get('header').get('resultCode') }"/>
<br>node.header.resultCode : <c:out value="${fn:replace(node.get('header').get('resultCode'),'&quot;','') }"/>
<br>ResultCode : <c:out value="${ResultCode }"/>
<br>node.header.resultMsg : <c:out value="${fn:replace(node.get('header').get('resultMsg'),'&quot;','') }"/>


<br>node.body.pageNo : <c:out value="${fn:replace(node.get('body').get('pageNo'),'&quto;','') }"/>
<br>node.body.items : <c:out value="${node.get('body').get('items') }"/>
<br>node.body.items : <c:out value="${node.get('body').get('items').get('1').get('MM') }"/>

<%-- <c:forEach items="${items}" var="item" varStatus="status">
	<c:out value="${item.YYYY }"/>
	<br><c:out value="${item.MM}"/>
	<br><c:out value="${item.KIT_PROD_QTY}"/>
	<br><c:out value="${item.KIT_EXPRT_QTY}"/>
	<br><c:out value="${item.KIT_STOCK_QTY}"/>
</c:forEach> --%>
</body>
</html>