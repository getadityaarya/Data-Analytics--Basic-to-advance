#  Database and SQL Notes

This repository contains well-structured notes on **Database fundamentals and SQL concepts**, written in a clear and exam-oriented manner.  
These notes are useful for **students, beginners, and revision purposes**.

---

##  What is a Database?

A **database** is an organized and structured collection of related data stored electronically in a computer system.  
It enables users to efficiently **store, retrieve, update, and manage data** while maintaining **accuracy, consistency, and security**.

Databases reduce data redundancy and are widely used in applications such as **banking systems, educational institutions, hospitals, and e-commerce platforms**.

---

##  Types of Database

Databases are classified based on how data is stored and managed.

### 1. Relational Database
A relational database stores data in the form of **tables (rows and columns)**.  
Relationships between tables are established using **keys**, making data easy to query and manage.

### 2. Hierarchical Database
A hierarchical database organizes data in a **tree-like structure**, where each parent record can have multiple child records, but each child has only one parent.

### 3. Network Database
A network database supports **many-to-many relationships**, allowing records to have multiple parent and child relationships.

### 4. Object-Oriented Database
An object-oriented database stores data in the form of **objects**, similar to object-oriented programming concepts such as classes and objects.

### 5. NoSQL Database
A NoSQL database is designed to store **unstructured or semi-structured data** and is widely used in applications requiring **high scalability and performance**.

---

##  What is Schema?

A **schema** is the **logical blueprint of a database**.  
It defines how data is organized, including:
- Tables
- Columns
- Data types
- Relationships
- Constraints

A schema does **not store actual data**, it only defines the structure of the database.

---

##  What is SQL?

**SQL (Structured Query Language)** is a standard language used to communicate with **relational databases**.  
It allows users to:
- Create database structures
- Insert and retrieve data
- Update and delete records
- Control access and permissions

---

##  Concept of SQL

SQL commands are categorized based on their functionality.

---

### 🔹 DDL (Data Definition Language)

DDL commands are used to **define and modify the structure** of database objects.

- **CREATE** – Creates database objects such as tables and databases  
- **ALTER** – Modifies the structure of existing database objects  
- **DROP** – Permanently deletes database objects  
- **TRUNCATE** – Removes all records from a table while keeping its structure  
- **RENAME** – Renames database objects  

---

###  DML (Data Manipulation Language)

DML commands are used to **manipulate data** stored in tables.

- **SELECT** – Retrieves data from tables  
- **INSERT** – Adds new records into a table  
- **UPDATE** – Modifies existing records  
- **DELETE** – Removes records from a table  

---

###  DCL (Data Control Language)

DCL commands are used to **control access and permissions** in the database.

- **GRANT** – Provides access privileges to users  
- **REVOKE** – Removes previously granted privileges  

---

###  TCL (Transaction Control Language)

TCL commands are used to **manage transactions** and maintain data integrity.

- **COMMIT** – Permanently saves changes  
- **ROLLBACK** – Undoes changes since the last commit  
- **SAVEPOINT** – Creates a point within a transaction for rollback  

---

##  Keys and Types of Keys

A **key** is an attribute or a set of attributes used to **uniquely identify records** and establish relationships between tables.

### 1. Super Key
A set of one or more attributes that uniquely identify a record in a table.

### 2. Primary Key
A candidate key chosen to uniquely identify each record.  
It **cannot be NULL** and must be **unique**.

### 3. Unique Key
Ensures that all values in a column are unique and can allow **one NULL value**.

### 4. Foreign Key
An attribute that establishes a relationship between two tables by referencing the primary key of another table.

### 5. Composite Key
A key formed by combining **two or more columns** to uniquely identify a record.

### 6. Candidate Key
A minimal set of attributes that can uniquely identify a record.

### 7. Alternate Key
A candidate key that is **not selected as the primary key**.

### 8. Secondary Key
Used for **searching and retrieving data**, but does not uniquely identify records.

### 9. Surrogate Key
An **artificially generated key** (often auto-incremented) with no business meaning, used only for identification.

---

##  Conclusion

These notes provide a **strong foundation in database concepts and SQL**, making them suitable for:
- Academic learning
- Exam preparation
- Beginner reference
- Interview revision

---

