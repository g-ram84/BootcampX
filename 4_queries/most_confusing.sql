SELECT assignments.id as id, assignments.name as name, assignments.chapter as chapter, COUNT(assignment_id) as total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;