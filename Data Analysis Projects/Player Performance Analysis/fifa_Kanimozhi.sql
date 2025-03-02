use fifa;
CREATE TABLE Players_1 (
    ID INT PRIMARY KEY, Wage INT, Value INT, Player VARCHAR(300), Age INT, Continent VARCHAR(50), Nationality VARCHAR(50),
    Overall INT, Potential INT, Club VARCHAR(300), League VARCHAR(300));


INSERT INTO Players_1 (
    ID, Wage, Value, Player, Age, Continent, Nationality, Overall, Potential, Club, League)
VALUES
(190871, 280000, 123000000, 'Neymar', 25, 'South America', 'Brazil', 92, 94, 'Paris Saint-Germain', 'French Premier League (Ligue 1)'),
(193080, 215000, 64500000, 'De Gea', 26, 'Europe', 'Spain', 90, 92, 'Manchester United', 'English Premier League'),
(183277, 295000, 90500000, 'E. Hazard', 26, 'Europe', 'Belgium', 90, 91, 'Chelsea', 'English Premier League'),
(192985, 285000, 83000000, 'K. De Bruyne', 26, 'Europe', 'Belgium', 89, 92, 'Manchester City', 'English Premier League'),
(192119, 190000, 59000000, 'T. Courtois', 25, 'Europe', 'Belgium', 89, 92, 'Chelsea', 'English Premier League'),
(184941, 265000, 67500000, 'A. Sánchez', 28, 'South America', 'Chile', 89, 89, 'Arsenal', 'English Premier League'),
(153079, 325000, 66500000, 'S. Agüero', 29, 'South America', 'Argentina', 89, 89, 'Manchester City', 'English Premier League'),
(176635, 265000, 60000000, 'M. Özil', 28, 'Europe', 'Germany', 88, 88, 'Arsenal', 'English Premier League'),
(167948, 165000, 38000000, 'H. Lloris', 30, 'Europe', 'France', 88, 88, 'Tottenham Hotspur', 'English Premier League'),
(164240, 175000, 34000000, 'Thiago Silva', 32, 'South America', 'Brazil', 88, 88, 'Paris Saint-Germain', 'French Premier League (Ligue 1)'),
(41236, 240000, 27000000, 'Z. Ibrahimović', 35, 'Europe', 'Sweden', 88, 88, 'Manchester United', 'English Premier League'),
(215914, 190000, 52500000, 'N. Kanté', 26, 'Europe', 'France', 87, 90, 'Chelsea', 'English Premier League'),
(199556, 130000, 64500000, 'M. Verratti', 24, 'Europe', 'Italy', 87, 91, 'Paris Saint-Germain', 'French Premier League (Ligue 1)'),
(195864, 195000, 66500000, 'P. Pogba', 24, 'Europe', 'France', 87, 92, 'Manchester United', 'English Premier League'),
(190460, 165000, 65000000, 'C. Eriksen', 25, 'Europe', 'Denmark', 87, 91, 'Tottenham Hotspur', 'English Premier League');

INSERT INTO Players_1 (
    ID, Wage, Value, Player, Age, Continent, Nationality, Overall, Potential, Club, League)
VALUES
(199999, 280000, 123000000, 'Neymar', 35, 'South America', 'Brazil', 92, 94, 'Paris Saint-Germain', 'French Premier League (Ligue 1)');

UPDATE Players_1
SET Continent = 'Europe', Nationality = 'France'
WHERE ID = 199999;

select * from players_1;

CREATE TABLE Players_2 (
    ID INT PRIMARY KEY, 
    Player VARCHAR(300),
    Physical_Average INT,
    Technical_Average INT,
	Defensive_Average INT,
    Mental_Average INT,
    Goal_Keeping_Average INT,
    No_of_Preferred_Positions INT, Best_Position_Score INT, Best_Position_Name VARCHAR(50)
);

