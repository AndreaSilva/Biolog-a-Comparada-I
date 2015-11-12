###############################################################
## Codigo para ordenar etiquetas con numeroAccesion_pais_año ##
##            12-11-15  Andrea Lizeth Silva Cala             ##
##                 andreasilvacala@gmail.com                 ##
###############################################################

# Tomar las lineas del archivo .fas que contengan el simbolo
# ">" y  guardarlas en un nuevo archivo.
# print lines that match “>”
grep "^>" DNAdata.fas > accesionDengue

# Sustituir el separador "_" por ","
# "_" replace by ","
sed s/_/,/g accesionDengue > accesionDengue

# Ordenar las etiquetas por el pais
# sort labels by country 
sort -k 2 accesionDengue > accesionPais

# Ordenar las etiquetas por año
# sort labels by year
sort -k 3 accesionDengue > accesionanxo
