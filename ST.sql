select ST_Buffer(geom, 5) from mobilier_urban;

select ST_Area(geom) from tip_zona_verde;

Select ST_Area(geom) from oras;

select ST_Centroid(geom) from oras;

select ST_CEntroid(geom) from zona_verde;

select st_Perimeter(geom) from zona_verde where fid = 2;

select ST_X(geom) X, ST_Y(geom) Y from vegetatie;

select ST_length(geom) from sistem_irigatii;

select st_area(geom) as Spatii_Verzi from zona_verde;