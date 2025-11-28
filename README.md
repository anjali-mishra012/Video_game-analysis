# 🎮 Video Game Industry Data Analysis
An end-to-end data analysis project combining Python (Jupyter Notebook), SQL, and Power BI to explore industry patterns, game performance, trends, and user engagement.

📌 Project Overview
This project analyzes two datasets — VGsales and Games Data — to understand the global video game market, game popularity, rating trends, sales performance, and user behavior. The project follows a structured data analytics pipeline, including data cleaning, preparation, SQL queries, and dashboard creation.
The goal is to provide insights into:
How video games perform across different genres and platforms Which publishers perform the best Trends in game ratings, reviews, and user engagement Sales performance across regions Key patterns useful for decision-making

### 🎯 Objective of the Project

Clean and prepare both datasets for analysis.
Load data into MySQL and run SQL queries for deeper exploration.
Build visualizations in Power BI to identify trends.
Generate business insights based on sales, ratings, and user engagement metrics.
Showcase an end-to-end analytical workflow suitable for a Data Analyst role.
🧹 Dataset Overview

1. VGsales Dataset

Contains global video game sales across regions, along with platform, genre, and publishing details.
Columns include:
Rank, Name, Platform, Year, Genre, Publisher, NA_Sales, EU_Sales, JP_Sales, Other_Sales, Global_Sales

2. Games Data Dataset

Contains metadata for thousands of games including ratings, reviews, popularity, and genres.
Columns include:
ID, Title, Release_Date, Team, Rating, Times_Listed, Number_of_Reviews, Genres, Summary, Reviews, Plays, Playing, Backlogs, Wishlist

🧪 Data Preparation (Jupyter Notebook)
Fixed incorrect date formats
Removed duplicates and missing values
Standardized text features (title, team, genres)
Converted numeric columns into proper integer/float format
Exported cleaned datasets for SQL loading
🗄 SQL Data Loading & Cleaning
Enabled LOCAL_INFILE for bulk importing
Loaded both cleaned CSV files into MySQL tables

video_games

games_data

Cleaned nulls, invalid years, incorrect formats
Created SQL queries for:
Genre-wise sales
Top platforms
Publisher performance
Rating and review trends
User behavior metrics

### 🧠 SQL Analysis

Using MySQL, multiple analytical queries were performed, including:
Highest selling genres & platforms
Year-wise sales and rating distribution
Most active publishers
Games with highest wishlist/backlogs
Review count vs. rating correlations
SQL helped validate patterns before modeling them in dashboards.
📊 Power BI Dashboard Overview
The Power BI dashboard contains two major sections:
⿡ VGSales Dashboard
Global Sales Overview
Top Publishers & Platforms
Best Performing Genres
Region-wise sales distribution
Yearly game releases & sales trends

⿢ Games Data Dashboard
Ratings distribution
Number of reviews vs plays/wishlist
Team-wise game performance
Genre popularity
User engagement metrics (playing, backlog, wishlist)

### 💡 Insights & Recommendations
Action games dominate global sales, followed by sports and shooter genres.
Older platforms (PS2, DS, Wii) contributed heavily to historical sales.
Publishers like Nintendo, Activision, EA consistently outperform others.
Games with higher review counts generally receive higher ratings.
Wishlist and backlog trends show what users plan to play next, signaling future market demand.

Recommendations
Publishers should focus on genres with consistent high global demand.
Developers should encourage user reviews early to build trust.
New releases can target platforms with strong current engagement.
Studios should analyze wishlist data to plan sequels or remasters.

### 🏁 Conclusion

This project provides a complete end-to-end data analytics workflow using Python, SQL, and Power BI.
It uncovers important patterns in the video game industry — from sales to user engagement — helping businesses understand market dynamics and plan better strategies.
The project also demonstrates practical data analyst skills such as dataset cleaning, loading, querying, visualization, and insight generation.

🛠 Tech Stack
Python (Pandas, NumPy, Matplotlib)
MySQL Workbench
Power BI

Jupyter Notebook
📎 How to Use
1. Open the Jupyter Notebook for cleaning steps
2. Import datasets into MySQL
3. Run SQL analysis queries
4. View Power BI Dashboard for insights
