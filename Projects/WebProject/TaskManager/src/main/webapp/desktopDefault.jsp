<%-- 
    Document   : desktopDefault
    Created on : 12.08.2016, 6:29:11
    Author     : Panas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="utf-8">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

        <link rel="stylesheet" href="http://cdn.webix.com/edge/webix.css" type="text/css"> 
        <link href="css/simple-sidebar.css" rel="stylesheet">
        <script src="http://cdn.webix.com/edge/webix.js" type="text/javascript"></script>
    </head>
    <body>

        <div class="container-fluid">
            <div id="wrapper">
                
                <%@include file="WEB-INF/include/leftMenu.jspf" %>
                
                <div class="row" id="page-content-wrapper">
                    <div class="col-md-12">
                        <nav class="navbar navbar-default" role="navigation">
                            <div class="navbar-header">

                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                    <span class="sr-only"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                                </button> <a href="#menu-toggle" class="btn navbar-brand" id="menu-toggle">Панель управления</a>
                            </div>

                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li class="active">
                                        <a href="#">Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Link</a>
                                    </li>

                                </ul>

                                <ul class="nav navbar-nav navbar-right">
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Профиль<strong class="caret"></strong></a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="#">Рабочий стол</a>
                                            </li>
                                            <li>
                                                <a href="#">Another action</a>
                                            </li>
                                            <li>
                                                <a href="#">Настройки</a>
                                            </li>
                                            <li class="divider">
                                            </li>
                                            <li>
                                                <a href="#">Выход</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>

                        </nav>
                        <div class="row">
                            <div class="col-md-6">
                                <h3>
                                    Задания на сегодня
                                </h3>
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th width="10%">
                                                Приоритет
                                            </th>
                                            <th>
                                                Задание
                                            </th>
                                            <th width="22%">
                                                Статус
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="danger">
                                            <td>
                                                1
                                            </td>
                                            <td>
                                                Сходить на работу
                                            </td>
                                            <td>
                                                Не выполнено
                                            </td>
                                        </tr>
                                        <tr class="success">
                                            <td>
                                                1
                                            </td>
                                            <td>
                                                Приготовить поесть
                                            </td>
                                            <td>
                                                Выполнено
                                            </td>
                                        </tr>
                                        <tr class="warning">
                                            <td>
                                                2
                                            </td>
                                            <td>
                                                TB - Monthly
                                            </td>
                                            <td>
                                                Выполняеться
                                            </td>
                                        </tr>
                                       
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-12" >
                                        <ul class="nav nav-tabs">
                                            <li class="active">
                                                <h3>Мои цели</h3>
                                            </li>
                                            <li class="dropdown pull-right" style="margin-top: 20px;">
                                                <div class="btn-group btn-group-xs">

                                                    <button class="btn btn-default" type="button">
                                                        <em class="glyphicon glyphicon-plus"></em> add
                                                    </button> 
                                                </div>                                          
                                            </li>
                                        </ul>
                                        <table class="table table-hover" id="listGoal">
                                            <thead>
                                                <tr>
                                                    <th width="5%">
                                                        №
                                                    </th>
                                                    <th>
                                                        Название
                                                    </th>
                                                    <th>
                                                        Начало
                                                    </th>
                                                    <th>
                                                        Конец
                                                    </th>
                                                    <th width="5%">
                                                        Статус
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="active">
                                                    <td>
                                                        1
                                                    </td>
                                                    <td>
                                                        Переезд в Америку
                                                    </td>
                                                    <td>
                                                        01/04/2012
                                                    </td>
                                                    <td>09/09/2018</td>
                                                    <td>
                                                        10%
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <h3>
                                            Мой прогресс
                                        </h3>
                                        <div class="row">
                                            <div class="col-md-12" id="myProgress" style="height:200px;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="js/jquery.js"></script>


        <!-- Menu Toggle Script -->
        <script>
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });
        </script>
        <script>
            var dataset = [
                {id: 1, count: 2, date: "10.08.16"},
                {id: 2, count: 5, date: "11.08.16"},
                {id: 3, count: 4, date: "12.08.16"},
                {id: 4, count: 5, date: "13.08.16"},
                {id: 5, count: 0, date: "14.08.16"},
                {id: 6, count: 0, date: "15.08.16"},
                {id: 7, count: 4, date: "16.08.16"},
                {id: 8, count: 5, date: "17.08.16"},
                {id: 9, count: 4, date: "18.08.16"}
            ];
            webix.ui({
                view: "chart",
                container: "myProgress",
                type: "spline",
                value: "#count#",
                item: {
                    borderColor: "#ffffff",
                    color: "#000000"
                },
                line: {
                    color: "#ff9900",
                    width: 3
                },
                xAxis: {
                    template: "'#date#"
                },
                offset: 0,
                yAxis: {
                    start: 0,
                    end: 10,
                    step: 2,
                    template: function (obj) {
                        return (obj % 2 ? "" : obj)
                    }
                },
                data: dataset
            });
        </script>

        <script type="text/javascript" charset="utf-8">
            webix.ui({
                view: "contextmenu",
                data: ["Add", "Rename", "Delete", {$template: "Separator"}, "Info"],
                master: "listGoal",
                on: {
                    onItemClick: function (id) {
                        webix.message(this.getItem(id).value);
                    }
                }
            });
        </script>
    </body>
</html>