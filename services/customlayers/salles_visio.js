{
mviewer.customLayers.salles_visio = {};
mviewer.customLayers.salles_visio.layer = new ol.layer.Vector({
        source: new ol.source.Vector({
            url: "https://geobretagne.fr/geoserver/megalis/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GETFEATURE&TYPENAME=salles_visioconference&outputFormat=application/json&srsName=EPSG:4326",
            format: new ol.format.GeoJSON()
        }),
        style: new ol.style.Style({
                  image: new ol.style.Icon({
                  scale: 0.25,
                  opacity: 1.0,
                  src: 'https://geobretagne.fr/apps/megalis-services/img/iconloc_visio.png'
                })
        })        
  });
mviewer.customLayers.salles_visio.handle = false;
} 