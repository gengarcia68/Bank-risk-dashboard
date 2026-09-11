# Bank Risk & AML Compliance Dashboard

An end-to-end fintech intelligence dashboard combining **Credit Risk (Loan Default, Debt-to-Income, and Employment Analysis)** and **Anti-Money Laundering (AML) Suspicious Corridor Tracking**.

## Project Architecture
- **Database & Ingestion:** MySQL database managed locally with Python automation scripts.
- **Data Pipelines:** Processed loan defaults, borrower employment categories, debt-to-income (`DTIRatio`) metrics, and international transaction routing patterns.
- **Visualization:** Built and published live on [Tableau Public](https://public.tableau.com/app/profile/genaro.garcia3792/viz/fintechrisk/Dashboard1?publish=yes).

## Key Risk Domains
1. **Credit Risk & DTI:** Evaluates borrower leverage, comparing average debt-to-income ratios between standard-risk and default-risk portfolios.
2. **Employment Risk Breakdown:** Analyzes loan default variations across employment statuses (Full-time, Part-time, Self-employed, and Unemployed) to isolate borrower segment vulnerability.
3. **AML Suspicious Corridors:** Tracks transaction volumes (`Is_laundering`) across international banking paths to isolate high-risk money movement.
