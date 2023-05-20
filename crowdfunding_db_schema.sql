-- Create the tables for each csv file

Create table category (
category_id VARCHAR PRIMARY KEY,
Category VARCHAR not null
);

Create table contacts (
contact_id int PRIMARY KEY,
first_name VARCHAR not null,
last_name VARCHAR not null,
email VARCHAR not null
);

Create table subcategory (
subcategory_id VARCHAR PRIMARY KEY,
"Sub-Category" VARCHAR NOT NULL
);

Create table campaign (
cf_id int Primary Key,
contact_id int not null,
company_name VARCHAR not null,
description VARCHAR not null,
goal int not null,
pledged int not null,
outcome VARCHAR not null,
backers_count int not null,
country VARCHAR not null,
currency VARCHAR not null,
launched_date VARCHAR not null,
end_date VARCHAR not null,
staff_pick boolean not null,
spotlight boolean not null,
category_id VARCHAR not null,
subcategory_id VARCHAR not null
);

ALTER TABLE campaign
ADD CONSTRAINT fk_contact_id FOREIGN KEY (contact_id) REFERENCES contacts (contact_id);

ALTER TABLE campaign
ADD CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES category (category_id);

ALTER TABLE campaign
ADD CONSTRAINT fk_subcategory_id FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id);

-- Import the CSV files 

-- Select the tables to ensure the csv files were imported correctly

SELECT * from category
Select * from contacts
Select * from subcategory 
Select * from campaign