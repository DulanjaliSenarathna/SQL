UPDATE products
SET properties = '
{
	"dimensions": [1,2,3],
    "weight":10,
    "manufacturer":{"name": "sony"}
}
'
WHERE product_id = 1;

-- another way to write above 
UPDATE products
SET properties = JSON_OBJECT(
	'weight', 10,
    'dimensions', JSON_ARRAY(1,2,3),
    'manufacturer', JSON_OBJECT('name', 'sony')
    )
WHERE product_id = 2;

SELECT product_id, JSON_EXTRACT(properties,'$.weight') AS weight
FROM products
WHERE product_id=1;

-- another way to above
SELECT product_id, properties -> '$.weight' AS weight
FROM products
WHERE product_id=1;

-- get array data
SELECT product_id, properties -> '$.dimensions' AS weight
FROM products
WHERE product_id=1;

-- get array data individualy
SELECT product_id, properties -> '$.dimensions[0]' AS weight
FROM products
WHERE product_id=1;

-- get nested json object data
SELECT product_id, properties -> '$.manufacturer' AS weight
FROM products
WHERE product_id=1;

-- get nested json object data individualy
SELECT product_id, properties -> '$.manufacturer.name' AS weight
FROM products
WHERE product_id=1;

-- get nested json object data individualy (remove "" from result)
SELECT product_id, properties ->> '$.manufacturer.name' AS weight
FROM products
WHERE properties ->> '$.manufacturer.name' = 'sony';

-- update json values
UPDATE products
SET properties = JSON_SET(
	properties,
    '$.weight' , 20,
    '$.age',10
)
WHERE product_id = 1;

-- delete json properties
UPDATE products
SET properties = JSON_REMOVE(
	properties,
    '$.age'
)
WHERE product_id = 1;