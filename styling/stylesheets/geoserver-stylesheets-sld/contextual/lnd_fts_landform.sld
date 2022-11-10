<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
    xmlns="http://www.opengis.net/sld"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>OS NGD Land | Land Features | Landform</Name>
    <UserStyle>
      <Title>Product SLD - November 2022</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>Landform</Name>
          <PolygonSymbolizer>
            <Fill>
              <GraphicFill>
              <Graphic>
                <Mark>
                  <WellKnownName>shape://slash</WellKnownName>
                  <Stroke>
                    <CssParameter name="stroke">#999999</CssParameter>
                  </Stroke>
                </Mark>
                <Size>8</Size>
              </Graphic>
              </GraphicFill>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#cccccc</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>