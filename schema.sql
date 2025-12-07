create database ticket;
use ticket;
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(150),
  phone VARCHAR(15),
  city VARCHAR(50)
);

CREATE TABLE agents (
  agent_id INT PRIMARY KEY,
  agent_name VARCHAR(100),
  team VARCHAR(50)
);

CREATE TABLE categories (
  category_id INT PRIMARY KEY,
  category_name VARCHAR(50)
);

CREATE TABLE tickets_og (
  ticket_id INT PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  category_id INT REFERENCES categories(category_id),
  agent_id INT REFERENCES agents(agent_id),
  created_at DATETIME,
  resolved_at DATETIME,
  status VARCHAR(20),
  priority VARCHAR(20)
);

CREATE TABLE ticket_logs (
  log_id INT PRIMARY KEY,
  ticket_id INT REFERENCES tickets(ticket_id),
  log_time DATETIME,
  action VARCHAR(200),
  updated_by VARCHAR(50)
);

CREATE TABLE feedback (
  feedback_id INT PRIMARY KEY,
  ticket_id INT REFERENCES tickets(ticket_id),
  rating INT,
  comments VARCHAR(200)
);

