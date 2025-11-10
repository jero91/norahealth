CREATE TABLE patients (
id INT PRIMARY KEY,
name VARCHAR(100),
gender VARCHAR(10),
birth_date DATE
);
CREATE TABLE visits (
id INT PRIMARY KEY,
patient_id INT,
visit_date DATE,
diagnosis VARCHAR(255),
FOREIGN KEY (patient_id) REFERENCES patients(id)
);
CREATE TABLE measurements (
id INT PRIMARY KEY,
visit_id INT,
measure_type VARCHAR(50),
measure_value DECIMAL(10,2),
FOREIGN KEY (visit_id) REFERENCES visits(id)
);

