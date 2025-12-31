# 📊 Data Analytics Assignment: FoodExpress Platform

A comprehensive data analytics project analyzing food delivery platform performance, customer behavior, and operational efficiency through Python fundamentals, data cleaning, visualization, and statistical testing.

---

## 📋 Project Overview

This assignment demonstrates end-to-end data analysis workflow including:
- **Python Fundamentals**: Loops, conditionals, and function implementation
- **Data Cleaning & Reshaping**: Handling missing values, outliers, and data type conversions
- **Data Visualization**: Bar charts, histograms, pie charts, scatter plots, boxplots, and line trends
- **Statistical Analysis**: T-tests, Chi-square tests, correlation analysis, and ANOVA
- **Business Insights**: Actionable recommendations based on data findings

**Dataset**: FoodExpress platform delivery orders with customer, restaurant, and performance metrics

---

## 📂 Repository Structure

```
stat_assignment_2/
├── README.md                                           # Project documentation
├── requirements.txt                                    # Python dependencies
├── .gitignore                                          # Git ignore rules
├── run_analysis.ps1                                    # PowerShell setup script
├── Data_Analytics_Assignment_FoodExpress_Platform.ipynb # Main analysis notebook
├── foodexpress_data_uncleaned - foodexpress_data_uncleaned.csv # Raw dataset
└── Output/                                             # Generated visualizations & results
```

---

## 🎯 Project Sections

### **Section 1: Python Fundamentals (3 Questions)**

Demonstrates core Python programming concepts:

1. **Python Loops: Total Revenue Calculation**
   - Calculate aggregate revenue using iterative loops
   - Learns: Loop structures and accumulation patterns

2. **Python Conditionals: Premium Delivery Identifier**
   - Identify premium deliveries based on fee and time thresholds
   - Learns: If-else logic and conditional filtering

3. **Python Functions: Average Order Value by Cuisine**
   - Compute average spending per cuisine type
   - Learns: Function definitions, filtering, and aggregation

---

### **Section 2: Data Cleaning & Reshaping (7 Questions)**

Prepare raw data for analysis:

1. **Handle Missing Values**
   - Impute numeric columns with mean values
   - Impute categorical columns with mode values
   - Validates data completeness

2. **Replace Unclean Data**
   - Identify and replace invalid outlier values (e.g., 99999 in DeliveryTime)
   - Use median replacement for data continuity

3. **Clean String Values**
   - Convert string ratings to numeric format
   - Handle missing values in critical columns

4. **Fix Data Types**
   - Convert OrderDate to datetime format
   - Cast numeric columns to float for calculations
   - Verify type conversions

5. **Remove Outliers**
   - Detect outliers using 99th percentile and minimum thresholds
   - Remove anomalous rows to improve data quality
   - Report removed row count

6. **Reshape Data Using Melt**
   - Transform wide payment columns (Cash, Card, Wallet, UPI) to long format
   - Filter active payment records
   - Prepares data for payment method analysis

7. **Feature Engineering: Net Revenue**
   - Calculate restaurant commission (20% of order value)
   - Compute net revenue after discounts and commissions
   - Identify highest revenue cities

---

### **Section 3: Data Visualization (6 Questions)**

Create insightful visual representations:

1. **Bar Chart: Total Orders by Cuisine Type**
   - Shows order distribution across cuisine categories
   - Identifies popular cuisine types

2. **Histogram: Delivery Time Distribution**
   - Displays delivery time frequency distribution
   - Shows mean (blue line) and median (red dashed line)
   - Highlights central tendency and spread

3. **Pie Chart: Customer Segment Proportion**
   - Visualizes customer segment distribution (VIP vs. Regular)
   - Shows percentage composition

4. **Scatterplot: Order Value vs. Delivery Time**
   - Explores relationship between spending and delivery speed
   - Includes trend line for correlation visualization
   - Color-coded by customer segment

5. **Boxplot: Delivery Time by City**
   - Compares delivery performance across zones
   - Shows quartiles, median, and outliers per city
   - Identifies geographic variations

6. **Line Chart: Daily Order Trends**
   - Tracks order volume over time by cuisine type
   - Interactive Plotly visualization
   - Reveals seasonal and trend patterns

---

### **Section 4: Statistical Testing (10 Questions)**

#### **T-Tests**

1. **Independent Samples T-Test: Premium vs. Regular Customers**
   - Tests if VIP customers rate orders differently than regular customers
   - H₀: No significant difference in ratings
   - Visualization: Boxplot comparison by segment

2. **One-Sample T-Test: Delivery Time Target**
   - Tests if North Zone average delivery time equals 30 minutes target
   - H₀: Mean delivery time = 30 minutes
   - Decision rule: α = 0.05

#### **Chi-Square Tests**

3. **Chi-Square Test of Independence: Payment Method × Customer Segment**
   - Tests association between payment method and customer type
   - Contingency table analysis
   - Expected vs. observed frequency comparison

