<%-- 
    Document   : structurPage
    Created on : 15.08.2016, 9:34:43
    Author     : Panas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="http://cdn.webix.com/edge/webix.css" type="text/css"> 
        <script src="http://cdn.webix.com/edge/webix.js" type="text/javascript"></script>
        <style>
            .my_menu .webix_view{
                background-color: #ECEFF1;
            }
            .my_menu .webix_list_item{
                line-height: 35px;
                border-bottom-color: #ddd;
            }
        </style>

    </head>
    <body>
        <div id="topMenu"/>
        <div id="leftMenu"/>
        <div id="content"/>
        <script src="UIJS/topMenuAndContent.js" type="text/javascript"></script>
        <script src="UIJS/leftMenu.js" type="text/javascript"></script>
        <script src="UIJS/content.js" type="text/javascript"></script>

    </body>
</html>
