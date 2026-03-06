import pandas_datareader.data as web
import datetime
import pandas as pd

# Define the data series ID (e.g., 'HOUST' for US Housing Starts)
series_id = 'HOUST'

# Define the start and end dates for the data
start_date = datetime.datetime(2010, 1, 1)
end_date = datetime.datetime.now()

# Retrieve the data from FRED
# pandas_datareader handles the connection and data retrieval
try:
    fred_data = web.DataReader(series_id, 'fred', start_date, end_date)
    print(fred_data.head())
    print(fred_data.tail())

    # You can then use pandas to save it to a CSV file locally if needed
    # fred_data.to_csv(f"{series_id}.csv")

except Exception as e:
    print(f"An error occurred: {e}")
    print("If you encounter issues, a specific API key might be required for certain datasets or high-volume usage.")
