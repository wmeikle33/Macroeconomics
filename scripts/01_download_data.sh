#!/usr/bin/env bash
set -e

echo "Creating data directories..."
mkdir -p data/raw
mkdir -p data/processed

echo "Downloading macroeconomic datasets..."

# World Bank GDP data
curl -L \
"https://api.worldbank.org/v2/en/indicator/NY.GDP.MKTP.CD?downloadformat=csv" \
-o data/raw/worldbank_gdp.zip

# IMF dataset example
curl -L \
"https://www.imf.org/external/datamapper/api/v1/NGDP_RPCH" \
-o data/raw/imf_gdp_growth.json

# FRED example (US unemployment rate)
curl -L \
"https://fred.stlouisfed.org/graph/fredgraph.csv?id=UNRATE" \
-o data/raw/unemployment_rate.csv

echo "Unzipping datasets..."
unzip -o data/raw/worldbank_gdp.zip -d data/raw/

echo "Download complete."
