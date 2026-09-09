USE fintech_risk;

-- 1. Query to segment high-risk loan defaults by DTI threshold
SELECT 
    COUNT(*) AS total_loans,
    AVG(DTIRatio) AS avg_dti,
    SUM(CASE WHEN Default_ = 1 THEN 1 ELSE 0 END) AS total_defaults
FROM loan_profiles
GROUP BY 
    CASE WHEN DTIRatio > 0.4 THEN 'High Risk DTI' ELSE 'Standard Risk' END;

-- 2. Query to isolate suspicious AML transaction corridors
SELECT 
    Sender_bank_location,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN Is_Suspicious = 1 THEN 1 ELSE 0 END) AS suspicious_count
FROM transaction_history
GROUP BY Sender_bank_location
ORDER BY suspicious_count DESC;
