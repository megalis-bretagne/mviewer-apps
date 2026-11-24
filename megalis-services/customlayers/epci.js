{
  mviewer.customLayers.epci = {};
  mviewer.customLayers.epci.layer = new ol.layer.Vector({
    source: new ol.source.Vector({
      url: `${mviewer.env?.data_server_url}/geoserver/megalis/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GETFEATURE&TYPENAME=services_organisme&CQL_FILTER=annee%3D%272025%27%20AND%20level%3D%27Intercommunalit%C3%A9%27&outputFormat=application/json&srsName=EPSG:4326`,
      format: new ol.format.GeoJSON()
    }),
    style: [
      // Trait blanc en dessous
      new ol.style.Style({
        stroke: new ol.style.Stroke({
          color: 'rgba(255, 255, 255, 1)',
          width: 3
        })
      }),

      // Trait noir au-dessus
      new ol.style.Style({
        stroke: new ol.style.Stroke({
          color: '#0F3459',
          width: 1
        }),
        fill: new ol.style.Fill({
          color: 'rgba(0, 0, 0, 0)'
        })
      })
    ]
  });

  mviewer.customLayers.epci.handle = false;
}