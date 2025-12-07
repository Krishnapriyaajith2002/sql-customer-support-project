use ticket;
-- 1. Open or In Progress tickets
SELECT * FROM tickets_og
WHERE status IN ('Open','In Progress');

-- 2. Tickets by category
SELECT c.category_name, COUNT(*) AS total_tickets
FROM tickets_og t
JOIN categories c ON t.category_id = c.category_id
GROUP BY c.category_name;

-- 3. Agent performance
SELECT a.agent_name, COUNT(*) AS resolved_count
FROM tickets_og t
JOIN agents a ON t.agent_id = a.agent_id
WHERE t.status='Resolved'
GROUP BY a.agent_name;

-- 4. SLA breach - more than 24 hrs unresolved
SELECT ticket_id, created_at
FROM tickets_og
WHERE status <> 'Resolved'
AND TIMESTAMPDIFF(HOUR, created_at, NOW()) > 24;

-- 5. Missing feedback anomaly
SELECT ticket_id
FROM tickets_og
WHERE status='Resolved'
AND ticket_id NOT IN (SELECT ticket_id FROM feedback);

-- Update example
UPDATE tickets_og SET status='Resolved', resolved_at=NOW() WHERE ticket_id=102;

-- Delete example
DELETE FROM tickets_og WHERE ticket_id=104 AND status='Open';
