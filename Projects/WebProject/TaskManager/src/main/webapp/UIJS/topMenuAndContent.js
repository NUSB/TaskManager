webix.ui({
    rows: [
        {//top menu
            view: "toolbar",
            id: "toolbar",
            container: "topMenu",
            elements: [
                {
                    view: "icon",
                    icon: "bars",
                    click: function () {
                        if ($$("menu").config.hidden) {
                            $$("menu").show();
                        } else
                            $$("menu").hide();
                    }
                },
                {
                    view: "label",
                    label: "Task Manager"
                }
            ]
        }]
});