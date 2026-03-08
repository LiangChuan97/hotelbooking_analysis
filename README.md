<h1 align="center"> 🏨 Hotel Booking Demand Analysis using SQL and Tableau</h1>

<p align="center">
<img src="https://img.shields.io/badge/Tool-SQL-blue">
<img src="https://img.shields.io/badge/Dashboard-Tableau-orange">
<img src="https://img.shields.io/badge/Domain-Hospitality%20Analytics-green">
</p>

## 🚀 Project Summary

This project analyzes hotel booking demand data to identify patterns in booking cancellations, revenue performance, and customer behavior. Using SQL for data preparation and Tableau for visualization, the analysis examines booking trends across hotels, seasons, distribution channels, and customer segments. 

The findings highlight key drivers of cancellation risk and revenue performance, enabling data-driven strategies to improve pricing policies, marketing allocation, and customer retention in the hospitality industry.

## 🧠 Skills Demonstrated

- SQL Data Cleaning & Transformation
- Exploratory Data Analysis (EDA)
- Business Intelligence & Data Visualization
- Revenue Performance Analysis
- Customer Segmentation
- Hospitality Analytics
- Data Storytelling

## 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem](#-business-problem)
- [Dataset](#-dataset)
- [Methodology](#-methodology) 
- [Key Insights and Recommendations](#-key-insights-and-recommendations)
- [Key Results](#-key-results)
- [Business Value](#-business-value)
- [Tech Stack](#-tech-stack)
- [Conclusion](#-conclusion)

## 📌 Project Overview

This project analyzes hotel booking demand data to identify patterns in booking cancellations, customer behavior, and revenue performance. Using SQL for data preparation and Tableau for visualization, the analysis uncovers operational inefficiencies and revenue risks associated with cancellations.

By examining booking trends across hotels, seasons, customer segments, distribution channels, and countries, the project provides actionable insights to help online travel agencies (OTAs) and hotel operators improve revenue stability, marketing effectiveness, inventory planning, customer experience

The project includes:
- Exploratory data analysis to identify cancellation patterns and revenue risks
- Analysis of hotel performance across time periods and booking channels
- Customer segmentation analysis to identify high-risk cancellation groups
- Evaluation of repeat guest behavior and booking patterns
- Interactive Tableau dashboard for visual exploration of booking trends and revenue impact

## 🏦 Business Problem

Online travel agencies (OTAs) face a major challenge in balancing high booking volumes with low cancellation rates. High cancellation rates create several operational problems:
- Reduced revenue predictability
- Disruptions in hotel inventory planning
- Increased operational inefficiencies
- Reduced partner trust between hotels and OTAs

The objective of this analysis is to help organizations:
- Identify hotels and time periods with high cancellation risk and estimate revenue lost
- Understand customer segments that contribute to revenue loss
- Evaluate the performance of distribution channels, markets segments and countries
- Develop strategies to reduce cancellations and improve customer retention

## 🗂 Dataset

The dataset contains historical hotel booking records including:
- Hotel type (City Hotel / Resort Hotel)
- Booking dates and stay duration
- Customer segments and distribution channels
- Average Daily Rate (ADR)
- Booking cancellations
- Country of origin

which was sourced from <a href = "[https://public.tableau.com/app/learn/sample-data](https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand?resource=download)">kaggle.</a>

## ⚙️ Methodology

The analysis workflow included:

1. Data Cleaning and Preparation
- Data extracted and transformed using SQL
- Missing values handled and variables standardized
- Key metrics such as cancellation rate and potential revenue loss calculated

2. Exploratory Data Analysis

Explored relationships between:
- Cancellation rates across hotel types and seasons
- Deposit types and revenue loss
- Booking channels and customer segments
- Country-level booking behavior
- Repeat guest behavior

3. Data Visualization

An interactive Tableau dashboard was developed to present insights and enable stakeholders to explore booking trends and cancellation risks.

## 📊 Key Insights and Recommendations

<h2 align="center">📉 Cancellation Trends by Hotel and Season
</h2>

<p align="center"><img width="656" height="865" alt="image" src="https://github.com/user-attachments/assets/21b41eab-e712-4d84-9ad3-42000758ce2b" />

City Hotels recorded extremely high cancellation rates between 53% and 71% during summer months (July–August 2015).

Resort Hotels also experienced elevated cancellations during June–August 2017 (≈37–38%).

Revenue lost aligns with high cancellations, but some months with moderate cancellation rates still have significant revenue loss (high total_potential_revenue).

Recommendations:
- Introduce prepayment or cancellation fees during high-risk months
- Offer non-refundable booking discounts to stabilize revenue
- Implement reminder emails before arrival dates to reduce last-minute cancellations
- Focus on months with moderate cancellation rate but high revenue potential for promotional campaigns

<h2 align="center">💳 Deposit Policies and Revenue Risk</h2>

<p align="center"><img width="656" height="865" alt="image" src="https://github.com/user-attachments/assets/ea89043f-f72e-4247-b333-e05216ee0fba" />

The largest revenue loss occurs from No Deposit / Transient bookings for both hotel types, contributing approximately $11M in lost revenue.

Some Non-Refund segments showed unexpectedly high cancellation rates, suggesting operational or data issues.

Transient-Party and Contract segments also contribute meaningfully in volume and lost rev, but at lower cancellation% (often 10–33%). Contract shows lower ADR in some rows but moderate lost revenue.

Recommendations:
- Encourage prepayment discounts to convert No Deposit bookings
- Introduce deposit guarantees for high-risk booking segments
- Offer future stay credits instead of full refunds to reduce immediate revenue loss
  
<h2 align="center">🌍 Distribution Channels and Market Performance</h2>

<p align="center"><img width="656" height="812" alt="image" src="https://github.com/user-attachments/assets/b90f2919-8501-46b1-996c-0684e3f5e44f" />

The TA/TO Aviation channel consistently delivers high booking volume (e.g., PRT: 25,214 bookings; GBR: 4,727 bookings)with strong ADR (~98–117) and manageable cancellation rates (~26–33%).

Countries such as GBR, ESP, ITA, and DEU in Aviation and Direct segments demonstrate the best balance between:
- High ADR
- High booking volume
- Moderate cancellation rates

Recommendations:
- Allocate marketing spend toward high-performing channels and markets
- Prioritize Aviation and Direct segments for promotional campaigns
- Develop country-specific marketing strategies

<h2 align="center">👥 Repeat Guest Behavior</h2>

<p align="center"><img width="656" height="857" alt="image" src="https://github.com/user-attachments/assets/d2f8a938-fc44-4940-a2cf-1df66623d0b8" />

Repeat guests show significantly lower cancellation rates:
- Repeat guests: 14.69% cancellation
- New guests: 38.04% cancellation

However, 97% of bookings come from new customers, highlighting a large opportunity for customer retention.

Recommendations:
- Implement loyalty programs to retain repeat customers
- Offer discount incentives for second bookings
- Encourage repeat bookings through targeted promotions

<h2 align="center">⚠️ Impact of Previous Cancellations</h2>

<p align="center"><img width="656" height="385" alt="image" src="https://github.com/user-attachments/assets/0ed50b9c-e451-410a-9897-fa5ccaee2307" />

Guests with a history of cancellations exhibit extremely high future cancellation rates (≈92%) compared to guests with no previous cancellations (≈34%).

Recommendations:
- Require prepayment or deposits for customers with prior cancellations
- Introduce behavior-based pricing strategies
- Reward reliable customers with loyalty benefits

## 🏆 Key Results

- City Hotels experienced extremely high cancellation rates (53–71%) during peak summer months, leading to significant potential revenue loss.
- No-deposit transient bookings generated the largest share of revenue leakage, accounting for over $11M in lost revenue.
- TA/TO Aviation and Direct channels produced the strongest combination of high booking volume and strong ADR, particularly in markets such as GBR, ESP, ITA, and DEU.
- Repeat guests cancel far less frequently (≈14.7%) than new guests (≈38%), highlighting the value of customer retention strategies.

## 💡 Business Value

The insights from this analysis help hotel operators and online travel agencies:
- Reduce revenue loss by introducing dynamic deposit and cancellation policies for high-risk booking periods.
- Optimize marketing spend toward high-performing distribution channels and markets with strong ADR and manageable cancellation rates.
- Improve revenue stability by encouraging repeat bookings through loyalty programs and targeted promotions.
- Identify high-risk customer segments and implement deposit or pricing strategies to mitigate cancellation risk.
- Strengthen operational planning and inventory management by anticipating seasonal cancellation patterns

## 🧰 Tech Stack

- 🐍 SQL
- 📊 Tableau
- 📈 Exploratory Data Analysis
- 📉 Business Intelligence
- 🏨 Hospitality Analytics

## 🏁 Conclusion

The hotel booking analysis shows that revenue performance and booking reliability vary across distribution channels, market segments, and countries. Direct and Corporate channels consistently generate higher Average Daily Rates (ADR) while maintaining lower cancellation rates, making them the most dependable sources of revenue. 

TA/TO channels, particularly Aviation and Online Travel Agencies, contribute the highest booking volumes but come with moderate cancellation risks, indicating opportunities to optimize marketing campaigns and reduce revenue leakage. 

In contrast, Group bookings and Offline TA/TO channels generally produce lower ADR and higher cancellation rates, suggesting areas where pricing strategies and operational policies could be improved.









