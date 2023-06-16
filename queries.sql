
-- joins_exercise=# SELECT * FROM owners o
-- joins_exercise-# FULL OUTER JOIN vehicles v
-- joins_exercise-# ON o.id=v.owner_id;

SELECT * FROM owners o 
  FULL OUTER JOIN vehicles v 
    ON o.id=v.owner_id;

-- joins_exercise=# SELECT first_name, last_name, 
-- joins_exercise-# Count(owner_id) FROM owners o
-- joins_exercise-# JOIN vehicles v on o.id=v.owner_id
-- joins_exercise-# GROUP BY (first_name, last_name)
-- joins_exercise-# ORDER BY first_name;

SELECT first_name, last_name, 
  COUNT(owner_id) FROM owners o 
  JOIN vehicles v on o.id=v.owner_id 
  GROUP BY (first_name, last_name) 
ORDER BY first_name;


-- joins_exercise=# SELECT 
-- joins_exercise-# first_name, last_name, 
-- joins_exercise-# ROUND(AVG(price)) as average_price, 
-- joins_exercise-# COUNT(owner_id)
-- joins_exercise-# FROM owners o JOIN vehicles v on o.id=v.owner_id
-- joins_exercise-# GROUP BY (first_name, last_name)
-- joins_exercise-# HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 1000
-- joins_exercise-# ORDER BY first_name DESC;

SELECT 
  first_name, last_name, 
  ROUND(AVG(price)) as average_price, 
  COUNT(owner_id) 
FROM owners o 
JOIN vehicles v on o.id=v.owner_id 
GROUP BY 
  (first_name, last_name) 
HAVING 
  COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 
ORDER BY first_name DESC;