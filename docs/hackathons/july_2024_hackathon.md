---
title: July 2024 Customer Insights Engine
description: Building AI-powered customer segmentation for e-commerce
author: Toronto AI and Data
date: 2024-07-25
---

# July 2024: Customer Insights Engine

<div class="hero">
  <h1>Completed Hackathon</h1>
  <p>July 19-21, 2024 | Toronto, ON</p>
</div>

!!! success "Event Complete"
    Successfully deployed 2 customer segmentation plugins helping 4 businesses understand their customers better.

---

## The Challenge

Build AI-powered customer segmentation tools for e-commerce platforms that help small businesses understand their customers, identify high-value segments, and personalize marketing efforts.

## Results & Impact

### Metrics
- **Participants:** 12 developers
- **Teams:** 3 teams
- **Solutions Deployed:** 2 production plugins
- **Businesses Served:** 4 e-commerce stores
- **Average Marketing ROI Increase:** 25%

### Winning Team: SegmentAI

**Team Members:** Emily Wong, David Kim, Priya Sharma

**Solution:** Built an unsupervised learning model that automatically segments customers based on:
- Purchase history and frequency
- Average order value
- Product category preferences
- Engagement patterns

The plugin integrates with Shopify and provides actionable marketing recommendations for each segment.

**Business Impact:** Deployed to 2 businesses, increasing repeat purchase rate by 40% and reducing marketing costs by 20%.

---

## Technical Approaches

### Team 1: SegmentAI (Winner)
- **Stack:** Python, scikit-learn (K-Means clustering), Flask, React dashboard
- **ML Approach:** RFM (Recency, Frequency, Monetary) analysis + K-Means clustering
- **Deployment:** AWS EC2 + S3
- **Key Features:**
  - Automatic customer segmentation (5-8 segments)
  - Email campaign recommendations per segment
  - Visual dashboard with segment characteristics
  - Monthly automated re-segmentation

### Team 2: InsightHub
- **Stack:** Python, DBSCAN, FastAPI, Vue.js
- **ML Approach:** Density-based clustering with anomaly detection for VIP customers
- **Deployment:** DigitalOcean + MongoDB
- **Key Features:**
  - VIP customer identification
  - Churn risk prediction
  - Personalized product recommendations
  - Integration with email marketing tools

### Team 3: CustomerIQ
- **Stack:** Python, Hierarchical clustering, Django, PostgreSQL
- **ML Approach:** Hierarchical clustering with custom distance metrics
- **Deployment:** In development
- **Key Features:**
  - Multi-level customer hierarchies
  - Predictive lifetime value scoring
  - Segment evolution tracking

---

## What Participants Learned

> "I learned how to translate business questions into data science problems. Working directly with a business owner who couldn't afford expensive analytics tools was eye-opening."  
> — **Emily Wong, Data Science Student, York University**

> "The most valuable part was learning how to present technical findings to non-technical stakeholders. Our visualizations needed to be simple enough for a busy business owner to understand in 30 seconds."  
> — **David Kim, Software Engineer**

> "Understanding that model accuracy isn't everything—the business owner needs to trust the system and understand why customers are grouped the way they are. Explainability is key."  
> — **Priya Sharma, Junior Data Analyst**

---

## Business Impact Stories

### Case Study: Artisan Candle Co.

**Challenge:** Growing customer base but unclear who their most valuable customers were and how to target marketing.

**Solution:** SegmentAI identified 5 customer segments:
1. **Gift Givers** (25% of customers, high frequency, seasonal)
2. **Bulk Buyers** (10% of customers, low frequency, high value)
3. **Subscription Enthusiasts** (15% of customers, monthly recurring)
4. **First-time Browsers** (40% of customers, at-risk churn)
5. **Brand Advocates** (10% of customers, high engagement, moderate spend)

**Actions Taken:**
- Targeted email campaigns for each segment
- Special offers for Gift Givers during holidays
- Loyalty program for Brand Advocates
- Re-engagement campaign for First-time Browsers

**Results After 2 Months:**
- 40% increase in repeat purchase rate
- 20% reduction in marketing costs (better targeting)
- 15% increase in average order value
- $8,000 additional monthly revenue

---

### Case Study: Wellness Haven

**Challenge:** E-commerce wellness products store struggling to understand customer behavior patterns.

**Solution:** InsightHub's density-based approach identified:
- 3 core customer groups
- 12 VIP customers who drive 30% of revenue
- High churn risk among first-time purchasers

**Actions Taken:**
- VIP customer concierge program
- First-purchase discount + follow-up sequence
- Product bundles based on segment preferences

**Results After 6 Weeks:**
- 28% reduction in customer churn
- $12,000 saved in wasted marketing spend
- Improved customer satisfaction scores

---

## Key Learnings

### Technical
- Feature engineering matters more than algorithm choice
- Explainability is crucial for business adoption
- Real-time vs. batch processing trade-offs
- Handling sparse data and cold-start problems

