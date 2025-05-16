# DataAdmin_DatabaseMgmt
Database Management Project
# 🐾 Dog Adoption: Database Project

This project was developed as part of the **IST-659: Data Administration Concepts and Database Management** course in the M.S. in Applied Data Science program at Syracuse University. It aims to streamline the dog adoption process through a fully structured relational database.

## 📌 Project Overview

The **Save A Dog** project models a centralized database system for a dog adoption center. The database supports:
- Tracking of dogs and their medical/vaccination histories
- Adopter records and application management
- Dog listings including adoption costs and dates
- Dog breeds, images, and matching support

This system ensures accurate data tracking, reduces adoption processing time, and helps staff match dogs with potential adopters more efficiently.

## 🧠 Key Features

- **Entity-Relationship Model** and **Logical Schema**
- Full SQL implementation: table creation, insert scripts, constraints
- Includes normalized many-to-many and one-to-many relationships
- Demonstrates use of identity fields, foreign key constraints, and indexing
- Addresses real-world business needs (data privacy, process optimization)

## 📂 Database Structure

### Main Tables:
- `adopter`
- `dog`
- `dog_listing`
- `vaccination_record`
- `application`
- `dog_breed`
- `dog_image`

### Relationship Tables:
- `dog_breed_x_dog`
- `dog_image_x_dog`

### Relationships:
- A dog can have multiple breeds and images
- A dog can have multiple adoption applications
- Each adopter can apply for multiple dogs

## 📊 ERD & Schema

See `ERD_Diagram_Conceptual.png` and `Schema_Diagram_Logical.png` for visual overviews of the data models.

## 💾 SQL Script

The full SQL implementation is available in the file:
- [`Team 3 - Final Project SQL Script.sql`](Team%203%20-%20Final%20Project%20SQL%20Script.sql)

Includes:
- `CREATE DATABASE`
- `CREATE TABLE` with constraints
- `INSERT INTO` with sample data
- Data validation queries

## 🔐 Considerations

- Emphasis on **data accuracy**, **security**, and **legal compliance**
- Anticipates issues like real-time dog availability, application integrity, and potential human error
- Designed for scalability and integration with front-end platforms

## 👥 Team Members

- Kelly Arseneau  
- Adrian Alexander  
- Samantha Greenberg  
- Momisola Odeyemi  
- Gloria Wu

## 🐶 Future Improvements

- Add support for adopter lifestyle & housing filters (e.g., fenced yard, allergies)
- Integrate training history and behavioral assessments
- Enable tracking of adoption event participation and donations

---


