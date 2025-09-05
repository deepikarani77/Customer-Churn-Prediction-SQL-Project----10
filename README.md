✨ **Excited to share my latest project!** ✨
  
**Customer Churn Prediction SQL Project using Stored Procedures, Triggers & Database Programming**

🚀 **Problem Statement**

-	Customer churn is a critical problem for subscription-based businesses. Losing customers means revenue loss. Companies need real-time systems to track customer activities, automate actions, and analyze churn behavior.

🚀 **Solution**

-	I designed a normalized SQL database for churn prediction, then use stored procedures, triggers, loops, conditional statements, error handling, and cursors to:
-	Automate churn alerts
-	Track updates
-	Enforce business rules
-	Run predictive queries
  
🚀 **concepts used in this project**.

1.	Stored procedure and triggers in SQL
2.	advantages and working 
3.	Statements
4.	compound 
5.	conditional 
6.	if , if then , if then else, if then else if else 
7.	case, simple case, searched case 
8.	Loop statement 
9.	while, repeat , leave 
10.	Using leave with 
11.	stored procedure 
12.	loop statements
13.	Error handling in stored procedures
14.	raising errors 
15.	Cursors in stored procedures 
16.	steps to use cursors 
17.	Stored functions in stored procedures 
18.	Stored program security 
19.	SQL trigger 
20.	Terminating stored procedure and loops
-	Leave statement with stored procedure
-	Leave with loop statement
-	Leave with while loop
-	Leave with repeat loop
21.	Stored functions in stored procedure

🚀 **Goal**: 

-	Build an automated SQL-based churn management system where churn analysis is not just done by queries, but by real-time SQL programs (procedures, triggers, functions) to increase customer retention.


🚀 **What I learnt**?

-	Database: MySQL 8+
-	Tools: MySQL Workbench / phpMyAdmin
-	Dataset: Customer Churn Data (customers, contracts, services, churn status)

🚀 **What is impact**?

-	Stored Procedures
-	Triggers
-	Control Statements (IF, CASE, WHILE, REPEAT, LOOP)
-	Error Handling & Raising Errors
-	Cursors
-	Stored Functions
-	Security in Stored Programs


🚀 **Key Skills Used**

-	Database Normalization
-	Writing complex SQL stored programs
-	Error handling in SQL
-	Real-time event automation with triggers
-	Using cursors & loops for churn reports
-	Applying SQL conditions (if, case, while, repeat, leave)
-	Stored function integration in procedures

🚀 **What I Did in this Project**?
 	
-	Designed a normalized customer churn database
-	Created stored procedures for churn prediction
-	Built triggers for real-time churn tracking
-	Used cursors, loops, conditions, case statements for reports
-	Implemented error handling & stored functions

🚀 **What I Learnt**?
   
-	Writing stored procedures, triggers, and functions in SQL
-	Handling real-time automation using SQL programming
-	Importance of conditional, looping, and error-handling in procedures
-	Building production-ready SQL programs
  
🚀 **What is Impact** ?
 	
-	Businesses can predict churn automatically
-	Reduced manual monitoring (triggers do it in real-time)
-	Improved retention strategies with customer segments
-	Error handling ensures system stability
-	Professional SQL skills → makes you job-ready as a Data Scientist with SQL expertise

🚀 **Skills**
   
-	SQL Stored Procedures
-	SQL Triggers
-	Cursors & Error Handling
-	SQL Programming Logic
-	Customer Churn Analytics

**#SQLProject #CustomerChurn #StoredProcedures #SQLTriggers #DataScienceSQL #MySQL #DatabaseNormalization #SQLAutomation #Cursors #ErrorHandling #ChurnPrediction #FresherDataScientist #JobReadySkills**
















**Stored procedure and triggers in SQL**

