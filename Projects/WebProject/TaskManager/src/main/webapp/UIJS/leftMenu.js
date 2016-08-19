webix.ui({
    view: "sidemenu",
    id: "menu",
    width: 200,
    position: "left",
    state: function (state) {
        var toolbarHeight = $$("toolbar").$height;
        state.top = toolbarHeight;
        state.height -= toolbarHeight;
    },
    css: "my_menu",
    body: {
        view: "menu",
        layout: "y",
        borderless: true,
        scroll: false,
        template: "<span class='webix_icon fa-#icon#'></span> #value#",
        data: [
            {id: 1, value: "Customers", icon: "beer", href: "https:\google.com"},
            {id: 2, value: "Products", icon: "cube"},
            {id: 3, value: "Reports", icon: "line-chart", href: "https:\google.com"},
            {id: 4, value: "Archives", icon: "database"},
            {id: 5, value: "Settings", icon: "cog"}
        ],
        select: true,
        type: {
            height: 40
        }
    }
});