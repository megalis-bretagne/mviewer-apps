<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sld="http://www.opengis.net/sld"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <sld:NamedLayer>
    <sld:Name>services_organisme</sld:Name>
    <sld:UserStyle>
      <sld:Title>nombre_pes</sld:Title>
      <sld:FeatureTypeStyle>
		<sld:Transformation>
			<ogc:Function name="gs:Centroid">
			  <ogc:Function name="parameter">
				<ogc:Literal>features</ogc:Literal>
			  </ogc:Function>
			</ogc:Function>
		</sld:Transformation>		
		<sld:Rule>
		   <sld:Name>100</sld:Name>
		   <sld:Title>- 100</sld:Title>
		   <ogc:Filter>
			 <ogc:And>
			   <ogc:PropertyIsGreaterThanOrEqualTo>
				 <ogc:PropertyName>nb_pes</ogc:PropertyName>
				 <ogc:Literal>0</ogc:Literal>
			   </ogc:PropertyIsGreaterThanOrEqualTo>
			   <ogc:PropertyIsLessThan>
				 <ogc:PropertyName>nb_pes</ogc:PropertyName>
				 <ogc:Literal>100</ogc:Literal>
			   </ogc:PropertyIsLessThan>
			 </ogc:And>
		   </ogc:Filter>
		   <sld:PointSymbolizer>
			 <sld:Graphic>
			   <sld:Mark>
				 <sld:WellKnownName>circle</sld:WellKnownName>
				 <sld:Fill>
				   <sld:CssParameter name="fill">#5BB1D8</sld:CssParameter>
				   <sld:CssParameter name="fill-opacity">0.9</sld:CssParameter>
				 </sld:Fill>
				 <sld:Stroke>
				   <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
				   <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
				 </sld:Stroke>
			   </sld:Mark>
			   <sld:Size>7</sld:Size>
			 </sld:Graphic>
		   </sld:PointSymbolizer>
		</sld:Rule>
		 <sld:Rule>
		   <sld:Name>100 - 500</sld:Name>
		   <sld:Title>100 - 500</sld:Title>
		   <ogc:Filter>
			 <ogc:And>
			   <ogc:PropertyIsGreaterThanOrEqualTo>
				 <ogc:PropertyName>nb_pes</ogc:PropertyName>
				 <ogc:Literal>100</ogc:Literal>
			   </ogc:PropertyIsGreaterThanOrEqualTo>
			   <ogc:PropertyIsLessThan>
				 <ogc:PropertyName>nb_pes</ogc:PropertyName>
				 <ogc:Literal>500</ogc:Literal>
			   </ogc:PropertyIsLessThan>
			 </ogc:And>
		   </ogc:Filter>
		   <sld:PointSymbolizer>
			 <sld:Graphic>
			   <sld:Mark>
				 <sld:WellKnownName>circle</sld:WellKnownName>
				 <sld:Fill>
				   <sld:CssParameter name="fill">#5BB1D8</sld:CssParameter>
				   <sld:CssParameter name="fill-opacity">0.9</sld:CssParameter>
				 </sld:Fill>
				 <sld:Stroke>
				   <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
				   <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
				 </sld:Stroke>
			   </sld:Mark>
			   <sld:Size>11</sld:Size>
			 </sld:Graphic>
		   </sld:PointSymbolizer>
		 </sld:Rule>
        <sld:Rule>
		   <sld:Name>500 - 1000</sld:Name>
		   <sld:Title>500 - 1 000</sld:Title>
		   <ogc:Filter>
			 <ogc:And>
			   <ogc:PropertyIsGreaterThanOrEqualTo>
				 <ogc:PropertyName>nb_pes</ogc:PropertyName>
				 <ogc:Literal>500</ogc:Literal>
			   </ogc:PropertyIsGreaterThanOrEqualTo>
			   <ogc:PropertyIsLessThan>
				 <ogc:PropertyName>nb_pes</ogc:PropertyName>
				 <ogc:Literal>1000</ogc:Literal>
			   </ogc:PropertyIsLessThan>
			 </ogc:And>
		   </ogc:Filter>
		   <sld:PointSymbolizer>
			 <sld:Graphic>
			   <sld:Mark>
				 <sld:WellKnownName>circle</sld:WellKnownName>
				 <sld:Fill>
				   <sld:CssParameter name="fill">#5BB1D8</sld:CssParameter>
				   <sld:CssParameter name="fill-opacity">0.9</sld:CssParameter>
				 </sld:Fill>
				 <sld:Stroke>
				   <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
				   <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
				 </sld:Stroke>
			   </sld:Mark>
			   <sld:Size>22</sld:Size>
			 </sld:Graphic>
		   </sld:PointSymbolizer>
		 </sld:Rule>
		 <sld:Rule>
		   <sld:Name>+ 1 000</sld:Name>
		   <sld:Title>+ 1 000</sld:Title>
		   <ogc:Filter>
			   <ogc:PropertyIsGreaterThanOrEqualTo>
				 <ogc:PropertyName>nb_pes</ogc:PropertyName>
				 <ogc:Literal>1000</ogc:Literal>
			   </ogc:PropertyIsGreaterThanOrEqualTo>
		   </ogc:Filter>
		   <sld:PointSymbolizer>
			 <sld:Graphic>
			   <sld:Mark>
				 <sld:WellKnownName>circle</sld:WellKnownName>
				 <sld:Fill>
				   <sld:CssParameter name="fill">#5BB1D8</sld:CssParameter>
				   <sld:CssParameter name="fill-opacity">0.9</sld:CssParameter>
				 </sld:Fill>
				 <sld:Stroke>
				   <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
				   <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
				 </sld:Stroke>
			   </sld:Mark>
			   <sld:Size>30</sld:Size>
			 </sld:Graphic>
		   </sld:PointSymbolizer>
		 </sld:Rule> 
	  </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>
