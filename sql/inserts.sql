
SET SQL_SAFE_UPDATES = 0;
DELETE FROM measurements;
DELETE FROM visits;
DELETE FROM patients;
SET SQL_SAFE_UPDATES = 1;



INSERT INTO patients (id, name, gender, birth_date) VALUES
(1, 'Laura Gomez', 'F', '1987-05-12'),
(2, 'Carlos Perez', 'M', '1990-11-03'),
(3, 'Ana Torres', 'F', '1978-02-21'),
(4, 'Jose Ramirez', 'M', '1985-08-09'),
(5, 'Maria Lopez', 'F', '1992-01-15'),
(6, 'David Sanchez', 'M', '2000-06-30'),
(7, 'Lucia Fernandez', 'F', '1983-09-18'),
(8, 'Sofia Morales', 'F', '1995-03-05'),
(9, 'Michael Herrera', 'M', '1975-12-22'),
(10, 'Andrew Castro', 'M', '1989-07-27');

INSERT INTO patients (id, name, gender, birth_date) VALUES
(11, 'Pedro Alvarez', 'M', '1980-04-14'),
(12, 'Elena Ruiz', 'F', '1993-10-22'),
(13, 'Javier Molina', 'M', '1970-01-05'),
(14, 'Carmen Diaz', 'F', '1988-12-30'),
(15, 'Luis Torres', 'M', '1995-07-17'),
(16, 'Marta Rojas', 'F', '1982-03-09'),
(17, 'Raul Navarro', 'M', '1991-05-23'),
(18, 'Isabel Fernandez', 'F', '1977-11-11'),
(19, 'Daniel Jimenez', 'M', '1985-06-03'),
(20, 'Gloria Mendoza', 'F', '1990-08-26'),
(21, 'Alberto Cruz', 'M', '1969-09-15'),
(22, 'Patricia Soto', 'F', '1983-02-27'),
(23, 'Sergio Vargas', 'M', '1994-04-19'),
(24, 'Lorena Castro', 'F', '1979-07-29'),
(25, 'Fernando Salazar', 'M', '1987-01-13'),
(26, 'Veronica Ortega', 'F', '1992-11-06'),
(27, 'Ricardo Mendoza', 'M', '1981-10-08'),
(28, 'Natalia Herrera', 'F', '1996-12-21'),
(29, 'Oscar Delgado', 'M', '1974-05-12'),
(30, 'Silvia Medina', 'F', '1989-03-04'),
(31, 'Hugo Paredes', 'M', '1993-09-16'),
(32, 'Andrea Silva', 'F', '1986-06-28'),
(33, 'Victor Ramos', 'M', '1972-08-19'),
(34, 'Monica Perez', 'F', '1991-02-01'),
(35, 'Jorge Castillo', 'M', '1984-12-12'),
(36, 'Sandra Marquez', 'F', '1990-07-07'),
(37, 'Mario Leon', 'M', '1978-03-25'),
(38, 'Gabriela Ruiz', 'F', '1983-11-09'),
(39, 'Felipe Flores', 'M', '1995-01-30'),
(40, 'Claudia Vega', 'F', '1987-05-14');

INSERT INTO visits (id, patient_id, visit_date, diagnosis) VALUES
(1, 1, '2024-01-10', 'General checkup'),
(2, 2, '2024-02-15', 'Common flu'),
(3, 3, '2024-03-02', 'Hypertension'),
(4, 4, '2024-03-18', 'Lower back pain'),
(5, 5, '2024-04-25', 'Chronic migraine'),
(6, 6, '2024-05-05', 'Sports physical exam'),
(7, 7, '2024-06-11', 'Type 2 diabetes'),
(8, 8, '2024-07-09', 'General checkup'),
(9, 9, '2024-08-20', 'High cholesterol'),
(10, 10, '2024-09-01', 'Seasonal allergy');