4. **Chi-Square Goodness of Fit: Cuisine Distribution**
   - Tests if cuisine orders follow uniform distribution (20% each)
   - Compares observed vs. expected frequencies
   - Validates fair cuisine representation

#### **Correlation Analysis**

5. **Correlation Analysis: Order Value, Delivery Time, and Ratings**
   - Pearson correlation coefficients between:
     - Order Value ↔ Customer Rating
     - Delivery Time ↔ Customer Rating
     - Order Value ↔ Delivery Time
   - Heatmap visualization
   - Linear regression plots with confidence intervals

6. **Multiple Correlation: Restaurant Rating Prediction**
   - Correlates RestaurantRating with:
     - OrderValue
     - DeliveryTime
     - DiscountAmount
   - Identifies strongest predictor
   - Visualizes key relationships

#### **ANOVA Tests**

7. **One-Way ANOVA: Delivery Time Across Cities**
   - Tests if mean delivery times differ significantly across zones
   - Tukey HSD post-hoc test for pairwise comparisons
   - Boxplot visualization by city

#### **Paired T-Tests**

8. **Paired T-Test: Weekend vs. Weekday Performance**
   - Tests if delivery times differ between weekdays and weekends (same restaurant)
   - Paired analysis at restaurant level
   - Visualization: Partner-wise delivery time changes

9. **Paired T-Test: Before-After Promotional Campaign**
   - Tests if campaign increased average order values (Week 1 vs. Week 3)
   - Paired differences analysis
   - Visualization: Restaurant-level order value trends

---

## 💡 Key Findings & Insights

### **1️⃣ Customer Satisfaction Is Service-Driven, Not Price-Driven**
- **Finding**: No strong relationship between Order Value/Discount and Customer Rating
- **Insight**: 👉 Focus on service quality and delivery experience, not just discounts

### **2️⃣ Delivery Time Is the Most Critical Factor**
- **Finding**: Negative correlation between Delivery Time and Customer Rating
- **Insight**: 👉 Fast, reliable delivery is the #1 driver of customer satisfaction

### **3️⃣ High Order Value Does Not Cause Delays**
- **Finding**: Almost zero correlation between Order Value and Delivery Time
- **Insight**: 👉 Logistics management can handle large orders efficiently

### **4️⃣ Discounts Boost Sales, Not Loyalty**
- **Finding**: Strong correlation (Discount ↔ Order Value), weak correlation (Discount ↔ Rating)
- **Insight**: 👉 Discounts increase short-term sales but not customer loyalty

### **5️⃣ Delivery Issues Are Case-Specific, Not Geographic**
- **Finding**: Similar average delivery times across all cities; outliers exist in every zone
- **Insight**: 👉 Operational failures are isolated cases, not systematic by location

### **6️⃣ Weekend Operations Face Higher Pressure**
- **Finding**: Paired t-test shows significantly higher delivery times on weekends
- **Insight**: 👉 Increase delivery capacity on weekends (more riders/shifts)

### **7️⃣ Promotional Campaigns Require Personalization**
- **Finding**: Same campaign improved values for some restaurants but decreased for others
- **Insight**: 👉 One-size-fits-all strategies fail; implement restaurant-specific campaigns

### **8️⃣ Overall Business Recommendations**

**Priority Improvements:**
✔ Delivery speed optimization  
✔ Weekend capacity planning  
✔ Enhanced VIP customer experience  
✔ Targeted, data-driven promotions  

**Final Insight:**
> "Customer happiness is driven more by fast, reliable service than by discounts or high spending."

---

## 🛠️ Setup & Installation

### **Prerequisites**
- Windows (tested) with PowerShell
- Python 3.9+ installed and on PATH
- Git (optional, for version control)

### **Quick Setup (Recommended)**

Open PowerShell in the project folder and run:

```powershell
.\run_analysis.ps1
```

This will:
1. Create a virtual environment (`.venv`)
2. Install all dependencies from `requirements.txt`
3. Launch Jupyter Notebook with the analysis

### **Manual Setup**

1. **Create and activate virtual environment:**
```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
```

2. **Install dependencies:**
```powershell
pip install -r requirements.txt
```

3. **Launch Jupyter Notebook:**
```powershell
jupyter notebook "Data_Analytics_Assignment_FoodExpress_Platform.ipynb"
```

---

## 📦 Dependencies

Core packages used in the analysis:

| Package | Purpose |
|---------|---------|
| `pandas` | Data manipulation and analysis |
| `numpy` | Numerical computing |
| `matplotlib` | Static visualizations |
| `seaborn` | Statistical data visualization |
| `plotly` | Interactive visualizations |
| `scipy` | Statistical tests (t-test, chi-square, etc.) |
| `scikit-learn` | Machine learning utilities |
| `statsmodels` | Advanced statistical modeling (ANOVA, regression) |
| `jupyter` | Notebook environment |