INSERT INTO Players_2 (
    ID, Player, Physical_Average, Technical_Average, Defensive_Average, Mental_Average, Goal_Keeping_Average,
    No_of_Preferred_Positions, Best_Position_Score, Best_Position_Name
) 
VALUES
	(190871, 'Neymar', 79, 83, 35, 81, 11, 1, 89, 'LW'),
	(193080, 'De Gea', 56, 27, 20, 54, 88, 1, 86, 'GK'),
	(183277, 'E. Hazard', 81, 84, 34, 79, 9, 1, 88, 'LW'),
	(192985, 'K. De Bruyne', 76, 85, 46, 83, 12, 3, 86, 'CAM'),
	(192119, 'T. Courtois', 54, 21, 15, 43, 83, 1, 86, 'GK'),
	(164240, 'Thiago Silva', 76, 68, 88, 75, 9, 1, 85, 'CB'),
	(41236, 'Z. Ibrahimović', 69, 85, 37, 86, 13, 1, 84, 'ST'),
	(215914, 'N. Kanté', 84, 66, 79, 82, 12, 2, 84, 'CDM'),
	(20801, 'Cristiano Ronaldo', 86, 87, 39, 87, 11, 2, 92, 'ST'),
    (158023,'L. Messi', 81, 88, 32, 84, 10, 1, 91, 'RW'),
    (167664, 'G. Higuaín', 77, 77, 32, 77, 9, 1, 87, 'ST'),
    (155862, 'Sergio Ramos', 78, 69, 89, 73, 10, 1, 87, 'CB'),
    (177003, 'L. Modrić', 77, 81, 70, 81, 10, 2, 86, 'CM'),
    (173731, 'G. Bale', 82, 85, 61, 80, 12, 1, 87, 'RW'),
    (184344, 'L. Bonucci', 70, 65, 88, 73, 3, 1, 86, 'CB'),
    (182493, 'D. Godín', 69, 57, 88, 71, 11, 1, 86, 'CB');

select * from players_1;

select Player, Best_Position_Name, Physical_Average, Technical_Average FROM Players_2
WHERE ID = 184344;


select Player, Best_Position_Name, Physical_Average, Technical_Average FROM Players_2
WHERE ID = 190460;

SELECT                             /* Inner Join - Players present in both the tables */
    p1.ID, 
    p1.Player AS Player_Name, 
    p1.Club, 
    p2.Best_Position_Name
FROM Players_1 p1
INNER JOIN Players_2 p2
ON p1.ID = p2.ID;

SELECT 								 /* Left Join - Players entries matched by ID */
    p1.ID, 
	p1.Player AS Player_Name, 
    p1.Club, 
    p1.Overall,
    p1.Potential,
    p2.No_of_preferred_positions,
    p2.Best_Position_Name
FROM Players_1 p1
LEFT JOIN Players_2 p2
ON p1.ID = p2.ID;


SELECT 								 /* Right Join - Players entries matched by ID */
    p2.ID, 
    p2.Player AS Player_Name, 
    p1.Club, 
    p2.Best_Position_Name
FROM Players_1 p1
RIGHT JOIN Players_2 p2
ON p1.ID = p2.ID;


SELECT 								/* Union - Full Outer Join */
    p1.ID, p1.Player AS Player1, p2.Player AS Player2, p1.Club, p2.Best_Position_Name
FROM Players_1 p1 
LEFT JOIN Players_2 p2 ON p1.ID = p2.ID
UNION
SELECT 
    p2.ID, p1.Player AS Player1, p2.Player AS Player2, p1.Club, p2.Best_Position_Name
FROM Players_1 p1
RIGHT JOIN Players_2 p2 ON p1.ID = p2.ID;


SELECT 							/* Cross Join */
    p1.Player AS Player1, p2.Player AS Player2
FROM Players_1 p1
CROSS JOIN Players_2 p2;


SELECT 									/* Self-Join - Inner join */
    p1.Player AS Player1, 
    p1.Continent
FROM Players_1 p1
INNER JOIN Players_2 p2;

SELECT 										/* players with an Overall score above 85 and a Best_Position_Score above 80 */
    p1.Player,
    p1.Overall,
    p2.Best_Position_Name,
    p2.Best_Position_Score
FROM Players_1 p1
INNER JOIN Players_2 p2 ON p1.ID = p2.ID
WHERE p1.Overall > 85 AND p2.Best_Position_Score > 80
ORDER BY p1.Overall DESC;

