# # SELECT
#   first_name,
#   last_name,
#   order_date,
#   amount
# FROM Customers,
#      Orders
# WHERE Customers.id = Orders.customer_id;

# SELECT
#   first_name,
#   last_name,
#   order_date,
#   amount
# FROM Customers
# JOIN Orders ON
# Customers.id = Orders.customer_id
# ORDER BY order_date;

# SELECT
#   first_name,
#   last_name,
#   email,
#   SUM(amount) as 'Total Spent'
# FROM Customers
# JOIN Orders ON
# Customers.id = Orders.customer_id
# GROUP BY Customers.id
# ORDER BY 'Total Spent' DESC;

# SELECT
#   first_name,
#   last_name,
#   order_date,
#   amount
# FROM Customers
# LEFT JOIN Orders ON
# Customers.id = Orders.customer_id;

SELECT
  first_name,
  last_name,
  IFNULL(SUM(amount),0) as total_spent
FROM Customers
LEFT JOIN Orders ON
Customers.id = Orders.customer_id
GROUP BY Customers.id
ORDER BY total_spent DESC;