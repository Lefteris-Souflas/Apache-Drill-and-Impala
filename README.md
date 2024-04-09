# Apache Drill and Impala Assignment

## Task 1 [25 points]
Among Hive, Impala, and Drill, which one implements the concept of data virtualization more precisely? Elaborate.

## Task 2 [25 points]
You've joined a large bookstore company with diverse data formats: client data in MongoDB, e-books on HDFS, and social media metadata in Hive. They seek to simplify queries for UI elements. What solution would you suggest? Elaborate.

## Task 3 [40 points]
Your client has an Impala database and wants a new database with a specific schema:

![Screenshot 2024-04-09 182509](https://github.com/Lefteris-Souflas/Apache-Drill-and-Impala/assets/143879796/a58bcc70-fba0-4973-8275-dabc6ba878b3)

- 3a) Create the Impala database & required tables.
- 3b) Provide a command to insert an entry into the Student table.
- 3c) Write a statement to retrieve the names of students who attended "Artificial Intelligence" course during "2021-2022".
- 3d) Write a statement to retrieve course titles and average grades for courses with average student grades below 6.

## Task 4 [10 points]
A query in the Impala database is too slow. Describe your approach to investigate and improve efficiency. Provide relevant commands.


## Assignment Submission Requirements

To successfully submit this assignment, **Cloudera Quickstart VM** running on Red Hat Linux was utilized.

![cloudera-quickstart-vm](https://github.com/Lefteris-Souflas/Apache-Drill-and-Impala/assets/143879796/3b4df4f9-0775-41d0-9cba-cf6c8d30f567)

### Data Virtualization and Query Performance Optimization Report

In this comprehensive report, we delve into the realm of data virtualization within the domain of big data analytics, with a particular focus on comparing the capabilities of three prominent tools: Apache Drill, Hive, and Impala.

**Apache Drill: Leading the Data Virtualization Frontier**
Apache Drill emerges as the frontrunner in implementing data virtualization with precision. Unlike its counterparts, Hive and Impala, Apache Drill boasts a schema-on-read feature. This allows users to seamlessly query and analyze data from diverse sources without prior knowledge of its format or physical location.

**Practical Application: Task 2**
Task 2 of the report illustrates a real-world application of Apache Drill within a large bookstore company. By leveraging Apache Drill, the company can streamline queries, amplify data analytics capabilities, and circumvent the need for convoluted ETL processes. The adoption of Apache Drill promises to simplify operations and expedite decision-making processes.

**Task 3: Creating Impala Databases**
Task 3 provides detailed steps for creating Impala databases and tables, accompanied by sample commands for data insertion and retrieval. This section equips users with the necessary knowledge to set up Impala databases effectively, facilitating seamless data management and analysis.

**Addressing Query Performance: Task 4**
In Task 4, the report addresses the prevalent issue of slow queries in Impala databases. Various strategies are proposed to investigate and enhance query performance, encompassing aspects such as analyzing execution plans, optimizing joins and predicates, updating statistics, and considering hardware upgrades. These insights offer practical solutions for organizations striving to maximize the efficiency of their big data analytics infrastructure.

**Conclusion: Unlocking the Potential of Big Data Analytics**
In summary, this report offers valuable insights into the practical applications of data virtualization tools and strategies for optimizing query performance within Impala databases. By leveraging Apache Drill's advanced capabilities and implementing effective performance optimization techniques, organizations can unlock the full potential of their big data analytics initiatives, driving informed decision-making and fostering innovation.
