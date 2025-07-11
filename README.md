# ⚾🌍 World Happiness and Baseball Analysis

This project investigates two distinct datasets — the **World Happiness Report** and **Baseball Stats** — with the objective of exploring trends, relationships, and predictions using R programming. The project includes multiple modules that incrementally build insights through descriptive statistics, visualizations, correlation matrices, regression modeling, and prediction.

---

## 🧱 Project Milestones

### 📊 Milestone 1: Descriptive Statistics and Correlation Analysis

**Objective:** Summarize data and assess inter-variable relationships.

#### World Happiness Dataset:
- Variables analyzed include: GDP per capita, Social Support, Healthy Life Expectancy, Freedom, and Happiness Score.
- Calculated:
  - Summary statistics (mean, median, range).
  - Correlation matrix using `corrplot` to visualize variable relationships.
- Insight:
  - Strong positive correlation between **GDP per capita** and **Happiness Score**.
  - Moderate correlation observed with **Social Support** and **Life Expectancy**.

#### Baseball Dataset:
- Analyzed attributes like team wins, batting average, home runs, and strikeouts.
- Found:
  - Positive relationship between **team wins** and **batting average**.
  - Negative correlation between **strikeouts** and **wins**.

---

### 🧪 Milestone 2: Linear Regression Modeling

#### Objective: Build regression models to predict key outcomes.

##### 📈 World Happiness:
- Response variable: **Happiness Score**
- Predictors: GDP per capita, Social Support, Healthy Life Expectancy, Freedom.
- Model summary:
  - Adjusted R² ≈ 0.75
  - GDP per capita emerged as the strongest predictor (p-value < 0.001).
- Diagnostic plots:
  - Residuals vs Fitted: no major heteroscedasticity.
  - QQ plot: residuals are approximately normally distributed.

##### ⚾ Baseball:
- Response variable: **Team Wins**
- Predictors: Batting Average, Home Runs, Strikeouts.
- Model summary:
  - Adjusted R² ≈ 0.68
  - Batting average had significant predictive power.
- Visualization:
  - Residual plots and leverage points analyzed for influential observations.

---

### 🧠 Final Report: Model Evaluation, Refinement & Prediction

#### Combined Insights:
- Used backward elimination and adjusted R² to optimize model.
- Considered interaction terms and polynomial transformations where necessary.
- Compared multiple models and selected the most parsimonious.

#### Prediction:
- Predicted happiness score for a hypothetical country with known GDP and social factors.
- Predicted baseball team performance given key offensive metrics.

#### Key Takeaways:
- **GDP per capita** is the single most impactful variable for predicting happiness.
- **Batting average** is the best predictor of team wins in baseball.

---

## 🖼️ Visuals & Results

📊 _Refer to included R outputs and plots for:_
- Correlation heatmaps
- Residual and QQ plots
- Regression model summaries
- Prediction results

---
## 🔮 Future Scope

- Use more advanced models like Ridge/Lasso regression.
- Add time series analysis for year-over-year trends.
- Merge datasets for cross-domain insights (e.g., national sports success vs. citizen happiness).

---

## 🧠 Author

**Mohammed Saif Wasay**  
*Data Analytics Graduate — Northeastern University*  
*Machine Learning Enthusiast | Passionate about turning data into insights*

🔗 [Connect with me on LinkedIn](https://www.linkedin.com/in/mohammed-saif-wasay-4b3b64199/)


