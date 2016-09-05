<%-- 
    Document   : ViewStateCount
    Created on : 16.08.2016, 19:02:46
    Author     : Panas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.segvek.taskmanager.Utils.MapItem"%>
<%@page import="com.segvek.taskmanager.Utils"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.segvek.taskmanager.model.Acount"%>
<%@page import="com.segvek.taskmanager.model.FixingHashAcount"%>
<%@page import="java.util.Set"%>
<%@page import="com.segvek.taskmanager.model.FixingAcount"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="utf-8">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

        <link href="css/simple-sidebar.css" rel="stylesheet">

        <script src="http://cdn.webix.com/edge/webix.js" type="text/javascript"></script>
        <link rel="stylesheet" href="http://cdn.webix.com/edge/webix.css" type="text/css"> 

        <link rel="stylesheet" type="text/css" href="/css/samples.css">
        <script src="js/testdata.js" type="text/javascript" charset="utf-8"></script>

    </head>
    <body>

        <div class="container-fluid">
            <div id="wrapper">

                <%@include file="WEB-INF/include/leftMenu.jspf" %>
                <div class="row" id="page-content-wrapper">
                    <div class="col-md-12">
                        <%@include file="WEB-INF/include/topMenu.jspf" %>
                        <div class="row">
                            <div class="col-md-12 "  >
                                <h3>Состояния счетов</h3>
                                        
                                <div id="tableStateAcount"></div>
                                <h3>Общая динамика</h3>
                                <div id="chartsStateAount"></div>
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
        <script type="text/javascript" charset="utf-8">
            var dataStateAcount = [
            <% List<Acount> acounts = (List<Acount>) request.getAttribute("acounts");
                List<FixingAcount> fa = (List<FixingAcount>) request.getAttribute("fixing");
                int id = 0;
                for (Acount acount : acounts) {
                    out.print("{\"id\":" + id + ",\"title\":\"" + acount.getName() + "\",\"rank\":" + id + " ");
                    double sum = 0;
                    for (FixingHashAcount fha : acount.getFha()) {
                        out.print(",\"fixingAcount" + fha.getFixing().getId() + "\":" + String.format("%.2f", fha.getValue()).replace(',', '.'));
                        sum += fha.getValue();
                    }
                    out.print(",\"summ\":" + String.format("%.2f", sum).replace(',', '.') + " },");
                    id++;
                }
                out.print("{\"id\":" + id + ",\"title\":\"сума\"");
                int i = 2;
                Map<String, Double> map = new LinkedHashMap<>();

                for (FixingAcount fixing : fa) {
                    int j = 0;
                    out.print(",\"fixingAcount" + fixing.getId() + "\":\"=");
                    int col = fixing.getFha().size();
                    int k = 0;
                    double sum = 0;
                    for (FixingHashAcount fha : fixing.getFha()) {
                        sum += fha.getValue();
                        out.print("[:" + j + ",:" + i + "]");
                        if (k++ < col - 1) {
                            out.print("+");
                        }
                        j++;
                    }
                    map.put(fixing.getDate(), sum);
                    out.print("\"");
                    i++;
                }
                out.print("}");
            %>
            ]


            webix.ui({
            container: "tableStateAcount",
                    view: "datatable",
                    id: "tableCount",
                    columns: [
                    {id: "rank", header: "", css: "rank", width: 50},
                    {id: "title", header: "Название", width: 200},
            <%for (FixingAcount fixing : fa) {%>
                    {id: <%="\"fixingAcount" + fixing.getId() + "\""%>, header: <%="\"" + fixing.getDate() + "\""%>},
            <%}%>
                    {id: "summ", header: "Сума", width: 80}
                    ],
                    select: "row",
                    blockselect: true,
                    multiselect: true,
                    rightSplit: 1,
                    leftSplit: 2,
                    math: true,
                    autoheight: true,
                    data:dataStateAcount
            });
        </script>

        <script type="text/javascript" charset="utf-8">
                    var dataset = [
            <%
                int h = 1;
                Iterator<Map.Entry<String, Double>> entries = map.entrySet().iterator();
                ArrayList<MapItem> listitem = Utils.convertMapToArrayList(map);
                double max = 0, min = Double.MAX_VALUE;
                for (int u = 0; u < listitem.size(); u += listitem.size() / 10 > 1 ? listitem.size() / 10 : 1) {
                    out.print("{id:" + (h++) + ", sales:" + String.format("%.2f", listitem.get(u).getValue()).replace(',', '.') + ",year:\"" + listitem.get(u).getKey() + "\"},\n");
                    if (listitem.get(u).getValue() > max) {
                        max = listitem.get(u).getValue();
                    }
                    if (listitem.get(u).getValue() < min) {
                        min = listitem.get(u).getValue();
                    }
                }
            %>

                    ];
            webix.ui({
                view: "chart",
                container: "chartsStateAount",
                type: "line",
                value: "#sales#",
                color: "#36abee",
                height: 300,
                alpha: 0.8,
                xAxis: {
                    template: "'#year#"
                },
                yAxis: {
                    start: <%=((int) min - 1) - (((int) min - 1) % 2 == 1 ? 1 : 0)%>,
                    end: <%=((int) max + 1) + (((int) max + 1) % 2 == 1 ? 1 : 0)%>,
                    step: <%=(int) ((max - min) / 10)%>,
                    template: function (obj) {
                        return (obj % 1 ? "" : obj)
                    }
                },
                tooltip: {
                    template: "#sales#"
                },
                data: dataset

            });


            webix.ui({
                view: "rangechart",
                container: cont,
                height: 80,
                id: "range",
                type: "line",
                value: "#sales#",
                frameId: "time",
                item: {radius: 0},
                range: {start: 30, end: 50},
                data: data
            });
        </script>


    </body>
</html>