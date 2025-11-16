---
title: October 2024 Inventory Forecasting Challenge
description: Recap of our successful inventory forecasting hackathon
author: Toronto AI and Data
date: 2024-10-20
---

# October 2024: Inventory Forecasting Challenge

<div class="hero">
  <h1>Completed Hackathon</h1>
  <p>October 18-20, 2024 | Toronto, ON</p>
</div>

!!! success "Event Complete"
    This hackathon successfully concluded with 3 deployed solutions serving 5 local businesses.

---

## The Challenge

Teams built machine learning models to predict inventory needs for local retailers, helping them optimize stock levels and reduce both stockouts and excess inventory.

## Results & Impact

### Metrics
- **Participants:** 15 developers (students and junior professionals)
- **Teams:** 4 teams of 3-4 people
- **Solutions Deployed:** 3 production-ready plugins
- **Businesses Served:** 5 small retailers
- **Average Stockout Reduction:** 30%

### Winning Team: PredictIQ

**Team Members:** Sarah Chen, Marcus Rodriguez, Aisha Patel, Liam O'Brien

**Solution:** Built a time-series forecasting model using Prophet and integrated it with Shopify's inventory API. The plugin:
- Analyzes 12 months of historical sales data
- Accounts for seasonality and trends
- Provides weekly reorder recommendations
- Alerts merchants 2 weeks before predicted stockouts

**Business Impact:** Deployed to 2 businesses, reducing stockouts by 35% in the first month.

---

## Technical Approaches

### Team 1: PredictIQ (Winner)
- **Stack:** Python, Facebook Prophet, Flask API, Shopify API
- **ML Approach:** Time-series forecasting with automatic seasonality detection
- **Deployment:** AWS Lambda + RDS
- **Key Innovation:** Automated anomaly detection for unusual demand patterns

### Team 2: StockSmart
- **Stack:** Python, scikit-learn, Django, Shopify API
- **ML Approach:** Random Forest regression with custom feature engineering
- **Deployment:** Google Cloud Run + Firestore
- **Key Innovation:** Multi-SKU bundling predictions

### Team 3: InventoryAI
- **Stack:** Node.js, TensorFlow.js, Express, Shopify API
- **ML Approach:** LSTM neural network for sequence prediction
- **Deployment:** Heroku + PostgreSQL
- **Key Innovation:** Real-time dashboard with live predictions

### Team 4: ForecastPro
- **Stack:** Python, XGBoost, FastAPI, Shopify API
- **ML Approach:** Gradient boosting with external factors (weather, events)
- **Deployment:** DigitalOcean
- **Status:** Completed prototype, not yet deployed

---

## What Participants Learned

> "I came in knowing Python basics and left with a deployed ML model in production. The mentorship was incredible—Jeff and Thomas were available whenever we got stuck and helped us think through architecture decisions."  
> — **Sarah Chen, Computer Science Student, University of Toronto**

> "Working with real business data and seeing our predictions actually help a small business owner make better decisions was incredibly rewarding. This is the kind of experience you can't get in a classroom."  
> — **Marcus Rodriguez, Data Science Bootcamp Graduate**

> "The most valuable lesson was learning to balance model complexity with explainability. Business owners don't care about R² scores—they want to understand why the system recommends what it does."  
> — **Aisha Patel, Software Engineer**

---

## Key Learnings & Challenges

### Technical Challenges
1. **Data Quality:** Real-world business data is messy. Teams learned data cleaning and validation.
2. **API Rate Limits:** Working within Shopify's API constraints required careful planning.
3. **Model Accuracy vs. Simplicity:** Balancing sophisticated models with explainability for business owners.
4. **Edge Cases:** Handling new products, discontinued items, and seasonal variations.

### Business Insights
- Small retailers often lack baseline analytics
- Predictions need to be explainable, not just accurate
- Integration matters more than algorithm sophistication
- User interface and alerts are critical for adoption

### Mentorship Moments
- Jeff's session on API architecture patterns
- Thomas's workshop on communicating data insights to non-technical stakeholders
- Real-time debugging sessions with mentor support
- Business owner Q&A panels

---

## Project Showcase

### PredictIQ Demo

**Problem Solved:** Maple Mart (convenience store) was experiencing frequent stockouts of popular items while overstocking slow movers.

**Solution:** Time-series model that:
- Predicts demand 2 weeks ahead
- Sends automated reorder alerts
- Adjusts for day-of-week and seasonal patterns
- Provides confidence intervals