<img width="507" height="268" alt="1" src="https://github.com/user-attachments/assets/ccdb12d7-f95a-4e19-bcc7-09b5d2d5443e" />
<img width="1249" height="854" alt="2" src="https://github.com/user-attachments/assets/cc1f87c7-cefb-4aa0-8ee6-a5a9c77fbd64" />
<img width="1229" height="761" alt="3" src="https://github.com/user-attachments/assets/3774db70-36b3-4468-93e4-a99fbfcb726f" />
<img width="547" height="586" alt="4" src="https://github.com/user-attachments/assets/620c64f7-2aec-49ac-b3ea-c60db8781483" />
<img width="634" height="491" alt="5" src="https://github.com/user-attachments/assets/45e04636-8845-4cc2-87df-452a647a8217" />
<img width="809" height="276" alt="6" src="https://github.com/user-attachments/assets/886cf8eb-982f-40aa-bdca-1f0c3c57f2a1" />
<img width="1024" height="1536" alt="7" src="https://github.com/user-attachments/assets/4a4a7131-3fa9-425b-a476-c2c7e10bc1ec" />
<img width="1024" height="1536" alt="8" src="https://github.com/user-attachments/assets/131bfc3d-7ad5-4bdb-8ab7-8a5e91bcfb57" />
<img width="1220" height="723" alt="9" src="https://github.com/user-attachments/assets/10a4e6ff-a5f1-4f9e-9ea4-3229915cf0db" />
<img width="658" height="242" alt="10" src="https://github.com/user-attachments/assets/052e0052-0f66-442c-ab15-5acaa04055a3" />
<img width="1096" height="852" alt="11" src="https://github.com/user-attachments/assets/971b456f-77bf-4716-93ac-ba5be87430d8" />
<img width="639" height="236" alt="12 1" src="https://github.com/user-attachments/assets/73a7d799-1f37-43a3-98bb-f4a885b75ca6" />
<img width="1017" height="815" alt="12" src="https://github.com/user-attachments/assets/39006b8d-a178-41a8-92e8-be2d5a251d42" />
<img width="1536" height="1024" alt="13" src="https://github.com/user-attachments/assets/2815bb70-8477-4fd3-b989-9c02b7bfa37d" />
<img width="993" height="731" alt="14" src="https://github.com/user-attachments/assets/d2db5c8e-c482-4a3d-99ea-aea0ad9f6d4c" />
<img width="1277" height="656" alt="15" src="https://github.com/user-attachments/assets/568aa623-9c76-4b7d-b289-c58a47acda2e" />
<img width="463" height="165" alt="16" src="https://github.com/user-attachments/assets/4806e6d8-8692-4952-8136-83f04df83027" />
<img width="1381" height="762" alt="17" src="https://github.com/user-attachments/assets/b853c26e-a2f1-419f-9d0c-56bf72855964" />
<img width="1390" height="828" alt="18" src="https://github.com/user-attachments/assets/15217c54-7beb-43cf-9dc2-b8d6024d1915" />
<img width="825" height="304" alt="19" src="https://github.com/user-attachments/assets/9f91223f-fe53-4a60-a497-de206bc89d04" />
<img width="1356" height="784" alt="20" src="https://github.com/user-attachments/assets/01854172-5f97-4d72-af23-cc4f9c6bf2a6" />
<img width="1273" height="789" alt="21" src="https://github.com/user-attachments/assets/9348c0f2-bc73-4a75-9970-133aad69e63e" />
<img width="1373" height="774" alt="22" src="https://github.com/user-attachments/assets/fa03df0a-c3cc-4dfd-957b-4fad34649861" />
<img width="613" height="186" alt="23" src="https://github.com/user-attachments/assets/ad15a9d7-4648-4f5a-b9ed-6033f0124458" />
<img width="1170" height="749" alt="24" src="https://github.com/user-attachments/assets/c40cb0a5-bad1-431e-8c22-15ef530dfda3" />
<img width="1494" height="794" alt="25" src="https://github.com/user-attachments/assets/14b6d731-2d6f-40de-b4f7-c115e93a726f" />
<img width="1536" height="1024" alt="26" src="https://github.com/user-attachments/assets/91b57337-6af1-4441-a2d4-b7119c0fc7ae" />
<img width="844" height="247" alt="ER Diagram Explaination" src="https://github.com/user-attachments/assets/6b1b3b63-33a0-4a90-8acf-c3ea841687e2" />
<img width="522" height="316" alt="steps to use a cursor in mysql stored procedure" src="https://github.com/user-attachments/assets/6945013c-a05d-4ce3-a4fb-13996b651429" />
<img width="692" height="508" alt="trigger function" src="https://github.com/user-attachments/assets/e63d42d9-6c7e-49b7-8f24-1e05976150ad" />
