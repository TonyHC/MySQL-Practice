CREATE TABLE Orders (
	id INT AUTO_INCREMENT PRIMARY KEY,
	order_date DATE,
	amount DECIMAL(8,2),
	customer_id INT, FOREIGN KEY(customer_id) REFERENCES Customers(id) ON DELETE CASCADE
);