library(tiff)
library(raster)
library(tidyr)
library(dplyr)
require(terra)
library(exactextractr)
library(sf)


# Raster input 
agg.dat <- rast("./input/SPAM_2005_v3.2/SPAM2005V3r2_global_H_TA_WHEA_A.tif")
