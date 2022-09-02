FILES="megalis-services/config.xml
megalis-services/home/index.html
megalis-services/templates/*.mst
megalis-services/customlayers/*.js
"

for f in $FILES; do
  sed -i -- 's/\/apps\/megalis-services\//https:\/\/geobretagne.fr\/apps\/megalis-services\//g' $f
done