### Business
- Small businesses need actionable insights, not just data
- Visualization and UX are as important as the ML model
- Integration with existing tools (email, CRM) drives adoption
- ROI measurement is essential for continued use

### Collaboration
- Cross-functional teams (developers + business) work best
- Regular check-ins with business owners improved solutions
- Documentation matters for handoff and maintenance
- Teaching stakeholders to interpret results is part of the project

---

## Technical Deep Dive

### RFM Analysis Explained

The winning team used RFM analysis as the foundation:

**Recency:** How recently did the customer make a purchase?  
**Frequency:** How often do they purchase?  
**Monetary:** How much do they spend?

Each customer gets scored 1-5 on each dimension, creating a 3D space for clustering.

### Clustering Approach

```
1. Data Collection (Shopify API)
   ↓
2. Feature Engineering (RFM + behavioral)
   ↓
3. Normalization & Scaling
   ↓
4. K-Means Clustering (k=5-8)
   ↓
5. Segment Characterization
   ↓
6. Actionable Recommendations
   ↓
7. Dashboard Visualization
```

### Key Metrics

- **Silhouette Score:** 0.62 (good separation)
- **Within-Cluster Sum of Squares:** Optimal at k=6
- **Business Validation:** Segments aligned with owner's intuition

---

## Media & Documentation

### Project Repositories
- [SegmentAI GitHub Repo](https://github.com/toronto-ai-data/segmentai) - ⭐ 94 stars
- [InsightHub GitHub Repo](https://github.com/toronto-ai-data/insighthub) - ⭐ 67 stars

### Presentations & Resources
- [Final Presentation Slides (PDF)](#)
- [Customer Segmentation Guide (eBook)](#)
- [Technical Implementation Docs](#)

### Blog Posts
- [From Data to Decisions: How AI Transforms Business Strategy](../../blog/data-to-decisions/)
- [Measuring AI ROI: What Actually Matters](../../blog/measuring-ai-roi/)

---

## Partner Businesses

Special thanks to our partner businesses:

### Artisan Candle Co.
**Type:** Handmade candles and home fragrance  
**Customers:** 2,500+ in database  
**Plugin Deployed:** SegmentAI  
**Result:** 40% increase in repeat purchases

### Wellness Haven
**Type:** Health and wellness products  
**Customers:** 1,800+ customers  
**Plugin Deployed:** InsightHub  
**Result:** 28% reduction in churn

### GreenEco Store
**Type:** Sustainable living products  
**Customers:** 3,200+ customers  
**Plugin Deployed:** SegmentAI  
**Result:** Better targeted email campaigns

### TechStyle Apparel
**Type:** Tech-inspired clothing  
**Customers:** 4,100+ customers  
**Plugin Deployed:** None (insights report provided)

---

## Event Highlights

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1.5rem; margin: 2rem 0;">
  <div style="background: linear-gradient(135deg, #00A896 0%, #00C4AD 100%); color: #FEFEFE; padding: 1.5rem; border-radius: 8px; text-align: center;">
    <h3 style="color: #FEFEFE; margin: 0; font-size: 2.5rem;">12</h3>
    <p style="margin: 0.5rem 0 0 0;">Participants</p>
  </div>
  <div style="background: linear-gradient(135deg, #FF6F61 0%, #FF8A7F 100%); color: #FEFEFE; padding: 1.5rem; border-radius: 8px; text-align: center;">
    <h3 style="color: #FEFEFE; margin: 0; font-size: 2.5rem;">2</h3>
    <p style="margin: 0.5rem 0 0 0;">Plugins Deployed</p>
  </div>
  <div style="background: linear-gradient(135deg, #FFD23F 0%, #FFE066 100%); color: #0D0D0D; padding: 1.5rem; border-radius: 8px; text-align: center;">
    <h3 style="color: #0D0D0D; margin: 0; font-size: 2.5rem;">25%</h3>
    <p style="margin: 0.5rem 0 0 0;">Avg ROI Increase</p>
  </div>
  <div style="background: linear-gradient(135deg, #00A896 0%, #00C4AD 100%); color: #FEFEFE; padding: 1.5rem; border-radius: 8px; text-align: center;">
    <h3 style="color: #FEFEFE; margin: 0; font-size: 2.5rem;">4</h3>
    <p style="margin: 0.5rem 0 0 0;">Businesses Helped</p>
  </div>
</div>

---

## Mentor Insights

### Jeff Cogswell's Architecture Workshop

Jeff led a session on building scalable dashboard architectures, covering:
- Real-time data updates vs. batch processing
- Component-based UI design
- API design best practices
- Security considerations for customer data

### Thomas Seeber's Data Storytelling Session

Thomas taught participants how to:
- Translate ML results into business language
- Create compelling visualizations
- Present confidence levels appropriately
- Frame recommendations as actionable next steps

---

<div style="text-align: center; margin: 2rem 0;">
  <a href="../" class="cta-button">View Upcoming Hackathons</a>
  <a href="../../blog/hackathons-real-world-learning/" class="cta-button">Why Hackathons Work</a>
</div>