See `requirements.txt` for complete dependency list.

---

## 📊 Dataset Information

**File**: `foodexpress_data_uncleaned - foodexpress_data_uncleaned.csv`

**Key Columns**:
- `OrderID`: Unique order identifier
- `OrderDate`: Date of order
- `OrderValue`: Total order amount
- `DeliveryTime`: Time to deliver (minutes)
- `DeliveryFee`: Delivery charge
- `CustomerRating`: Customer satisfaction rating
- `CustomerSegment`: VIP or Regular Customer
- `RestaurantRating`: Restaurant quality rating
- `CuisineType`: Type of cuisine
- `City`: Delivery location
- `CashPayment`, `CardPayment`, `WalletPayment`, `UPIPayment`: Payment method breakdown
- `DiscountAmount`, `PromoDiscount`: Discount details
- `TipAmount`: Customer tip

---

## 📝 Notebook Structure

The Jupyter notebook is organized into clear sections:

1. **Imports & Configuration** - Library setup and warnings suppression
2. **Data Loading** - Read CSV and initial exploration
3. **Section 1** - Python fundamentals (3 questions)
4. **Section 2** - Data exploration and cleaning (7 questions)
5. **Section 3** - Visualizations (6 questions)
6. **Section 4** - Statistical testing (10 questions)
7. **Insights** - Summary of findings and business recommendations

Each section includes:
- Clear markdown headers
- Code implementation
- Output interpretation
- Visualizations where applicable

---

## 🚀 Running the Analysis

### **Option 1: PowerShell Script (Fastest)**
```powershell
cd "e:\DS and ML\Statistics\stat_assignment_2"
.\run_analysis.ps1
```

### **Option 2: Manual Jupyter**
```powershell
cd "e:\DS and ML\Statistics\stat_assignment_2"
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
jupyter notebook "Data_Analytics_Assignment_FoodExpress_Platform.ipynb"
```

### **Option 3: VSCode Jupyter Extension**
1. Open the `.ipynb` file in VSCode
2. Select kernel (Python 3.x)
3. Run cells individually or all at once

---

## ⚙️ Troubleshooting

| Issue | Solution |
|-------|----------|
| CSV file not found | Ensure `foodexpress_data_uncleaned - foodexpress_data_uncleaned.csv` is in project root |
| `ModuleNotFoundError` | Activate venv: `.\.venv\Scripts\Activate.ps1` and reinstall: `pip install -r requirements.txt` |
| Jupyter not opening | Run `jupyter notebook --no-browser --ip=127.0.0.1` and open provided URL |
| Pip installation fails | Upgrade pip: `python -m pip install --upgrade pip` then retry |
| Permission denied on script | Run PowerShell as Administrator or: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser` |

---

## 📂 Output Files

Generated during analysis:
- Visualizations saved in `Output/` folder
- Statistical test results printed to console
- Summary insights in final notebook cells

---

## 🔗 Git & GitHub

Repository: https://github.com/MuhammadOmar73/Data_Analytics_Assignment_FoodExpress_Platform

**Git Commands**:
```bash
# Clone repository
git clone https://github.com/MuhammadOmar73/Data_Analytics_Assignment_FoodExpress_Platform.git

# Update local repo
git pull origin main

# Create new branch for changes
git checkout -b feature/your-feature

# Commit and push
git add .
git commit -m "Your message"
git push origin main
```

---

## 📚 Learning Outcomes

By completing this assignment, you will master:

✅ **Python Programming**: Loops, conditionals, functions  
✅ **Data Cleaning**: Handling missing values, outliers, type conversions  
✅ **Data Visualization**: Creating meaningful charts and plots  
✅ **Statistical Testing**: T-tests, Chi-square, correlation, ANOVA  
✅ **Data Analysis**: Extracting insights and business recommendations  
✅ **Documentation**: Clear project documentation and README  
✅ **Version Control**: Git workflow and GitHub collaboration  

---

## 📧 Support & Questions

For issues, enhancements, or questions:
1. Check the **Troubleshooting** section above
2. Review notebook comments and markdown explanations
3. Consult pandas/scipy documentation
4. Open a GitHub issue in the repository

---

## 📄 License

This assignment is for educational purposes. Data is anonymized and for learning only.

---

## ✅ Checklist for Completion

- [x] Python fundamentals implemented (3 questions)
- [x] Data cleaning completed (7 questions)
- [x] Visualizations created (6 questions)
- [x] Statistical tests performed (10 questions)
- [x] Insights documented
- [x] README.md prepared
- [x] requirements.txt created
- [x] .gitignore configured
- [x] run_analysis.ps1 script provided
- [x] Code pushed to GitHub

---

**Last Updated**: December 31, 2025  
**Status**: ✅ Complete & Ready for Review

