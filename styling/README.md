# Styling Resources

## OS Select+Build and OS NGD API – Features

Cartographic styles are available in Outdoor, Road, Light, and Black & White. These can be applied to OS NGD data to give it a cartographic appearance and are available for download [here](https://github.com/OrdnanceSurvey/OS-NGD-Stylesheets).

The following [page](https://labs.os.uk/public/osngd/styling/theme-colors.html) illustrates the "analytical" colours for each theme (then hues of the colour at collection level).

> [!NOTE]
> **qgis_osngd_theme_style.xml** is a QGIS style items `.XML` file (see [docs.qgis.org](https://docs.qgis.org/3.40/en/docs/user_manual/style_library/style_manager.html#importing-items)) provided as an alternative way to apply the "analytical" styles when using NGD data in QGIS.

The styling rules in a machine readable (`JSON`) format are contained within **rules-complete.json**. If preferred, an alternate set (as seen in the documentation images) can be accessed via **rules-standard.json**.

## OS NGD API – Tiles

If you are using the OS NGD API – Tiles, the JSON style files, along with all the associated styling resources (including fonts and sprites), are hosted within the Vector Tiles [endpoint](https://api.os.uk/maps/vector/ngd/ota/v1/).

Use `https://api.os.uk/maps/vector/ngd/ota/v1/collections/{collectionId}/styles` to retrieve the list of styles available from this service.