# 📞 Telecaller Employee Performance Dashboard

A Microsoft Excel dashboard project that analyses telecaller performance across three reporting leads: NOP conversion, Wat volume, inactivity, monthly trends and new-joiner activation.

**Tracking period:** 25 Aug 2026 – 13 Nov 2026 (81 days)
**Tools:** Microsoft Excel (formulas, KPI cards, dashboard formatting)
**Presented by:** Asrarul Haque

---

## 🖼️ Dashboard Preview

### Excel Dashboard (`Analysis_Dashboard` sheet)

![Excel Dashboard](Excel_Dashboard.png)

### Visual Analytics Dashboard

![Telecaller Dashboard](Telecaller_Dashboard.png)

---

## 📌 Project Overview

Telecaller data (NOP dates, Wat amounts, last pickup dates) sits in many columns of one roster sheet, which makes review slow. This dashboard brings everything into one place so sales leadership can instantly see:

- Who the top performers are
- Which telecallers are inactive or at risk
- How each reporting lead's team is performing
- How new joiners are progressing

## 🎯 Objectives

- Track total NOPs and Wat volume
- Compare reporting-lead teams by volume share
- Identify top telecallers and defaulters
- Analyse month-wise performance
- Measure NOP progression from 1st to 4th NOP
- Monitor inactivity (Zero Days) and tenure-wise activation

## 📂 Dataset

The roster sheet (`Imran_Team`) contains these columns:

| Column | Description |
|---|---|
| Login ID, Name | Telecaller identity |
| DOJ | Date of joining |
| 1st / 2nd Reporting Lead | Direct reporting leads |
| Asst. Manager, Manager, Team Head | Reporting hierarchy |
| Last NOP Date | Base date before tracking |
| 1st–4th NOP Date and Wat | Date and amount (₹) of each NOP |
| Total NOP, Total NOP Wat | Total deals and volume |
| MIS Date, Last Pickup Date | Used to calculate inactivity |
| Zero Days | Days since last pickup |

**Data cleaning steps**

- Blank NOP dates and amounts treated as "no NOP yet"
- Totals verified: 17 NOPs and ₹1,910,000 tie to the roster
- Zero Days rechecked as MIS date minus last pickup date
- Telecallers grouped by 1st Reporting Lead
- Day gaps calculated between 1st, 2nd, 3rd and 4th NOP

## 📊 Key Performance Indicators

| KPI | Value |
|---|---|
| Total Telecallers | 11 |
| Total NOP | 17 |
| Total Wat Volume | ₹1,910,000 |
| Avg Volume per NOP | ₹112,353 |
| Avg Inactivity | 21.7 days |
| Active Caller Ratio | 82% (9 of 11) |

## 📐 Metric Definitions

- **NOP:** One converted unit (deal)
- **Wat Volume:** Gross value in ₹ of all NOPs closed
- **Zero Days:** Days since last pickup, counted up to the MIS date (13 Nov 2026)
- **Top Telecaller:** High NOP with Zero Days of 10 or less
- **Defaulter:** Zero NOPs, or Zero Days above 30
- **Stage Adoption:** Callers with at least n NOPs ÷ total telecallers

## 🔍 Key Insights

1. **Total volume** is ₹1,910,000 from 17 NOPs (avg ₹112,353 per NOP).
2. **October is the peak month:** 11 NOPs and ₹1,210,000, which is 63% of all volume.
3. **Volume is concentrated:** one caller gives 25.7% of volume, and the top 4 callers give 63%.
4. **Repeat conversion is the gap:** adoption falls 82% → 55% → 9% from 1st to 3rd NOP.
5. **Mid-tenure callers (2–3.5 months)** give 62% of volume, with all 5 active.
6. **Inactivity is spreading:** 8 of 11 callers are quiet for 11+ days, and 2 new joiners still have 0 NOPs after 44 days.

### Reporting lead summary

| Reporting Lead | Callers | NOPs | Volume (₹) | Share |
|---|---|---|---|---|
| Nikhil | 5 | 8 | 890,000 | 46.6% |
| Gautam Sunny Babulal | 3 | 5 | 600,000 | 31.4% |
| Alok | 3 | 4 | 420,000 | 22.0% |

### Monthly summary

| Month | NOPs | Volume (₹) | Note |
|---|---|---|---|
| Aug 2026 | 0 | 0 | Partial: tracking starts 25 Aug |
| Sep 2026 | 3 | 260,000 | First full month |
| Oct 2026 | 11 | 1,210,000 | Peak month |
| Nov 2026 | 3 | 440,000 | Partial: data up to 13 Nov |

### NOP stage progression

| Stage | Callers | Adoption | Avg Days from Previous Stage |
|---|---|---|---|
| 1st NOP | 9 of 11 | 82% | 46.1 (from base date) |
| 2nd NOP | 6 of 11 | 55% | 18.8 |
| 3rd NOP | 1 of 11 | 9% | 11.0 |
| 4th NOP | 1 of 11 | 9% | 28.0 |

## ✅ Business Recommendations

- Coach zero-NOP callers with call shadowing and 1-on-1 reviews
- Re-activate the watch list (callers 11–30 days inactive) with weekly check-ins
- Share the top performer's playbook through peer sessions
- Reduce reliance on a single caller within a team
- Set an inactivity alert at 10+ zero days
- Review the dashboard weekly with all reporting leads

## 🛠️ Excel Features Used

Formulas • KPI cards • Conditional formatting • Cell linking • Dashboard layout

All metrics use live formulas, so the dashboard updates automatically when the roster changes.

## ⚠️ Challenges Faced

- Partial months (August from 25 Aug, November up to 13 Nov)
- Small sample size (11 callers), so 3rd/4th NOP data comes from one person
- Blank cells for callers with no NOP yet
- Keeping formula ranges correct as the roster grows

## 🚀 Future Improvements

- Pivot Tables, Pivot Charts and Slicers
- Excel Tables so ranges expand automatically
- Power Query automation
- Target vs achievement tracking
- Call-level metrics and product-wise analysis
- Power BI version

## 📁 Repository Structure

```
├── README.md
├── Telecaller_Employee_Performance.xlsx        # Roster data + Excel dashboard
├── Telecaller_Employee_Performance.pdf         # PDF version
├── Telecaller_Performance_Dashboard.pptx       # Presentation (17 slides)
├── Excel_Dashboard.png                         # Excel dashboard screenshot
└── Telecaller_Dashboard.png                    # Visual analytics dashboard
```

## ▶️ How to Use

1. Download or clone this repository.
2. Open `Telecaller_Employee_Performance.xlsx` in Microsoft Excel.
3. Add or update records in the roster sheet (`Imran_Team`).
4. The `Analysis_Dashboard` sheet refreshes automatically.

## 👤 Author

**Asrarul Haque**
Excel Dashboard Project • Telecaller Performance Analysis

[![GitHub](https://img.shields.io/badge/GitHub-Asrarul320-black?logo=github)](https://github.com/Asrarul320)

---

⭐ If you found this project useful, please give it a star!
