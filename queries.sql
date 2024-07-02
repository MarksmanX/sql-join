-- Answer to query 1 --
SELECT * FROM owners JOIN vehicles ON vehicles.owner_id = owners.id;

-- Answer to query 2 --
SELECT first_name, last_name, COUNT(*) AS count FROM owners JOIN vehicles ON vehicles.owner_id = owners.id GROUP BY first_name, last_name ORDER BY first_name;

-- Answer to query 3 --
SELECT first_name, last_name, 
    ROUND(AVG(price)) AS average_price, COUNT(owner_id) 
    FROM owners o 
    JOIN vehicles v ON v.owner_id = o.id 
    GROUP BY first_name, last_name 
    HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) >= 10000 ORDER BY first_name DESC;