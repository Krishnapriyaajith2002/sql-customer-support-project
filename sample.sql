use ticket;
INSERT INTO customers VALUES
(1,'Rahul Nair','rahul@example.com','9876543210','Trivandrum'),
(2,'Anjali Menon','anjali@example.com','9876500000','Kochi'),
(3,'Vikram Das','vikram@example.com','9999888877','Bangalore'),
(4,'Sneha Pillai','sneha@example.com','9123456780','Chennai');

INSERT INTO agents VALUES
(1,'Adithya K','L1 Support'),
(2,'Meera S','L1 Support'),
(3,'Joseph P','L2 Network'),
(4,'Fatima R','Billing');

INSERT INTO categories VALUES
(1,'Login Issue'),
(2,'Payment Failure'),
(3,'Network Down'),
(4,'Slow Performance');

INSERT INTO tickets_og VALUES
(101,1,3,3,'2025-11-01 09:15:00','2025-11-01 12:30:00','Resolved','Critical'),
(102,2,1,1,'2025-11-01 10:00:00',NULL,'Open','Medium'),
(103,3,2,4,'2025-11-02 15:45:00','2025-11-02 16:30:00','Closed','High'),
(104,4,4,2,'2025-11-03 11:20:00',NULL,'In Progress','Low');

INSERT INTO ticket_logs VALUES
(1,101,'2025-11-01 09:20:00','Ticket created','System'),
(2,101,'2025-11-01 10:00:00','Assigned to L2 Network','Supervisor'),
(3,101,'2025-11-01 12:30:00','Resolved','Adithya K');

INSERT INTO feedback VALUES
(1,101,5,'Very fast resolution'),
(2,103,3,'Resolved but slow response');
