{
  mviewer.customLayers.epci = {};
  mviewer.customLayers.epci.layer = new ol.layer.Vector({
          source: new ol.source.Vector({
              url: "https://geobretagne.fr/geoserver/megalis/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GETFEATURE&TYPENAME=services_organisme&CQL_FILTER=annee=%272022%27%20AND%20level=%27Intercommunalit%C3%A9%27&outputFormat=application/json&srsName=EPSG:4326",
              format: new ol.format.GeoJSON()
          }),
  style: new ol.style.Style({
            stroke: new ol.style.Stroke({
              color: 'rgba(22,26,48,255)',
              width: 1
            }),
            fill: new ol.style.Fill({
              color: 'rgba(0, 0, 0, 0)'
            })
  })        
    });
  mviewer.customLayers.epci.handle = false;
  } 
  