# GIS_Spatii_Verzi

Asignment1(pt Sambtata):

Sa se implementeze o baza de date pentru modelarea unui GIS al spatiilor verzi.

Descriere:
O zona verde(parc, scuar, aliniament stradal etc,) se caracterizeaza prin existenta diferitelor elemente de vegetatie precum flori, arbusti si arbori. Pe langa elementele de vegetatie , caracteristic se mai intalnesc elemente de mobilier urban precum: lampadare, bancute, cosuri de gunoi....etc. O zona verde poate sa fie deservita si de sistem de irigare.
Astfel se pot distinge diverse entitati(layere/tabele) precum: zona_verde, tip_zona_verde, mobilier_urban, vegetatie etc.

Cerinte:
1. Identificati toate elementele/tabelele spatiale si non/spatiale pentru a structura baza de date pentru GIS spatii verzi
2. Intocmiti diagrama abstracta
3. INtocmiti diagrama conceptuala
4. .SQL file cu sintaxta DDL pentru create table
5. utilizare extensie PostGIS si tipuri spatiale(Point, Lines, Polygon) pentru tabelele cu rol spatial
6. Conexiune din QGIS la baza de date realizata si creearea de proiect cu salvare in baza de date
7. Editare pe fiecare layer direct din QGIS pentru verificarea functionalitatii
8. Scrieti select spatial prin incercarea de utilizare a functiilor PostGIS invatate: ST_Area, ST_Perimeter, ST_Centorid, etc
