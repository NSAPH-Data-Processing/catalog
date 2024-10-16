rm -r lego
datalad catalog-create --catalog lego

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

datalad catalog-set --catalog lego --dataset-id lego --dataset-version v0 home
datalad catalog-serve --catalog lego --port 8000 