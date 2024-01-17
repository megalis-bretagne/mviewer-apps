{
  mviewer.customLayers.synthese_user = {};
  var synthese_user = mviewer.customLayers.synthese_user;
  
  synthese_user.legend = { items: [
      {
          label: "Collectivités utilisatrices",
          geometry: "Polygon",
          styles: [new ol.style.Style({
              stroke: new ol.style.Stroke({ color: 'rgba(255,255,255,0.9)', width: 0.8 }),
              fill: new ol.style.Fill({ color: 'rgba(95,192,195,.8)'})
          })]
      },    
      {
        label: "Collectivités non utilisatrices",
        geometry: "Polygon",
        styles: [new ol.style.Style({
            stroke: new ol.style.Stroke({ color: 'rgba(255,255,255,0.7)', width: 0.8 }),
            fill: new ol.style.Fill({ color: 'rgba(170,170,170,.4)'})
        })]
      },
      {
        label: "Autres Oui",
        geometry: "Polygon",
        styles: [new ol.style.Style({
          geometry: function(feature) {
            let geometry = feature.getGeometry();
            let geometryType = geometry.getType();
            return (
                geometryType == 'Polygon' ? geometry.getInteriorPoint() :
                geometryType == 'MultiPolygon' ? geometry.getInteriorPoints() :
                geometry
            );
          },
          image: new ol.style.Circle({
            radius: 5,
            fill: new ol.style.Fill({
              color: '#5fc0c3',
              opacity: 0.7
            }),
            stroke: new ol.style.Stroke({
              color: '#ffffff',
              opacity: 0.7,
              width: 1.5
            })
          }) 
        })]
      },
      {
          label: "Autres Non",
          geometry: "Polygon",
          styles: [new ol.style.Style({
            geometry: function(feature) {
              let geometry = feature.getGeometry();
              let geometryType = geometry.getType();
              return (
                  geometryType == 'Polygon' ? geometry.getInteriorPoint() :
                  geometryType == 'MultiPolygon' ? geometry.getInteriorPoints() :
                  geometry
              );
            },
            image: new ol.style.Circle({
              radius: 5,
              fill: new ol.style.Fill({
                color: '#aaa',
                opacity: 0
              }),
              stroke: new ol.style.Stroke({
                color: '#ffffff',
                opacity: 0,
                width: 1.5
              })
            }) 
          })]
      }
  ] };
  
  mviewer.customLayers.synthese_user.layer = new ol.layer.Vector({
          source: new ol.source.Vector({
            url :"https://geobretagne.fr/geoserver/megalis/wfs?SERVICE=WFS&VERSION=2.0.0&REQUEST=GETFEATURE&TYPENAME=services_organisme&CQL_FILTER=annee=%272023%27%20&outputFormat=application/json&srsName=EPSG:4326",
            format: new ol.format.GeoJSON()
          }),
          style: function(feature) {
              var stl;            
              if (feature.get('level') != 'Autres') {  
                if (feature.get('adherent') == 'OUI') {  
                  stl = synthese_user.legend.items[0].styles;
                 } else {  
                  stl = synthese_user.legend.items[1].styles;
                 }
              } else {  
                if (feature.get('adherent') == 'OUI') {  
                  stl = synthese_user.legend.items[2].styles;
                 } else {  
                  stl = synthese_user.legend.items[3].styles;
                }
              }        
               
              return stl;

          }
  });
  mviewer.customLayers.synthese_user.handle = false;
  }