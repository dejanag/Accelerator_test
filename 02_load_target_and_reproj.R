#Input NUTS layer 
nuts <- read_sf("./input/NUTS_all/shp_nuts.shp")


# Get CRS of raster and shapefile
agg.dat_raster <- crs(agg.dat, proj = TRUE)  # CRS of the raster
nuts_shp <- st_crs(nuts)$proj4string  # CRS of the shapefile

# Compare CRS and reproject shapefile if needed
if (agg.dat_raster != nuts_shp) {
  print("CRS mismatch detected. Reprojecting shapefile to match raster CRS.")
  nuts <- st_transform(nuts, crs = 4326)
} else {
  print("CRS of raster and shapefile are the same. No reprojection needed.")
}

