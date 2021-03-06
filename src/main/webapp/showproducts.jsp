<%--
  Created by IntelliJ IDEA.
  User: Sergei
  Date: 04.09.2016
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:genericpage>
    <jsp:attribute name="header">
        <h1>Товары</h1>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div class="container">
        <div class="row col-md-10">
            <c:forEach items="${products}" var="item">
                <div class="col-xs-4 col-md-4" style="height:200px;">
                    <img src="/images/${item.imagePath}"
                         alt="picture not found"
                         class="img-rounded"
                         width="100%"
                         height="80%">
                    <h4 class="text-center">${item.name}</h4>
                </div>
            </c:forEach>
        </div>
        </div>
    </jsp:body>
</t:genericpage>
