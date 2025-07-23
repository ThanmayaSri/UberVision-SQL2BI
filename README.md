# 🚗 UberVision-SQL2B

An end-to-end project analyzing over **4.5 million Uber rides** using SQL and Power BI. This repo brings together raw data, SQL transformation logic, and a polished interactive dashboard.

---

## 📁 Repository Structure

```
UberVision-SQL2B/
├── data/
│   └── ubercsv/               # Monthly Uber ride CSVs from Kaggle
├── queries/
│   └── uber.sql               # Cleaned and aggregated SQL queries
├── dashboard/
│   └── Uber_Analysis.pbix    # Power BI file with bookmarks, slicers, maps, and visuals
└── README.md                  # This file
```

---

## 📊 Dashboard Highlights

- **Dynamic Navigation** using buttons + bookmarks (Page 1: Maps, Page 2: Trends)
- **Interactive Filters** with slicers for day, hour, base station
- **Geospatial Heatmaps** showing pickup intensity by location
- **Hourly & Weekly Trends** from SQL aggregates
- **Clean design**, bold color contrasts, and compact visuals

📽️ **Demo video** (hosted externally): [View in Google Drive]([https://drive.google.com/file/d/1QlMDINZJAbRUXR97PYPN6mcCu7c7wYzG/view?usp=sharing])

---

## 🧠 SQL Logic (in 'uber.sql')

Includes:
- Unioning all monthly CSVs
- Converting timestamp columns
- Extracting day of week, hour, month
- Grouping and aggregating for time-based trends
- Outputting clean datasets for Power BI

---

## 📦 Dataset
Downloaded from Kaggle:
> [Uber Pickups in New York City (2014)](https://www.kaggle.com/datasets/fivethirtyeight/uber-pickups-in-new-york-city)

---

## 🚀 Run It Yourself
1. Clone the repo
2. Import the SQL file into MySQL (or your DB tool)
3. Load `Uber_Dashboard.pbix` into Power BI Desktop
4. Explore, interact, and play with bookmarks/slicers
