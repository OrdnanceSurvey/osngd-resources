# OS NGD Contextual

These are SLD files for OS NGD Contextual in Geopackage format for use in GeoServer.

*They have been designed to work with the data loaded into a database, for example PostGIS, with field names in full and in lowercase.*

## Quick start guide

**1.**  Fork or [download](https://github.com/OrdnanceSurvey/osngd-resources/archive/master.zip) the contents of this repository.

**2.**  Load your OS NGD Contextual data into GeoServer.

**3.**  Add the styles. If using the GUI then navigate to Styles > Add a new style > Browse and select to add each file in turn.

**4.**  Publish these styles with the data. If using the GUI then navigate to Layers > Add a new resource and choose them from the relevant database to add each file in turn, click on publish, configure settings and then choose the matching style before saving.

**5.**  To create OS NGD Contextual in GeoServer you will need to create a Layer Group. If using the GUI then navigate to Layer Groups > Add new layer group > Add Layer and choose each layer in turn to create the following layer order:

- Water (wtr-fts-water)
- Road Track Or Path (trn-fts-roadtrackorpath)
- Rail (trn-fts-rail)
- Land (lnd-fts-land)
- Building Part (bld-fts-buildingpart)
- Landform (lnd-fts-landform)
- Structure (str-fts-structure)

The name of this Layer Group is the ‘layer’ your web map service (WMS) will need to call.

## Additional information

[More information about how to download, apply and customise our stylesheets including a Stylesheet User Guide](http://www.ordnancesurvey.co.uk/resources/carto-design/cartographic-stylesheets.html)

[More information about OS National Geographic Database](https://www.ordnancesurvey.co.uk/business-government/products/os-select-build)

[More information about cartographic design at Ordnance Survey](https://www.ordnancesurvey.co.uk/resources/carto-design/)

## Licence

By using these stylesheets you are accepting the terms of the [Open Government Licence](http://www.nationalarchives.gov.uk/doc/open-government-licence/)
