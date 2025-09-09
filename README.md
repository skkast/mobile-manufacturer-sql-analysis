# 📱 Mobile Manufacturer Data Analysis – Advanced SQL Case Study  

## 📌 Project Description  
This project is an **Advanced SQL Case Study** based on a fictional database **“Cellphones Information”**, which stores details about cell phone transactions.  
The database includes the following tables:  

- **Dim_Manufacturer** – Cell phone manufacturers  
- **Dim_Model** – Cell phone models  
- **Dim_Customer** – Customer information  
- **Dim_Location** – Customer locations  
- **Fact_Transactions** – Transactional data (sales details)  

The objective is to **design the schema** and answer **10 real-world business questions** using advanced SQL concepts.  

---

## 🧾 Business Questions Answered  

1. List all the states in which we have customers who have bought cellphones from 2005 till today.  
2. Which state in the US is buying the most *Samsung* cell phones?  
3. Show the number of transactions for each model per zip code per state.  
4. Show the cheapest cellphone (including price).  
5. Find the average price for each model in the **top 5 manufacturers by sales quantity**, ordered by average price.  
6. List customers and their **average spend in 2009**, where the average is higher than 500.  
7. Identify if any model was in the **top 5 by quantity simultaneously in 2008, 2009, and 2010**.  
8. Show the manufacturer with the **2nd highest sales in 2009** and the manufacturer with the **2nd highest sales in 2010**.  
9. Show manufacturers that sold cellphones in 2010 but **did not sell in 2009**.  
10. Find the **top 100 customers** and their **average spend & quantity by year**, along with the **% change in spend**.  

---

## 🔑 Key Features  

- Designed a **relational database schema** based on the case study  
- Wrote **10 advanced SQL queries** covering:  
  - Aggregations & Joins  
  - Subqueries  
  - Ranking functions  
  - Year-over-year analysis  
- Ensured compliance with case study rules (BEGIN/END markers, single table output, answer template format)  

---

## 🛠️ Technologies Used  
- **SQL (MySQL / PostgreSQL)** – Query writing and execution  
- **Relational Database Concepts** – Schema design and normalization  
- **SQL Functions** – Aggregates, Joins, Subqueries, Ranking, Window functions  
- **PDF/Case Study Guide** – Provided by AnalytixLabs  

---

## 📂 Folder Structure  
📂 mobile-manufacturer-sql-analysis  
├── README.md # Project documentation  
├── schema.sql # Database creation script  
├── queries.sql # Answers to the 10 business questions  
└── case_study.pdf # Original case study (reference)  

---

## 🚀 How to Run  

1. Create the database using `schema.sql`  
2. Insert sample data (if provided)  
3. Run `queries.sql` to get insights for each business question
---

## 👤 Author  

**Pranjal Kastwar**  
📧 Email: pranjalkastwar12@gmail.com  
🔗 LinkedIn: [linkedin.com/in/pranjal-kastwar-82b846177](https://www.linkedin.com/in/pranjal-kastwar-82b846177)  
🌐 GitHub: [github.com/skkast](https://github.com/skkast)  
🎓 Certified Data Analyst – AnalytixLabs 
