const code_insee = API.commune ?? undefined;


mviewer.customLayers.education = (function () {


    var _stylePoint = new ol.style.Style({
        image: new ol.style.Circle({
            radius: 7,
            fill: new ol.style.Fill({
                color: 'rgba(210, 125, 40, 1)',
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
                    url: URL_API_EDUCATION + "?" + "where=code_commune%3D" + code_insee + "&limit=-1",
                    dataType: "json",
                    success: function (data) {
                        if (data.total_count > 0) {
                            data.records.forEach(element => {
                                var coord = ol.proj.transform(
                                    [parseFloat(element.record.fields.longitude), parseFloat(element.record.fields.latitude)],
                                    PROJECTION_API_COORD,
                                    mviewer.getMap().getView().getProjection()
                                );
                                var point = new ol.Feature({
                                    geometry: new ol.geom.Point(coord),
                                    name: element.record.fields.nom_etablissement
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


    // source EPCI BrocÃ©liance
    var _vectorSource = new ol.source.Vector({
        loader: _loaderData,
    });


    // Layer principale contenant les dÃ©limitations des communes/EPCI avec les datas
    var _layer = new ol.layer.Vector({
        id: "education",
        source: _vectorSource
    });


    var _legend = {
        items: [
            {
                styles: [_stylePoint],
                label: "Education",
                geometry: "Point",
            },
        ]
    };

    return {
        layer: _layer,
        handle: false,
        legend: _legend,
    };

}());
