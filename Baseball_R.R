#Name: Mohammed Saif Wasay
#NUID: 002815958

#Assignment Part 1:
library(tidyverse)
library(readxl) 
#1. Read the data set 2015.csv and store it in a variable called data_2015. You can test that you loaded it correctly with the code utilizing the head function below
data_2015<-read.csv("data/2015.csv")
data_2015
head(data_2015)

#2. Use the function names to produce the column names for your data set
names(data_2015)

#3. Use the view function to view the data set in a separate tab.
view(data_2015)

#4. Use the glimpse function to view your data set in another configuration.
glimpse(data_2015)

#5. Install and load the janitor package. Janitor has a function called clean_names that can be given a data frame to make the names more R friendly. Be sure to store the resulting converted data frame in a variable.
library(janitor)
data_2015 <- clean_names(data_2015)
data_2015

#6. Select from the data set the country, region, happiness_score, and freedom columns. Store this new table as happy_df.
library(dplyr)
happy_df<-select(data_2015,country, region, happiness_score,freedom)
head(happy_df)

#7. Slice the first 10 rows
top_ten_df <- happy_df[1:10, ]
top_ten_df
#View the first few rows of top_ten_df
head(top_ten_df)

#8.Filter for Freedom values under 0.20
no_freedom_df <- filter(happy_df, freedom < 0.20)
no_freedom_df
# View the first few rows of no_freedom_df
head(no_freedom_df)

#9. Arrange happy_df by Freedom in descending order
best_freedom_df <- arrange(happy_df, desc(freedom))
best_freedom_df
# View the first few rows of best_freedom_df
head(best_freedom_df)

#10. Add a new column gff_stat as the sum of Family, Freedom, and Generosity
data_2015 <- data_2015 %>% 
  mutate(gff_stat = family + freedom + generosity)
#View the first few rows of data_2015 with the new column
head(data_2015)


#11. Group by Region and calculate the required statistics
regional_stats_df <- happy_df %>%
  group_by(region) %>%
  summarise(
    country_count = n(),
    mean_happiness = mean(happiness_score, na.rm = TRUE),
    mean_freedom = mean(freedom, na.rm = TRUE)
  )
# View the first few rows of regional_stats_df
head(regional_stats_df)

#12: Download the baseball.csv data set that represents batting statistics from the 1986 Major League Baseball season. Read this data set in a variable called baseball
baseball <- read.csv("data/baseball.csv")
baseball
head(baseball)

#14. Remove (filter) from baseball any player with 0 at bats (AB). Store the result in baseball.
# Filter out players with 0 at-bats
baseball <- filter(baseball, AB > 0)
# View the first few rows of the updated baseball dataframe
head(baseball)


#15. Add a new column batting average called BA. Batting average is computed by the number of hits (H) divided by the number of at bats (AB). Store the result in baseball.
# Add a new column for batting average
baseball <- baseball %>% 
  mutate(BA = H / AB)
# View the first few rows of the updated baseball dataframe
head(baseball)

#16. On-base percentage (OBP) is arguably a better statistic than batting average. 
#Create a column called OBP that computes this stat as (H + BB) / (AB + BB). Store the result in baseball.
# Add a new column for On-base percentage (OBP)
baseball <- baseball %>% 
  mutate(OBP = (H + BB) / (AB + BB))
# View the first few rows of the updated baseball dataframe
head(baseball)

#17. Determine the 10 players who struck out the most this season. Store these results as strikeout_artist.
# Arrange by strikeouts in descending order and get the top 10
strikeout_artists <- baseball %>%
  arrange(desc(SO)) %>%
  head(10)
# View the strikeout_artists
strikeout_artists

#18. To be eligible for end-of-season awards, a player must have either at least 300 at bats or appear in at least 100 games. Keep only the players who are eligible to be considered and store them in a variable called eligible_df.
eligible_df <- baseball %>%
  filter(AB >= 300 | G >= 100)
# View the first few rows of eligible_df
head(eligible_df)


#19. For eligible players, create a histogram of batting average.
# Assuming the BA column exists in eligible_df
#Problem 13: Plotting Bar chart for BA counts
# Create a histogram of batting averages
batting_avg_hist <- ggplot(eligible_df, aes(x = BA)) + geom_histogram(binwidth = 0.025, color = "blue", fill = "green") +labs(x = "BA", y = "Count")
batting_avg_hist

#Assignment Part 2:
#To perform an analysis of On-base Percentage (OBP), Home Runs (HR), and Runs Batted In (RBI) in the eligible_df dataframe, we would typically conduct several statistical examinations including summarizing these metrics and possibly visualizing their distributions.
summary_stats <- eligible_df %>%
  summarise(
    mean_OBP = mean(OBP, na.rm = TRUE),
    median_OBP = median(OBP, na.rm = TRUE),
    sd_OBP = sd(OBP, na.rm = TRUE),
    mean_HR = mean(HR, na.rm = TRUE),
    median_HR = median(HR, na.rm = TRUE),
    sd_HR = sd(HR, na.rm = TRUE),
    mean_RBI = mean(RBI, na.rm = TRUE),
    median_RBI = median(RBI, na.rm = TRUE),
    sd_RBI = sd(RBI, na.rm = TRUE)
  )
summary_stats
#Data Visualization: Plot histograms or boxplots for OBP, HR, and RBI to understand their distributions.
# Histogram for OBP
OBP<-hist(eligible_df$OBP, main = "Histogram of OBP", xlab = "OBP", col = "blue")
OBP
# Histogram for HR
HR<-hist(eligible_df$HR, main = "Histogram of HR", xlab = "HR", col = "red")
HR
# Histogram for RBI
RBI<-hist(eligible_df$RBI, main = "Histogram of RBI", xlab = "RBI", col = "green")
RBI

#Identifying top performers in each category.
top_OBP <- eligible_df %>% arrange(desc(OBP)) %>% head(5)
view(top_OBP)
top_HR <- eligible_df %>% arrange(desc(HR)) %>% head(5)
view(top_HR)
top_RBI <- eligible_df %>% arrange(desc(RBI)) %>% head(5)
view(top_RBI)

cat("\014")
