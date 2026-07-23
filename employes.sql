-- Create Employes
CREATE TABLE Employees(
	employee_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	phone VARCHAR(20),
	hire_date DATE NOT NULL,
	departement VARCHAR(50) NOT NULL
);