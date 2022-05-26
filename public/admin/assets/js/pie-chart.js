if ($('#ampiechart1').length) {
    var chart = AmCharts.makeChart("ampiechart1", {
        "type": "pie",
        "labelRadius": -75,
        "labelText": "[[percents]]%",
        "fontSize": 20,
        dataPoints: [
            { y: 4181563, indexLabel: "PlayStation 3" },
            { y: 2175498, indexLabel: "Wii" },
            { y: 3125844, indexLabel: "Xbox 360" },
            { y: 1176121, indexLabel: "Nintendo DS" },

        ],
        "dataProvider": [{
            "country": "Rice-Mongo Instant Blend",
            "litres": 501.9,
            "backgroundColor": "#815DF6"
        }, {
            "country": "Rice-Mongo Sesame Ready to cook",
            "litres": 301.9,
            "backgroundColor": "#67B7DC"
        }, {
            "country": "Rice-Mongo Curls",
            "litres": 400,
            "backgroundColor": "#9c82f4"
        }, {
            "country": "Rice-Mongo Crunchies",
            "litres": 200,
            "backgroundColor": "#FDD400"
        }],
        "color": "#fff",
        "colorField": "backgroundColor",
        "valueField": "litres",
        "titleField": "country"
    });
}