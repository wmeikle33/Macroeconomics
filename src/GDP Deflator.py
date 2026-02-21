import numpy as np

# Expenditure identity: Y = C + I + G + NX
def gdp_expenditure(C, I, G, NX):
    return C + I + G + NX

# Growth & deflator
def growth_rate(series):  # e.g., quarterly or yearly
    series = np.asarray(series, float)
    return (series[1:] / series[:-1]) - 1

def gdp_deflator(nominal_gdp, real_gdp):
    nominal_gdp, real_gdp = np.asarray(nominal_gdp), np.asarray(real_gdp)
    return 100 * nominal_gdp / real_gdp  # index

def inflation_from_deflator(deflator):
    return growth_rate(deflator / 100.0)  # π_t ≈ Δ deflator