INSERT INTO visits (id, patient_id, visit_date, diagnosis) VALUES
(11, 11, '2024-10-12', 'Flu symptoms'),
(12, 12, '2024-11-03', 'General checkup'),
(13, 13, '2024-09-20', 'High blood pressure'),
(14, 14, '2024-08-05', 'Allergic reaction'),
(15, 15, '2024-07-15', 'Back pain'),
(16, 16, '2024-06-30', 'Diabetes follow-up'),
(17, 17, '2024-05-22', 'Weight loss'),
(18, 18, '2024-04-11', 'Chest pain'),
(19, 19, '2024-03-18', 'General checkup'),
(20, 20, '2024-02-25', 'High cholesterol'),
(21, 21, '2024-01-14', 'Routine exam'),
(22, 22, '2023-12-30', 'Migraines'),
(23, 23, '2023-11-17', 'Anxiety'),
(24, 24, '2023-10-04', 'Asthma'),
(25, 25, '2023-09-12', 'Flu symptoms'),
(26, 26, '2023-08-20', 'Skin rash'),
(27, 27, '2023-07-28', 'Joint pain'),
(28, 28, '2023-06-15', 'Blood test'),
(29, 29, '2023-05-02', 'Hypertension'),
(30, 30, '2023-04-10', 'General checkup'),
(31, 31, '2023-03-19', 'Eye infection'),
(32, 32, '2023-02-26', 'Physical exam'),
(33, 33, '2023-01-13', 'Allergic reaction'),
(34, 34, '2022-12-01', 'Flu symptoms'),
(35, 35, '2022-11-09', 'Cold'),
(36, 36, '2022-10-18', 'Diabetes check'),
(37, 37, '2022-09-07', 'Back pain'),
(38, 38, '2022-08-25', 'General checkup'),
(39, 39, '2022-07-14', 'High blood pressure'),
(40, 40, '2022-06-20', 'Skin infection');



INSERT INTO measurements (id, visit_id, measure_type, measure_value) VALUES
(1, 1, 'Weight (kg)', 62.5),
(2, 1, 'Blood pressure (mmHg)', 118.0),
(3, 2, 'Temperature (°C)', 38.2),
(4, 3, 'Blood pressure (mmHg)', 145.0),
(5, 3, 'Cholesterol (mg/dL)', 220.0),
(6, 4, 'Weight (kg)', 78.4),
(7, 4, 'Blood pressure (mmHg)', 130.0),
(8, 5, 'Weight (kg)', 55.7),
(9, 6, 'Heart rate (bpm)', 72.0),
(10, 7, 'Glucose (mg/dL)', 180.0);



INSERT INTO measurements (id, visit_id, measure_type, measure_value) VALUES
(11, 11, 'Temperature (°C)', 37.8),
(12, 11, 'Blood pressure (mmHg)', 125.0),
(13, 12, 'Weight (kg)', 68.0),
(14, 13, 'Blood pressure (mmHg)', 150.0),
(15, 14, 'Heart rate (bpm)', 85.0),
(16, 15, 'Weight (kg)', 72.5),
(17, 16, 'Blood sugar (mg/dL)', 190.0),
(18, 17, 'Weight (kg)', 65.0),
(19, 18, 'Blood pressure (mmHg)', 135.0),
(20, 19, 'Temperature (°C)', 36.6),
(21, 20, 'Cholesterol (mg/dL)', 210.0),
(22, 21, 'Weight (kg)', 74.0),
(23, 22, 'Blood pressure (mmHg)', 128.0),
(24, 23, 'Heart rate (bpm)', 78.0),
(25, 24, 'Oxygen saturation (%)', 96.0),
(26, 25, 'Temperature (°C)', 38.0),
(27, 26, 'Skin rash area (cm²)', 12.5),
(28, 27, 'Joint pain level', 4.0),
(29, 28, 'Blood test result', 5.2),
(30, 29, 'Blood pressure (mmHg)', 140.0),
(31, 30, 'Weight (kg)', 69.0),
(32, 31, 'Eye redness level', 2.0),
(33, 32, 'Weight (kg)', 66.5),
(34, 33, 'Temperature (°C)', 37.2),
(35, 34, 'Blood pressure (mmHg)', 130.0),
(36, 35, 'Temperature (°C)', 36.9),
(37, 36, 'Blood sugar (mg/dL)', 180.0),
(38, 37, 'Weight (kg)', 80.0),
(39, 38, 'Blood pressure (mmHg)', 122.0),
(40, 39, 'Blood pressure (mmHg)', 145.0),
(41, 40, 'Skin infection area (cm²)', 10.0);