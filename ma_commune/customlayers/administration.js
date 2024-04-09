const code_insee = API.commune ?? undefined;

const select_clause = "select=json_format(plage_ouverture)%20as%20plage_ouverture%2Cjson_format(adresse)%20as%20adresse%2C%20json_format(site_internet)%20as%20site_internet%2Cdate_modification%2C%20json_format(telephone)%20as%20telephone%2Curl_service_public%20%2Csiret%2Cnom%2Cadresse_courriel%2Ccode_insee_commune%2Cinformation_complementaire";



var _stylePoint = new ol.style.Style({
    image: new ol.style.Circle({
        radius: 7,
        fill: new ol.style.Fill({
            color: 'rgba(196, 41, 121, 1)',
        }),
        stroke: new ol.style.Stroke({
            color: '#000',
            width: 1,
        }),
    }),
})


var _loaderData = function () {
    try {
        _vectorSource.clear();
        if (code_insee) {

            $.ajax({
                url: URL_API_ADMINISTRATION + "?" + select_clause + "&where=code_insee_commune%3D" + code_insee + "&limit=-1",
                dataType: "json",
                success: function (data) {
                    if (data.total_count > 0) {
                        data.results.forEach(element => {
                            var coord = ol.proj.transform(
                                [parseFloat(element.adresse[0].longitude), parseFloat(element.adresse[0].latitude)],
                                PROJECTION_API_COORD,
                                mviewer.getMap().getView().getProjection()
                            );
                            var point = new ol.Feature({
                                geometry: new ol.geom.Point(coord),
                                name: element.nom
                            });
                            point.setProperties(element);
                            point.setStyle(_stylePoint);
                            _vectorSource.addFeature(point);
                        });
                    } else {
                        console.log("pas de données");
                    }
                },
                error: function () {

                }
            });
        }

    }
    catch (e) {
        // portreaCtrl addons not defined yet
    }
};


// source EPCI Brocéliance
var _vectorSource = new ol.source.Vector({
    loader: _loaderData,
});


// Layer principale contenant les délimitations des communes/EPCI avec les datas
var _layer = new ol.layer.Vector({
    id: "administration",
    source: _vectorSource
});


var _legend = {
    items: [
        {
            styles: [_stylePoint],
            label: "Administration",
            geometry: "Point",
        },
    ]
};


new CustomLayer("administration", _layer, legend = _legend);