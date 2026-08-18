-- Bank Customer & Loan Analytics
-- SQL analysis queries for portfolio project

-- 1. Total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. Loan applications by status
SELECT loan_status, COUNT(*) AS applications
FROM loans
GROUP BY loan_status
ORDER BY applications DESC;

-- 3. Approved loan amount by loan type
SELECT loan_type,
       COUNT(*) AS approved_loans,
       SUM(loan_amount) AS total_approved_amount,
       AVG(loan_amount) AS avg_loan_amount
FROM loans
WHERE loan_status = 'Approved'
GROUP BY loan_type
ORDER BY total_approved_amount DESC;

-- 4. Default rate by loan type
SELECT loan_type,
       COUNT(*) AS total_loans,
       SUM(CASE WHEN loan_status = 'Default' THEN 1 ELSE 0 END) AS defaulted_loans,
       ROUND(100.0 * SUM(CASE WHEN loan_status = 'Default' THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate_pct
FROM loans
GROUP BY loan_type
ORDER BY default_rate_pct DESC;

-- 5. Customer risk segmentation
SELECT
    CASE
        WHEN credit_score >= 750 THEN 'Low Risk'
        WHEN credit_score >= 650 THEN 'Medium Risk'
        ELSE 'High Risk'
    END AS risk_category,
    COUNT(*) AS customers,
    ROUND(AVG(annual_income), 2) AS avg_income,
    ROUND(AVG(credit_score), 2) AS avg_credit_score
FROM customers
GROUP BY
    CASE
        WHEN credit_score >= 750 THEN 'Low Risk'
        WHEN credit_score >= 650 THEN 'Medium Risk'
        ELSE 'High Risk'
    END;

-- 6. Monthly applications
SELECT DATE_TRUNC('month', application_date) AS application_month,
       COUNT(*) AS applications,
       SUM(loan_amount) AS requested_amount
FROM loans
GROUP BY DATE_TRUNC('month', application_date)
ORDER BY application_month;

-- 7. Defaulted loan amount by city
SELECT c.city,
       COUNT(*) AS defaulted_loans,
       SUM(l.loan_amount) AS defaulted_amount
FROM loans l
JOIN customers c ON l.customer_id = c.customer_id
WHERE l.loan_status = 'Default'
GROUP BY c.city
ORDER BY defaulted_amount DESC;

-- 8. Payment performance
SELECT payment_status,
       COUNT(*) AS payments,
       SUM(payment_amount) AS payment_value
FROM payments
GROUP BY payment_status
ORDER BY payment_value DESC;
