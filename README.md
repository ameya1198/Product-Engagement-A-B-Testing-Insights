# Product-Engagement-A-B-Testing-Insights

# A/B Testing and Behavioral Analytics for E-Commerce App

This project simulates product analytics for a mobile e-commerce app, with a focus on understanding user engagement and premium conversion behavior. Using randomly assigned A/B test groups, we evaluated the impact of personalized product recommendations on key user actions such as item views and purchases.

---

## Project Overview

This project combines simulated user event data with analytics, experimentation, and insight generation — just like product data teams at companies like Amazon or Netflix. The project culminates in a structured, insight-rich dashboard built in Tableau, supported by hypothesis testing and statistical validation in R.

---

## Key Features

- **End-to-End Product Funnel Analysis**: `app_open → view_item → add_to_cart → purchase`
- **Simulated A/B Test**: Compared Group A (personalized recommendations) vs. Group B (generic feed)
- **Statistical Testing in R**: Proportion tests used to validate differences in conversion metrics
- **Cohort Readiness**: Includes signup date, user platform, referrer, and premium status
- **Interactive Dashboard**: Built in Tableau to visualize KPIs, funnels, user segments, and test results

---

## A/B Test Results

| Metric            | Group A   | Group B   | p-value | Significance |
|-------------------|-----------|-----------|---------|--------------|
| View Item Rate    | 15.08%    | 14.10%    | 0.035   | ✅ Significant |
| Purchase Rate     | 14.45%    | 14.30%    | 0.738   | ❌ Not Significant |

> Personalized recommendations increased product engagement (views) but did not yield a statistically significant change in purchase rates.

---

## Tech Stack

- **Tableau** – Dashboard visualization
- **R** – Dataset formatting and validation & Hypothesis testing (`prop.test()`)

---