**Results After 1 Month:**
- 35% reduction in stockouts
- 20% reduction in excess inventory
- $4,000 monthly savings
- 15 minutes per week of owner time saved

---

## Media & Documentation

### Project Repositories
- [PredictIQ GitHub Repo](https://github.com/toronto-ai-data/predictiq) - ⭐ 127 stars
- [StockSmart GitHub Repo](https://github.com/toronto-ai-data/stocksmart) - ⭐ 89 stars
- [InventoryAI GitHub Repo](https://github.com/toronto-ai-data/inventoryai) - ⭐ 73 stars

### Presentations & Videos
- [Final Presentation Slides (PDF)](#)
- [Demo Videos Playlist](#)
- [Technical Architecture Documentation](#)

### Blog Coverage
- [Why Hackathons Are the Best Way to Learn](../../blog/hackathons-real-world-learning/)
- [From Data to Decisions](../../blog/data-to-decisions/)

---

## Partner Businesses

Special thanks to our partner businesses who provided real data and problem definition:

### Maple Mart
**Type:** Convenience store chain (3 locations)  
**Data Provided:** 2 years sales data, 300+ SKUs  
**Plugin Deployed:** PredictIQ  
**Result:** 35% stockout reduction

### Verde Garden Supply
**Type:** Plant and gardening supplies  
**Data Provided:** 18 months data, seasonal products  
**Plugin Deployed:** StockSmart  
**Result:** Better seasonal inventory planning

### Northern Threads
**Type:** Clothing boutique  
**Data Provided:** Fashion retail data, size/color variants  
**Plugin Deployed:** InventoryAI  
**Result:** Improved size distribution

### Taste of Toronto
**Type:** Specialty food shop  
**Data Provided:** Perishable goods data  
**Plugin Deployed:** None (data insights provided)

### Tech Haven
**Type:** Electronics retailer  
**Data Provided:** Consumer electronics data  
**Plugin Deployed:** None (prototype tested)

---

## Event Photos

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 1rem; margin: 2rem 0;">
  <div style="background: #F5F5F5; padding: 1rem; border-radius: 8px; text-align: center;">
    <p style="margin: 0;">📸 Team Formation Session</p>
  </div>
  <div style="background: #F5F5F5; padding: 1rem; border-radius: 8px; text-align: center;">
    <p style="margin: 0;">📸 Saturday Building Sprint</p>
  </div>
  <div style="background: #F5F5F5; padding: 1rem; border-radius: 8px; text-align: center;">
    <p style="margin: 0;">📸 Final Presentations</p>
  </div>
  <div style="background: #F5F5F5; padding: 1rem; border-radius: 8px; text-align: center;">
    <p style="margin: 0;">📸 Award Ceremony</p>
  </div>
</div>

---

## Stats & Highlights

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1.5rem; margin: 2rem 0;">
  <div style="background: linear-gradient(135deg, #00A896 0%, #00C4AD 100%); color: #FEFEFE; padding: 1.5rem; border-radius: 8px; text-align: center;">
    <h3 style="color: #FEFEFE; margin: 0; font-size: 2.5rem;">15</h3>
    <p style="margin: 0.5rem 0 0 0;">Participants</p>
  </div>
  <div style="background: linear-gradient(135deg, #FF6F61 0%, #FF8A7F 100%); color: #FEFEFE; padding: 1.5rem; border-radius: 8px; text-align: center;">
    <h3 style="color: #FEFEFE; margin: 0; font-size: 2.5rem;">3</h3>
    <p style="margin: 0.5rem 0 0 0;">Plugins Deployed</p>
  </div>
  <div style="background: linear-gradient(135deg, #FFD23F 0%, #FFE066 100%); color: #0D0D0D; padding: 1.5rem; border-radius: 8px; text-align: center;">
    <h3 style="color: #0D0D0D; margin: 0; font-size: 2.5rem;">48</h3>
    <p style="margin: 0.5rem 0 0 0;">Hours of Building</p>
  </div>
  <div style="background: linear-gradient(135deg, #00A896 0%, #00C4AD 100%); color: #FEFEFE; padding: 1.5rem; border-radius: 8px; text-align: center;">
    <h3 style="color: #FEFEFE; margin: 0; font-size: 2.5rem;">5</h3>
    <p style="margin: 0.5rem 0 0 0;">Businesses Helped</p>
  </div>
</div>

---

<div style="text-align: center; margin: 2rem 0;">
  <a href="../" class="cta-button">View Upcoming Hackathons</a>
  <a href="../../blog/" class="cta-button">Read Related Blog Posts</a>
</div>

