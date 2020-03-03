SELECT *
FROM restaurant;

SELECT *
FROM restaurant
WHERE id = 3;

SELECT restaurant.name, review.review
FROM restaurant
    JOIN review ON restaurant.id = review.restaurant_id
WHERE restaurant.id = 3;


SELECT restaurant.name, review.review
FROM restaurant
    JOIN review
    ON restaurant.id = review.restaurant_id
WHERE restaurant.name = 'Mcdonalds';


SELECT *
FROM reviewer
WHERE reviewer.name = 'Victor';


SELECT restaurant.name, review.review
FROM restaurant
    JOIN review
    ON restaurant.id = review.restaurant_id;


SELECT restaurant.name, review.review, reviewer.name
FROM restaurant
    JOIN review
    ON restaurant.id = review.restaurant_id
    JOIN reviewer
    ON reviewer.id = review.reviewer_id
ORDER BY reviewer.name;