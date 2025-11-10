CREATE OR REPLACE VIEW patient_risk_view AS
SELECT 
    p.id AS patient_id,
    p.name AS patient_name,
    AVG(m.measure_value) AS avg_blood_pressure,
    CASE
        WHEN AVG(m.measure_value) > 140 THEN 'High'
        WHEN AVG(m.measure_value) BETWEEN 120 AND 140 THEN 'Moderate'
        ELSE 'Low'
    END AS risk_category
FROM patients p
JOIN visits v ON p.id = v.patient_id
JOIN measurements m ON v.id = m.visit_id
WHERE m.measure_type = 'Blood pressure (mmHg)'
GROUP BY p.id, p.name;