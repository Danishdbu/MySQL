-- SUBQUERY
SELECT MAX(score) FROM subq.movies;

SELECT * FROM subq.movies 
WHERE score = 9.3;

-- SUBQUERY
SELECT * FROM subq.movies 
WHERE score =(SELECT MAX(score) FROM subq.movies);


-- INDEPENDENT SUBQUERY - Scalar subquery
-- find the movie with highest profit(vs order by)
USE subq;
SELECT * FROM movies
WHERE (gross - budget ) = (SELECT MAX(gross - budget ) FROM movies);

SELECT * FROM movies
ORDER BY (gross-budget) DESC LIMIT 1;

-- find how many movies have a rating > the avg of all the movie rating(find the count of above average movies)
SELECT COUNT(*) FROM movies
WHERE score > (SELECT AVG(score) FROM movies);



-- find the highest rated movies of 2000

SELECT * FROM movies
WHERE year = 2000 AND score = (SELECT MAX(score) FROM movies 
                               WHERE year = 2000);




-- find the highest rated movie among all movies whose number of votes are > the dataset avg votes


SELECT * FROM movies
WHERE votes > (SELECT AVG(votes) FROM movies) AND  score = (SELECT MAX(score) FROM movies);

SELECT AVG(votes) FROM movies;

-- 2ND WAY
SELECT * FROM movies
WHERE score = (SELECT MAX(score) FROM movies 
               WHERE votes > (SELECT AVG(votes) 
               FROM movies));



-- INDEPENDENT SUBQUERY - ROW subquery(One Column multi rows)

-- find all user who never ordered
SELECT * FROM users
WHERE user_id NOT IN (SELECT DISTINCT(user_id) 
					  FROM orders);


-- find all the movies made by top 3 director ( in term of total gross income)
SELECT * FROM movies
WHERE director IN (SELECT director
               FROM movies
               GROUP BY director
               ORDER BY SUM(gross) DESC
               LIMIT 3) ;-- HERE IT WRONG BUT IT WORK OTHER DBMS


-- find all movies of all those actors whose filmographys avg rating > 8.5(take 25000 votes as cutoff)

SELECT * FROM movies
WHERE star IN (SELECT star FROM movies
              WHERE votes > 25000
              GROUP BY star 
              HAVING AVG(score) > 8.5);
              


-- Table Subqurery (MULTI Col Multi Row)
-- find the highest rated movie of each genre votes cutoff of 25000
SELECT * FROM movies 
WHERE (genre,score) IN (SELECT genre, MAX(score) 
                         FROM movies
                         WHERE votes > 25000
                         GROUP BY genre) AND votes > 25000;






-- find the highest grossing movies of top 5 actor/director combo in term of total gross income 

WITH top_duos AS (
SELECT star,director,MAX(gross)
FROM movies
GROUP BY star, director
ORDER BY SUM(gross) DESC LIMIT 5);

SELECT star,director,MAX(gross)
FROM movies
GROUP BY star, director
ORDER BY SUM(gross) DESC LIMIT 5;



-- Correlated Subquery

-- find all the movies that have a rating higher than the average rating of movies in the same genre.[Animation]

SELECT  * FROM movies m1
WHERE score > (SELECT AVG(score) FROM movies m2 WHERE m2.genre = m1.genre)
;

-- find the favorite food of each customer
SELECT name , f_name ,COUNT(*) FROM users t1
JOIN orders t2 ON t1.user_id = t2.user_id
JOIN order_details t3 ON t2.order_id = t3.order_id
JOIN food t4 ON t3.f_id = t4.f_id
GROUP BY t2.user_id,t3.f_id ;


-- Usage with SELECT

--  Get the percentage of votes for each movie compare to the total number of votes

USE subq;

SELECT name ,(votes/(SELECT SUM(votes) FROM movies))*100 FROM movies;


-- Display all movie name , genre ,score and avg(score) of genre 
SELECT name, genre,score,(SELECT AVG(score) FROM movies m2 WHERE m2.genre = m1.genre)
FROM movies m1;

-- UAGES WITH FROM
-- Display average rating of all the restaurants
USE subq;

SELECT r_name, avg_rating
FROM ( SELECT r_id, AVG(restaurant_rating) AS 'avg_rating'
       FROM orders
	   GROUP BY r_id) t1 JOIN restaurantS t2
       ON t1.r_id = t2.r_id























































