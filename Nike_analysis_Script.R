#Import dataset
df_nike<-read.csv("D:\\Users\\Usuario\\Downloads\\nike_2020_04_13.csv")

#Install Packages
install.packages("dplyr") 
install.packages("janitor") 
install.packages("lubridate") 
install.packages("tidyr")
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("reshape2")
install.packages("knitr")

#Load Packages
library("dplyr") 
library("janitor") 
library("lubridate") 
library("tidyr")
library("tidyverse")
library("ggplot2")
library("reshape2")
library("knitr")

#Look for duplicates
duplicates <- duplicated(df_nike)
if (any(duplicates)) {
  print("There are duplicated rows in the dataset.")
} else {
  print("There are no duplicated rows in the dataset.")
}

#Clean names and remove empty rows
df_nike<-clean_names(df_nike)
remove_empty(df_nike, which = c ())

#Review and correct the data type of each column.
str(df_nike)

#Hide unnecessary columns
df_nike <- df_nike[, c("product_name", "sales_price", "rating", "reviews")]

#__________________ANALYSIS______________________


#_______________________Plot Count of rating values__________________
# Filter the dataframe to omit zero values
df_nike_filtered <- df_nike[df_nike$rating != 0, ]

# Calculate the count of rows for each unique rating value
rating_counts <- as.data.frame(table(df_nike_filtered$rating))

# Convert Rating to factor and reorder levels
rating_counts$Rating <- factor(rating_counts$Rating, levels = unique(rating_counts$Rating))

# Rename the columns for clarity
names(rating_counts) <- c("Rating", "Count")

# Create the line plot
ggplot(rating_counts, aes(x = Rating, y = Count, group = 1)) +
  geom_line() +
  labs(title = "Overall Products Rating",
       x = "Rating",
       y = "Count")

#_________________Donut Chart Integral Values Ranking_________________

# Round the values in the "Rating" column and convert them to integers
df_nike_filtered$rating_integer <- round(df_nike_filtered$rating)

# Calculate the count of rows for each unique integer rating value
rating_counts_integer <- as.data.frame(table(df_nike_filtered$rating_integer))

# Rename the columns for clarity
names(rating_counts_integer) <- c("Rating", "Count")

# Check the resulting dataframe
print(rating_counts_integer)


# Define integral Values
rating_counts_integer$Percentage <- rating_counts_integer$Count / sum(rating_counts_integer$Count) * 100

rating_counts_integer$LabelPosX <- cos((cumsum(rating_counts_integer$Count) - 0.5 * rating_counts_integer$Count) / sum(rating_counts_integer$Count) * 2 * pi)
rating_counts_integer$LabelPosY <- sin((cumsum(rating_counts_integer$Count) - 0.5 * rating_counts_integer$Count) / sum(rating_counts_integer$Count) * 2 * pi)

# Create donnut chart

ggplot(rating_counts_integer, aes(x = "", y = Count, fill = factor(Rating))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  theme(legend.position = "right") +
  scale_fill_discrete(name = "Rating") +
  labs(title = "Rating Products Percentage", y = NULL) +
  geom_point(aes(x = 0, y = 0), color = "white", size = 5) +
  geom_text(aes(label = " ", x = 0, y = 0), color = "black", size = 5, nudge_y = -0.5)

#Order descending amount of reviews

df_nike_reviews <- df_nike[order(-df_nike$reviews), ]

#__________________________SELECT MORE POPULAR AND UNPOPULAR PRODUCTS_______________________________

# Filter and select the top 10 highest ratings greater than 4
top_high_rating <- df_nike %>%
  filter(rating > 4) %>%
  arrange(desc(reviews)) %>%
  head(10)

# Filter and select the top 10 highest ratings less than 3
top_low_rating <- df_nike %>%
  filter(rating < 3) %>%
  arrange(desc(reviews)) %>%
  head(10)

# Selecting specific columns from top_high_rating dataframe
top_high_rating <- top_high_rating %>%
  select(product_name, rating, reviews)

# Selecting specific columns from top_low_rating dataframe
top_low_rating <- top_low_rating %>%
  select(product_name, rating, reviews)

#___________________Relation between Price and Rating_______________

# Filter out rows where rating is not equal to 0
df_filtered <- df_nike[df_nike$rating != 0,]

# Create scatter plot
ggplot(df_filtered, aes(x = sale_price, y = rating)) +
  geom_point() +
  labs(title = "Sales Price vs. Rating ",
       x = "Sale Price",
       y = "Rating")

#__________________Relation between Price and Reviews____________________

# Create scatter plot
ggplot(df_filtered, aes(x = sale_price, y = reviews)) +
  geom_point() +
  labs(title = "Sales Price vs. Reviews",
       x = "Sale Price",
       y = "Reviews")