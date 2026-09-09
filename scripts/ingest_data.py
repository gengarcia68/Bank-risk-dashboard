import pandas as pd
from sqlalchemy import create_engine

# Establish MySQL Connection
# Format: mysql+pymysql://username:password@localhost/database_name
engine = create_engine('mysql+pymysql://root:@localhost/fintech_risk')

# Load Credit Risk Data
print("Loading Loan Profiles into MySQL...")
loans_df = pd.read_csv('data/raw/Loan_default.csv')
loans_df.to_sql('loan_profiles', con=engine, if_exists='replace', index=False)
print("Loan Profiles loaded successfully.")

# Load AML Transaction Data (100,000 row sample for development speed)
print("Loading Transaction History into MySQL...")
aml_df = pd.read_csv('data/raw/SAML-D.csv', nrows=100000)
aml_df.to_sql('transaction_history', con=engine, if_exists='replace', index=False)
print("Transaction History loaded successfully.")
