create database video_games;
use video_games;
SELECT *FROM video_games;
SET GLOBAL local_infile = 1;

CREATE TABLE video_games (
    ID INT,
    Title VARCHAR(255),
    Release_Date VARCHAR(50),
    Team VARCHAR(255),
    Rating VARCHAR(50),
    Times_Listed INT,
    Number_of_Reviews INT,
    Genres VARCHAR(255),
    Summary TEXT,
    Reviews TEXT,
    Plays INT,
    Playing INT,
    Backlogs INT,
    Wishlist INT
);

SHOW VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE 'C:/Users/acer/Downloads/games_data.csv'
INTO TABLE games_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(ID, Title, Release_Date, Team, Rating, Times_Listed, Number_of_Reviews, Genres, Summary, Reviews, Plays, Playing, Backlogs, Wishlist);
select *from games_data;

select count(*) from games_data;

CREATE TABLE vgsales(
    ID INT,
    Title VARCHAR(255),
    Release_Date VARCHAR(50),
    Team VARCHAR(255),
    Rating VARCHAR(50),
    Times_Listed INT,
    Number_of_Reviews INT,
    Genres VARCHAR(255),
    Summary TEXT,
    Reviews TEXT,
    Plays INT,
    Playing INT,
    Backlogs INT,
    Wishlist INT
);

Select *from games_data;

SELECT Name, Platform, Global_Sales
FROM vgsales_data
ORDER BY Global_Sales DESC
LIMIT 10;

SELECT Genre, ROUND(SUM(Global_Sales), 2) AS Total_Global_Sales
FROM vgsales_data
GROUP BY Genre
ORDER BY Total_Global_Sales DESC;

#sales by platform
SELECT Platform, ROUND(SUM(Global_Sales), 2) AS Total_Global_Sales
FROM vgsales_data
GROUP BY Platform
ORDER BY Total_Global_Sales DESC;


#top publisher by global sales
SELECT Publisher, ROUND(SUM(Global_Sales), 2) AS Total_Global_Sales
FROM vgsales_data
GROUP BY Publisher
ORDER BY Total_Global_Sales DESC
LIMIT 10;

#year wise sales trend
SELECT Year, ROUND(SUM(Global_Sales), 2) AS Total_Sales
FROM vgsales_data
WHERE Year != 'Unknown'
GROUP BY Year
ORDER BY Year ASC;

#most popular games by region
SELECT Genre,
       ROUND(SUM(NA_Sales), 2) AS North_America,
       ROUND(SUM(EU_Sales), 2) AS Europe,
       ROUND(SUM(JP_Sales), 2) AS Japan,
       ROUND(SUM(Other_Sales), 2) AS Others
FROM vgsales_data
GROUP BY Genre
ORDER BY North_America DESC;

#publisher with most games released
SELECT Publisher, COUNT(*) AS Total_Games
FROM vgsales_data
GROUP BY Publisher
ORDER BY Total_Games DESC
LIMIT 10;

#average sales per genre
SELECT Genre, ROUND(AVG(Global_Sales), 2) AS Avg_Global_Sales
FROM vgsales_data
GROUP BY Genre
ORDER BY Avg_Global_Sales DESC;

#platform with most games released
SELECT Platform, COUNT(*) AS Total_Games
FROM vgsales_data
GROUP BY Platform
ORDER BY Total_Games DESC
LIMIT 10;

#oldest and latest game year
SELECT 
    MIN(Year) AS Oldest_Release_Year,
    MAX(Year) AS Latest_Release_Year
FROM vgsales_data
WHERE Year != 'Unknown';

#games data

#top 10 rated games
SELECT Title, Team, Rating
FROM games_data
ORDER BY Rating DESC
LIMIT 10;


#most reviwed games
SELECT Title, Number_of_Reviews
FROM games_data
ORDER BY Number_of_Reviews DESC
LIMIT 10;

#most played games
SELECT Title, Plays
FROM games_data
ORDER BY Plays DESC
LIMIT 10;

#most wishlisted games
SELECT Title, Wishlist
FROM games_data
ORDER BY Wishlist DESC
LIMIT 10;

#average rating by genre
SELECT Genres, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM games_data
GROUP BY Genres
ORDER BY Avg_Rating DESC;

#most active games
SELECT Title, Playing
FROM games_data
ORDER BY Playing DESC
LIMIT 10;


#team with highest average rating
SELECT Team, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM games_data
GROUP BY Team
ORDER BY Avg_Rating DESC
LIMIT 10;

#correaltion inshights -- review vs rating
SELECT ROUND(AVG(Rating),2) AS Avg_Rating,
       ROUND(AVG(Number_of_Reviews),0) AS Avg_Reviews
FROM games_data;

#year wise game release count
SELECT Release_Date AS Year, COUNT(*) AS Total_Games
FROM games_data
GROUP BY Release_Date
ORDER BY Year ASC;

#engagement ratio
SELECT Title,
       (Plays + Playing + Wishlist) / (Backlogs + 1) AS Engagement_Score
FROM games_data
ORDER BY Engagement_Score DESC
LIMIT 10;
