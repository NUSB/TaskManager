var TaskListToDay = {
    type: "panel",
    css:"margin-top:10px;",
    rows: [
        {//список целей
            template: "dfg",
            type: "header"
        },
        {//мой прогрес
            id: "layout11",
            template: "dfg"
        }
    ]};
webix.ui({
    rows: [
        {
            id: "layout",
            container: "content",
            cols: [
                TaskListToDay,
                {view: "resizer"},
                {
                    rows: [
                        {//список целей
                            template: "dfg"
                        }, {view: "resizer"},
                        {//мой прогрес
                            id: "layout11",
                            template: "dfg"
                        }
                    ]
                }
            ]
        }
    ]
});