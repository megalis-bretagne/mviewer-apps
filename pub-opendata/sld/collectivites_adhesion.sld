<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <sld:NamedLayer>
    <sld:Name>services_organisme</sld:Name>
    <sld:UserStyle>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:Name>Classe_69625</sld:Name>
          <sld:Title>Non adhérente aux services</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsNotEqualTo>
                <ogc:PropertyName>level</ogc:PropertyName>
                <ogc:Literal>Autres</ogc:Literal>
              </ogc:PropertyIsNotEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>adherent</ogc:PropertyName>
                <ogc:Literal>NON</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D4D4D4</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">0.9</sld:CssParameter>
            </sld:Fill>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Classe_70223</sld:Name>
          <sld:Title>Adhérente aux services</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsNotEqualTo>
                <ogc:PropertyName>level</ogc:PropertyName>
                <ogc:Literal>Autres</ogc:Literal>
              </ogc:PropertyIsNotEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>adherent</ogc:PropertyName>
                <ogc:Literal>OUI</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#5FC0C3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">0.9</sld:CssParameter>
            </sld:Fill>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
      <sld:FeatureTypeStyle>
        <sld:Transformation>
          <ogc:Function name="gs:Centroid">
            <ogc:Function name="parameter">
            <ogc:Literal>features</ogc:Literal>
            </ogc:Function>
          </ogc:Function>
        </sld:Transformation>  
        <sld:Rule>
          <sld:Name>Classe_80217</sld:Name>
          <sld:Title>Sans titre 80217</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>level</ogc:PropertyName>
                <ogc:Literal>Autres</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>adherent</ogc:PropertyName>
                <ogc:Literal>OUI</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:PointSymbolizer>
            <sld:Graphic>
              <sld:Mark>
              <sld:WellKnownName>circle</sld:WellKnownName>
              <sld:Fill>
                <sld:CssParameter name="fill">#5FC0C3</sld:CssParameter>
              </sld:Fill>
              <sld:Stroke>
                <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
                <sld:CssParameter name="stroke-width">2</sld:CssParameter>
              </sld:Stroke>
              </sld:Mark>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
            </sld:PointSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Classe_80778</sld:Name>
          <sld:Title>Sans titre 80778</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>level</ogc:PropertyName>
                <ogc:Literal>Autres</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>adherent</ogc:PropertyName>
                <ogc:Literal>NON</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:PointSymbolizer>
            <sld:Graphic>
              <sld:Mark>
              <sld:WellKnownName>circle</sld:WellKnownName>
              <sld:Fill>
                <sld:CssParameter name="fill">#D4D4D4</sld:CssParameter>
              </sld:Fill>
              <sld:Stroke>
                <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
                <sld:CssParameter name="stroke-width">2</sld:CssParameter>
              </sld:Stroke>
              </sld:Mark>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
            </sld:PointSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>


