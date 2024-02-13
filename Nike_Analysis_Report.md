### **Nike Product Analysis**
####  By Angela Escobar

This project analyzes a database of the Nike brand. The purpose is to obtain information about overall customer satisfaction and rank the most and least liked products in order to analyze which products are performing well and which ones should be reevaluated to optimize company performance.

#### **1. Ask**

The pivotal inquiries driving this project's analysis revolve around discerning the sentiment of customers towards their acquisitions with the brand. Additionally, it seeks to delineate the spectrum of product popularity, distinguishing those that resonate strongly with consumers from those that falter, warranting a reevaluation to realign with market expectations.


The key questions for the analysis of this project were as follows:

* How do customers feel about their acquisitions with the brand?
* Which products are most popular and which ones are not yielding good results and need to be reassessed?

#### **2. Prepare**

In the preparation of this analysis project, the necessary metrics were determined to conduct the study. The database was located, downloaded, and subsequently securely and systematically organized on the computer. Additionally, version control was established to ensure the security of the information.

#### **3. Process**

For data processing, a thorough cleaning procedure was conducted, focusing on identifying erroneous or inaccurately entered data and removing any duplicated information. Additionally, outliers were identified and handled appropriately to ensure the integrity and accuracy of the dataset. Data normalization and transformation techniques were applied as needed to prepare the data for analysis. 

This is a list of the specific actions that were carried out. More detailed information can be found in the project code.

* Look and eliminate duplicates
* Clean column names
* Remove empty spaces
* Review and correct the data type of each column
* Hide columns that would not be relevant for the analysis.
* Filter some columns to omit zero values

#### **4. Analysis**

The specific aspects targeted for analysis were initially outlined, involving an intricate breakdown of the key focal areas slated for examination. The detailed execution of the analysis are further elaborated within the project's codebase. These aspects were identified and categorized as follows:

* Overall customer satisfaction assessment
* Identification of the most popular products
* Identification of the least popular products
* Examination of the relationship between price and rating
* Examination of the relationship between price and the quantity of reviews

#### **5. Share**

After performing the necessary procedures for the analysis, the following results were obtained:


There were many products that had not been rated, so for the realization of this graph, the values were filtered. In this graph, it can be evidenced that overall, the ratings of the products are largely distributed between 4 and 5 points, however, the vast majority of products were rated with a score of 5.

![](01.Overall_products_rating.png)

Subsequently, a percentage analysis of the scores was performed, resulting in the majority of scores being between 4 and 5 points, which translates into very high overall satisfaction from customers.

![](02.Rating_Products_Percentage.png)

A filter was applied to determine those products in which customers had given the most reviews; since this indicates that customers liked the product so much that they placed considerable emphasis on sharing their opinion and recommending the product. This was the result for the top 10 products most liked by the public.

![](05.Top_10_products.png)

Similarly, a filter was applied to determine those products with the most reviews scoring less than 3, as this suggests that customers disliked the product so much that they also placed a lot of emphasis on sharing their negative opinion about it. This was the result for the 10 most criticized and lowest-rated products.

![](06.Lower_10_products.png)

Subsequently, a scatter plot was made to determine if there was any relationship between the sale price and the rating given to the products. The graph suggests that although not very pronounced, there is a slight accumulation of positive rankings towards the price range between 5000 and 15000, which allows us to deduce that customers feel satisfied to purchase a very good product in a medium price range.

![](03.Sales_price_vs_rating.png)

The relationship between sales price and the number of reviews given was also analyzed. The graph allows us to conclude that indeed, probably the highest number of sales and therefore reviews are given towards the range between 5000 and 15000.

![](04.Sales_price_vs_reviews.png)


#### **6. Act**

**Conclusions & Recommendations**

* 86.3% of customers rated their products between 4 and 5, which indicates a high level of satisfaction. It is important to consider the other 13.4% who express low satisfaction, understanding and analyzing the improvement possibilities they mention exist in the products.

* It is beneficial to consider these 10 products that have a very good acceptance and satisfaction index among customers; new designs based on the characteristics of these popular products could be very beneficial for the company.

* The 10 least popular products need to be restructured as customers have clearly and emphatically expressed their dislike for these products. Having a database on the specific characteristics of each product and user preferences would be valuable information for optimizing product production processes and customer satisfaction.

* Products priced between 5000 and 15000 are the most popular and where customers perceive the quality-price ratio most strongly. The majority of positive ratings and quantity of reviews are found in this price range.
