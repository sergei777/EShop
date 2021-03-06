<%--
  Created by IntelliJ IDEA.
  User: Sergei
  Date: 02.09.2016
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:genericpage>
    <jsp:attribute name="header">
        <h1>Регистрация</h1>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div class="container">
            <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

            <div id="login-overlay" class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title text-center" id="myModalLabel">Регистрация нового пользователя</h4>
                    </div>

                    <div class="modal-body">


                        <form id="registerForm" action="/sign-up" method="POST" >
                            <!---form--->           <div class="form-group">
                            <!---input width--->    <div class="col-xs-6">
                            <label for="InputName">Имя</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="first_name" placeholder="Введите имя пользователья" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                            <br>
                            <label for="InputName">Логин</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="username" placeholder="Введите логин" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                            </div>
                            <!--------------------------------------separator---------------------------------------------------------------> <hr>
                        </div>
                        </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="InputName">Фамилия</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="last_name" placeholder="Введите фамилию" required>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                    </div>

                                    <br>
                                    <label for="InputPassword">Пароль</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" name="password" placeholder="Введите пароль" required>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                    </div>
                                    <!--------------------------------------separator---------------------------------------------------------------> <hr>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-12">
                                    <label for="InputStreetName">Дата рождения</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="birth_date" placeholder="Введите дату рождения" required>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                    </div>
                                    <!----------------------------break-------------------------------------------------------------> <br>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-12">
                                    <label for="InputEmail">E-mail</label>
                                    <div class="input-group">
                                        <input type="email" class="form-control" name="email" placeholder="Введите e-mail" required>
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                                    </div>
                                    <!----------------------------break-------------------------------------------------------------> <br>
                                </div>
                            </div>

                            <div class="form-group">
                                    <input type="submit" form="registerForm" name="submit" id="submit" value="Зарегистироваться!" class="btn btn-success center-block">
                            </div>
                        </form>
                    </div><!---modal-body--->
                </div>
            </div>


            <script type="text/javascript">
            </script>
            </body>
            </html>
        </div>
    </jsp:body>
</t:genericpage>
