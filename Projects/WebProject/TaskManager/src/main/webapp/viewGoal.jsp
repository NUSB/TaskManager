<%-- 
    Document   : viewGoal
    Created on : 14.08.2016, 9:19:38
    Author     : Panas
--%>
<%@page import="com.segvek.taskmanager.model.ItemGoalPlan"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <%@include file="WEB-INF/include/topMenu.jspf" %>
                        <div class="row">
                            <div class="col-md-6">
                                <h3>
                                    Информация о цели: переезд в Америку
                                </h3>
                            </div>
                            <div class="col-md-6" align="right">
                                <div class="btn-group">

                                    <button class="btn btn-default" type="button">
                                        <em class="glyphicon glyphicon-align-left"></em> Left
                                    </button> 
                                    <button class="btn btn-default" type="button">
                                        <em class="glyphicon glyphicon-align-center"></em> Center
                                    </button> 
                                    <button class="btn btn-default" type="button">
                                        <em class="glyphicon glyphicon-align-right"></em> Right
                                    </button> 
                                    <button class="btn btn-default" type="button">
                                        <em class="glyphicon glyphicon-align-justify"></em> Justify
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <h3 class="text-muted">
                                    План достижения цели
                                </h3>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>
                                                #
                                            </th>
                                            <th>
                                                Навзвание
                                            </th>
                                            <th>
                                                Конец
                                            </th>
                                            <th>
                                                статус
                                            </th>
                                            <th>
                                                Счёт
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% int i=1; for(ItemGoalPlan item:(List<ItemGoalPlan>)request.getAttribute("plan")){%>
                                        <tr>
                                            <td>
                                                <%=i++%>
                                            </td>
                                            <td>
                                                <%=item.getName() %>
                                            </td>
                                            <td>
                                                <%=item.getEndDate() %>
                                            </td>
                                            <td>
                                                Default
                                            </td>
                                            <td>
                                                <%=item.getCount()==null?"":item.getCount().getId()%>
                                            </td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-md-6">
                                <h3 class="text-muted text-center">
                                    Состояния привязаных кошельков
                                </h3>
                                <div id="stateMoney" style="height:200px;"></div>
                            </div>
                        </div>
                        <h3 class="text-muted">
                            h3. Lorem ipsum dolor sit amet.
                        </h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>
                                        #
                                    </th>
                                    <th>
                                        Product
                                    </th>
                                    <th>
                                        Payment Taken
                                    </th>
                                    <th>
                                        Status
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        1
                                    </td>
                                    <td>
                                        TB - Monthly
                                    </td>
                                    <td>
                                        01/04/2012
                                    </td>
                                    <td>
                                        Default
                                    </td>
                                </tr>
                                <tr class="active">
                                    <td>
                                        1
                                    </td>
                                    <td>
                                        TB - Monthly
                                    </td>
                                    <td>
                                        01/04/2012
                                    </td>
                                    <td>
                                        Approved
                                    </td>
                                </tr>
                                <tr class="success">
                                    <td>
                                        2
                                    </td>
                                    <td>
                                        TB - Monthly
                                    </td>
                                    <td>
                                        02/04/2012
                                    </td>
                                    <td>
                                        Declined
                                    </td>
                                </tr>
                                <tr class="warning">
                                    <td>
                                        3
                                    </td>
                                    <td>
                                        TB - Monthly
                                    </td>
                                    <td>
                                        03/04/2012
                                    </td>
                                    <td>
                                        Pending
                                    </td>
                                </tr>
                                <tr class="danger">
                                    <td>
                                        4
                                    </td>
                                    <td>
                                        TB - Monthly
                                    </td>
                                    <td>
                                        04/04/2012
                                    </td>
                                    <td>
                                        Call in to confirm
                                    </td>
                                </tr>
                            </tbody>
                        </table>
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
                var multiple_dataset = [
                    {sales: "20", sales2: "35", sales3: "55", year: "02"},
                    {sales: "40", sales2: "24", sales3: "40", year: "03"},
                    {sales: "44", sales2: "20", sales3: "27", year: "04"},
                    {sales: "23", sales2: "50", sales3: "43", year: "05"},
                    {sales: "21", sales2: "36", sales3: "31", year: "06"},
                    {sales: "50", sales2: "40", sales3: "56", year: "07"},
                    {sales: "30", sales2: "65", sales3: "75", year: "08"},
                    {sales: "90", sales2: "62", sales3: "55", year: "09"},
                    {sales: "55", sales2: "40", sales3: "60", year: "10"},
                    {sales: "72", sales2: "45", sales3: "54", year: "11"}
                ];
                webix.ui({
                    view: "chart",
                    container: "stateMoney",
                    type: "line",
                    xAxis: {
                        template: "'#year#"
                    },
                    yAxis: {
                        start: 0,
                        step: 10,
                        end: 100
                    },
                    legend: {
                        values: [{text: "Company A", color: "#1293f8"}, {text: "Company B", color: "#66cc00"}],
                        align: "right",
                        valign: "middle",
                        layout: "y",
                        width: 100,
                        margin: 8
                    },
                    series: [
                        {
                            value: "#sales#",
                            item: {
                                borderColor: "#1293f8",
                                color: "#ffffff"
                            },
                            line: {
                                color: "#1293f8",
                                width: 3
                            },
                            tooltip: {
                                template: "#sales#"
                            }
                        },
                        {
                            value: "#sales2#",
                            item: {
                                borderColor: "#66cc00",
                                color: "#ffffff"
                            },
                            line: {
                                color: "#66cc00",
                                width: 3
                            },
                            tooltip: {
                                template: "#sales2#"
                            }
                        },
                        {
                            value: "#sales3#",
                            item: {
                                borderColor: "#66cc00",
                                color: "#ffffff"
                            },
                            line: {
                                color: "#66cc00",
                                width: 3
                            },
                            tooltip: {
                                template: "#sales3#"
                            }
                        }
                    ],
                    data: multiple_dataset
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
