rm -r lego
datalad catalog-create --catalog lego --config-file config.json

cp app_component_dataset.js lego/assets/app_component_dataset.js
cp dataset-template.html lego/templates/dataset-template.html
cp index.html lego/index.html
cp favicon.ico lego/assets/favicon/favicon.ico
cp favicon-16x16.png lego/assets/favicon/favicon-16x16.png
cp favicon-32x32.png lego/assets/favicon/favicon-32x32.png

datalad catalog-validate --metadata json/lego.jsonl
datalad catalog-add --catalog lego --metadata json/lego.jsonl

datalad catalog-validate --metadata json/medicare.jsonl
datalad catalog-add --catalog lego --metadata json/medicare.jsonl

datalad catalog-validate --metadata json/mbsf_mortality_denom.jsonl
datalad catalog-add --catalog lego --metadata json/mbsf_mortality_denom.jsonl

datalad catalog-validate --metadata json/mbsf_medpar_denom.jsonl
datalad catalog-add --catalog lego --metadata json/mbsf_medpar_denom.jsonl

datalad catalog-validate --metadata json/medpar_outcomes.jsonl
datalad catalog-add --catalog lego --metadata json/medpar_outcomes.jsonl

datalad catalog-validate --metadata json/mbsf_ccw.jsonl
datalad catalog-add --catalog lego --metadata json/mbsf_ccw.jsonl

datalad catalog-validate --metadata json/geoboundaries.jsonl
datalad catalog-add --catalog lego --metadata json/geoboundaries.jsonl

datalad catalog-validate --metadata json/us_geoboundaries__census.jsonl
datalad catalog-add --catalog lego --metadata json/us_geoboundaries__census.jsonl

datalad catalog-validate --metadata json/environmental.jsonl
datalad catalog-add --catalog lego --metadata json/environmental.jsonl

datalad catalog-validate --metadata json/meteorology__gridmet.jsonl
datalad catalog-add --catalog lego --metadata json/meteorology__gridmet.jsonl

datalad catalog-validate --metadata json/pm25__ushap.jsonl
datalad catalog-add --catalog lego --metadata json/pm25__ushap.jsonl

datalad catalog-validate --metadata json/pm25__washu.jsonl
datalad catalog-add --catalog lego --metadata json/pm25__washu.jsonl

datalad catalog-validate --metadata json/pm25_components__washu.jsonl
datalad catalog-add --catalog lego --metadata json/pm25_components__washu.jsonl

datalad catalog-validate --metadata json/climate_types__koppen_geiger.jsonl
datalad catalog-add --catalog lego --metadata json/climate_types__koppen_geiger.jsonl

datalad catalog-validate --metadata json/air_pollution__aqdh.jsonl
datalad catalog-add --catalog lego --metadata json/air_pollution__aqdh.jsonl

datalad catalog-validate --metadata json/social.jsonl
datalad catalog-add --catalog lego --metadata json/social.jsonl

datalad catalog-validate --metadata json/demographics__census.jsonl
datalad catalog-add --catalog lego --metadata json/demographics__census.jsonl

datalad catalog-validate --metadata json/legacy_medicare.jsonl
datalad catalog-add --catalog lego --metadata json/legacy_medicare.jsonl

datalad catalog-validate --metadata json/legacy_mbsf_mortality_denom.jsonl
datalad catalog-add --catalog lego --metadata json/legacy_mbsf_mortality_denom.jsonl

datalad catalog-validate --metadata json/legacy_mbsf_medpar_denom.jsonl
datalad catalog-add --catalog lego --metadata json/legacy_mbsf_medpar_denom.jsonl

datalad catalog-validate --metadata json/legacy_medpar_outcomes.jsonl
datalad catalog-add --catalog lego --metadata json/legacy_medpar_outcomes.jsonl

datalad catalog-set --catalog lego --dataset-id lego --dataset-version v0 home

datalad catalog-serve --catalog lego --port 8000