CREATE OR REPLACE VIEW patient_summary_view AS
SELECT 
    p.name AS patient_name,
    
    -- Calcula la edad en años basada en birth_date
    TIMESTAMPDIFF(YEAR, p.birth_date, CURDATE()) AS age,
    
    -- Cuenta total de visitas
    COUNT(DISTINCT v.id) AS total_visits,
    
    -- Fecha de la última visita
    MAX(v.visit_date) AS last_visit_date,
    
    -- Promedio de valores de presión arterial
    AVG(CASE WHEN m.measure_type = 'Blood pressure (mmHg)' THEN m.measure_value END) AS avg_blood_pressure
    
FROM patients p
LEFT JOIN visits v ON p.id = v.patient_id
LEFT JOIN measurements m ON v.id = m.visit_id

GROUP BY p.id, p.name, p.birth_date;
