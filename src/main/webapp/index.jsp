<%--
  Created by IntelliJ IDEA.
  User: Sergei
  Date: 28.08.2016
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<style>
    .imageborder
    {
        border-width: 3px;
        border-color: Black;
    }
</style>
<t:genericpage>
    <jsp:attribute name="header">
        <h1>Основная страница</h1>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div class="container">
            <div class="row">
                <div class="col-xs-3 col-md-3" style="height:200px;">
                    <img src="http://kypivelo.ru/upload/iblock/3fe/b7b87858ff2aa08cda34dbe27ca104b5.jpg"
                         alt="picture not found"
                        class="img-rounded"
                        width="100%"
                        height="80%">
                    <h4 class="text-center">This is some text</h4>
                </div>
                <div class="col-xs-3 col-md-3" style="height:200px;">
                    <img src="http://kypivelo.ru/upload/iblock/3fe/b7b87858ff2aa08cda34dbe27ca104b5.jpg"
                         alt="picture not found"
                         class="img-rounded"
                         width="100%"
                         height="80%">
                    <h4 class="text-center">This is some text</h4>
                </div>
                <div class="col-xs-3 col-md-3" style="height:200px;">
                    <img src="http://kypivelo.ru/upload/iblock/3fe/b7b87858ff2aa08cda34dbe27ca104b5.jpg"
                         alt="picture not found"
                         class="img-rounded"
                         width="100%"
                         height="80%"
                         border="4px double black">
                    <h4 class="text-center">This is some text</h4>
                </div>
            </div>
        </div>
    </jsp:body>
</t:genericpage>
