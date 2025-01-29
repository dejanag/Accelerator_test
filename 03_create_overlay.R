
#Overlay
agg.dat <- crop(agg.dat, ext(nuts)) #crop raster 

ex <- exact_extract(agg.dat, nuts) #overlay
names(ex) <- nuts$NUTS_ID

aggreg.summary <- bind_rows(ex, .id = "NUTS_ID")
aggreg.summary <- bind_rows(ex, .id = "NUTS_ID") %>%
  filter(complete.cases(.))

aggreg.summary <- aggreg.summary %>% group_by(NUTS_ID) %>% summarise(area_ha=sum(coverage_fraction*value))