SELECT 											/* Players who are present in both tables with multiple preferred positions */
    p2.Player, 
    p1.Club,
    p1.Overall,
    p2.No_of_Preferred_Positions, 
    p2.Best_Position_Name
FROM Players_2 p2
INNER JOIN Players_1 p1 ON p2.ID = p1.ID
WHERE p2.No_of_Preferred_Positions > 1
ORDER BY p2.No_of_Preferred_Positions DESC;




SELECT p1.Continent, p1.Player, p1.Overall
FROM Players_1 p1
WHERE (
    SELECT COUNT(*)
    FROM Players_1 p2
    WHERE p2.Overall > p1.Overall
) < 3
ORDER BY p1.Continent, p1.Overall DESC;


SELECT 									/* Players with Technical_Average and Defensive_Average scores above 70 */
    p2.Player,
    p2.Technical_Average,
    p2.Defensive_Average
FROM Players_2 p2
WHERE p2.Technical_Average > 60 AND p2.Defensive_Average > 60
ORDER BY (p2.Technical_Average + p2.Defensive_Average) DESC;


SELECT 
    p1.Player, 
    p1.Club,
    p1.League
FROM Players_1 p1
LEFT JOIN Players_2 p2 ON p1.ID = p2.ID
WHERE p2.ID IS NULL;
/*****************************/


SELECT
    p1.ID,
    p1.Player AS Player1,
    p2.Player AS Player2,
    p1.Club,
    p2.Best_Position_Name
FROM Players_1 p1
FULL OUTER JOIN Players_2 p2 ON p1.ID = p2.ID;

SELECT
    p2.Player,
    p2.Best_Position_Name
FROM Players_2 p2
LEFT JOIN Players_1 p1 ON p2.ID = p1.ID
WHERE p1.ID IS NULL;

SELECT 
    p1.Player AS Player1, 
    p2.Player AS Player2, 
    p1.Club, 
    p2.Best_Position_Name AS Position
FROM 
    players_1 p1
JOIN 
    players_1 p2 ON p1.Club = p2.Club AND p1.ID <> p2.ID;


	
SELECT 								/* Self Join- Players with same Name but different Country and Continent from the same Table - Table1*/
    p1.Player AS Player_Name, 
    p1.ID AS ID1,     p2.ID AS ID2, 
    p1.Club AS Club1,     p2.Club AS Club2, 
    p1.Continent AS Continent1,     p2.Continent AS Continent2,
	p1.Nationality AS Nationality1,     p2.Nationality AS Nationality2 
FROM 
    players_1 p1
JOIN 
    players_1 p2 ON p1.Player = p2.Player 
                 AND p1.ID <> p2.ID;




SELECT 							/* Aggregate function - Count*/
    (SELECT COUNT(*) FROM players_1) AS Count_Table1, 
    (SELECT COUNT(*) FROM players_2) AS Count_Table2;

SELECT 							/* Aggregate function - AVERAGE*/
    AVG(Wage) AS Average_Wage 
FROM 
    players_1;

SELECT 							/* Aggregate function - MIN MAX*/
    MIN(Age) AS Youngest_Player, 
    MAX(Age) AS Oldest_Player 
FROM 
    players_1;


SELECT 					/* IN*/
    Player, Club 
FROM 
    players_1 
WHERE 
    Club IN ('Manchester United', 'Chelsea', 'Arsenal');

SELECT 					/* BETWEEN */
    Player, Age 
FROM 
    players_1 
WHERE 
    Age BETWEEN 28 AND 30;


SELECT 						/* Logical Operator - AND */
    Player, Overall, Potential 
FROM 
    players_1 
WHERE 
    Overall > 90 
    AND Potential > 90;
    
SELECT 						/* Logical Operator - OR */
    Player, Best_Position_Name 
FROM 
    players_2 
WHERE 
    Best_Position_Name = 'GK' 
    OR Best_Position_Name = 'CB';

SELECT 					/* Logical OPerator - NOT IN */

    Player, Continent 
FROM 
    players_1 
WHERE 
    Continent NOT IN ('Europe');
