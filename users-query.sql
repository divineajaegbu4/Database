UPDATE kavinoq.todos SET is_completed = 'true'
WHERE id IN (4, 2);

SELECT td.title AS todos_title, td.description, td.is_completed, u.username, u.gender
FROM kavinoq.users u
JOIN kavinoq.todos td ON u.id = td.user_id
WHERE is_completed = 'true';