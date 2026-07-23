-- Create Products
CREATE TABLE Products(
	product_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	category VARCHAR(50),
	price DECIMAL(10,2),
	stock_quantity INT
);