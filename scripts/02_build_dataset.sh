#!/usr/bin/env bash
set -e

echo "Building dataset..."

mkdir -p data/interim
mkdir -p data/processed

echo "Cleaning raw datasets..."
python src/data/clean_worldbank.py \
    data/raw/worldbank_gdp.csv \
    data/interim/gdp_clean.csv

python src/data/clean_unemployment.py \
    data/raw/unemployment_rate.csv \
    data/interim/unemployment_clean.csv

echo "Merging datasets..."
python src/data/merge_macro_data.py \
    data/interim/gdp_clean.csv \
    data/interim/unemployment_clean.csv \
    data/processed/macro_dataset.csv

echo "Dataset build complete!"
