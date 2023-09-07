DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;

-- Create the "contacts" table
CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Create the "category" table
CREATE TABLE category (
    category_id VARCHAR(50) PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

-- Create the "subcategory" table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory_name VARCHAR(50) NOT NULL
);

-- Create the "campaign" table
CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    goal NUMERIC(10,2) NOT NULL,
    pledged NUMERIC(10,2) NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(10) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

-- Queries
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;