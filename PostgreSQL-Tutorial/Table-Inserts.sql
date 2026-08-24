/* 
    1. Inserting one record into a table
        1.1: Inserting one record into the Customer table, specifying the columns
    2. Inserting multiple records into a table, specifying the columns
        2.1: Inserting multiple records into the Customer table, specifying the columns
    3. Inserting multiple records into a table, without specifying the columns
        3.1: Inserting multiple records into the Customer table, without specifying the columns
        3.2: Inserting multiple records into the Product table, without specifying the columns
        3.3: Inserting multiple records into the Item table, without specifying the columns
        3.4: Inserting multiple records into the Sales Order table, without specifying the columns
        3.5: Inserting multiple records into the Sales Item table, without specifying the columns
*/

/* 1.1. Inserting one record into the Customer table, specifying the columns */
INSERT INTO customer(
    first_name, last_name, email, company,
    street, city, state, zip,
    phone, birth_date, gender, date_entered
) /* id excluded as it will be auto added / incremented */
VALUES (
    'Madison', 'Owens', 'mo@gmail.com', 'studentInc',
    'main st', 'Cleveland', 'OH', 44121,
    '123-456-7890', '2000-01-01', 'F', current_timestamp
);

/* 2.1. Inserting multiple records into the Customer table, specifying the columns */
​​INSERT INTO customer(
    first_name, last_name, email, company,
    street, city, state, zip,
    phone, birth_date, gender, date_entered
)
VALUES
    ('James', 'Carter', 'jcarter@gmail.com', 'TechWorks', 'oak st', 'Columbus', 'OH', 43215, '614-555-1001', '1995-03-12', 'M', '2026-08-20'),
    ('Emily', 'Johnson', 'emily.johnson@gmail.com', 'Bright Solutions', 'elm st', 'Cleveland', 'OH', 44114, '216-555-1002', '1998-07-24', 'F', '2026-08-18'),
    ('Michael', 'Brown', 'mbrown@gmail.com', 'Brown Consulting', 'maple ave', 'Cincinnati', 'OH', 45202, '513-555-1003', '1992-11-05', 'M', '2026-08-15'),
    ('Sarah', 'Davis', 'sarah.davis@gmail.com', 'Davis Design', 'pine st', 'Dayton', 'OH', 45402, '937-555-1004', '1997-02-18', 'F', '2026-08-12'),
    ('Daniel', 'Wilson', 'dwilson@gmail.com', 'Wilson LLC', 'cedar rd', 'Toledo', 'OH', 43604, '419-555-1005', '1990-09-30', 'M', '2026-08-10'),
    ('Jessica', 'Miller', 'jmiller@gmail.com', 'Miller Media', 'birch ave', 'Akron', 'OH', 44308, '330-555-1006', '1996-05-11', 'F', '2026-08-05'),
    ('Matthew', 'Moore', 'mmoore@gmail.com', 'Moore Industries', 'walnut st', 'Cleveland', 'OH', 44106, '216-555-1007', '1988-12-21', 'M', '2026-08-01'),
    ('Ashley', 'Taylor', 'ashley.taylor@gmail.com', 'Taylor Group', 'high st', 'Columbus', 'OH', 43201, '614-555-1008', '1999-08-16', 'F', '2026-07-28'),
    ('Christopher', 'Anderson', 'canderson@gmail.com', 'Anderson Co', 'lakeview dr', 'Cincinnati', 'OH', 45208, '513-555-1009', '1993-04-09', 'M', '2026-07-25'),
    ('Amanda', 'Thomas', 'amanda.thomas@gmail.com', 'Thomas Partners', 'forest ave', 'Dayton', 'OH', 45410, '937-555-1010', '1994-10-27', 'F', '2026-07-20'),
    ('Joshua', 'Jackson', 'jjackson@gmail.com', 'Jackson Services', 'river rd', 'Toledo', 'OH', 43606, '419-555-1011', '1989-06-14', 'M', '2026-07-15'),
    ('Lauren', 'White', 'lauren.white@gmail.com', 'White & Co', 'spring st', 'Akron', 'OH', 44311, '330-555-1012', '2001-01-23', 'F', '2026-07-10'),
    ('Andrew', 'Harris', 'andrew.harris@gmail.com', 'Harris Tech', 'summit ave', 'Cleveland', 'OH', 44109, '216-555-1013', '1991-03-07', 'M', '2026-07-05'),
    ('Megan', 'Martin', 'megan.martin@gmail.com', 'Martin Creative', 'prospect ave', 'Columbus', 'OH', 43215, '614-555-1014', '1997-11-19', 'F', '2026-06-28'),
    ('Ryan', 'Thompson', 'ryan.thompson@gmail.com', 'Thompson Systems', 'main ave', 'Cincinnati', 'OH', 45219, '513-555-1015', '1995-08-02', 'M', '2026-06-20'),
    ('Rachel', 'Garcia', 'rachel.garcia@gmail.com', 'Garcia Solutions', 'madison st', 'Dayton', 'OH', 45402, '937-555-1016', '1998-12-10', 'F', '2026-06-15'),
    ('Kevin', 'Martinez', 'kevin.martinez@gmail.com', 'Martinez Group', 'monroe st', 'Toledo', 'OH', 43604, '419-555-1017', '1990-05-28', 'M', '2026-06-10'),
    ('Stephanie', 'Robinson', 'stephanie.robinson@gmail.com', 'Robinson Consulting', 'fairview rd', 'Akron', 'OH', 44303, '330-555-1018', '1996-09-15', 'F', '2026-06-01'),
    ('Brandon', 'Clark', 'brandon.clark@gmail.com', 'Clark Enterprises', 'east ave', 'Cleveland', 'OH', 44110, '216-555-1019', '1992-02-06', 'M', '2026-05-25'),
    ('Nicole', 'Lewis', 'nicole.lewis@gmail.com', 'Lewis Marketing', 'west st', 'Columbus', 'OH', 43206, '614-555-1020', '1999-06-22', 'F', '2026-05-18'),
    ('Justin', 'Lee', 'justin.lee@gmail.com', 'Lee Technologies', 'park ave', 'Cincinnati', 'OH', 45202, '513-555-1021', '1987-10-13', 'M', '2026-05-10'),
    ('Brittany', 'Walker', 'brittany.walker@gmail.com', 'Walker Design', 'church st', 'Dayton', 'OH', 45405, '937-555-1022', '1995-04-25', 'F', '2026-04-28'),
    ('Tyler', 'Hall', 'tyler.hall@gmail.com', 'Hall Industries', 'union st', 'Toledo', 'OH', 43605, '419-555-1023', '1993-12-03', 'M', '2026-04-15'),
    ('Samantha', 'Young', 'samantha.young@gmail.com', 'Young Ventures', 'market st', 'Akron', 'OH', 44308, '330-555-1024', '2000-07-17', 'F', current_timestamp)
;
/* 3.1. Inserting multiple records into the Customer table, without specifying the columns */
INSERT INTO sales_person
VALUES
    ('Robert', 'Anderson', 'robert.anderson@gmail.com', 'Maple St', 'Cleveland', 'OH', 44114, '216-555-2001', '1989-04-15', 'M', '2022-06-10'),
    ('Jennifer', 'Williams', 'jennifer.williams@gmail.com', 'Oak Ave', 'Columbus', 'OH', 43215, '614-555-2002', '1992-09-23', 'F', '2023-01-16'),
    ('Alex', 'Morgan', 'alex.morgan@gmail.com', 'Pine St', 'Cincinnati', 'OH', 45202, '513-555-2003', '1997-02-08', 'N', '2024-03-04'),
    ('Thomas', 'Harris', 'thomas.harris@gmail.com', 'Elm Rd', 'Dayton', 'OH', 45402, '937-555-2004', '1986-11-19', 'M', '2021-08-23'),
    ('Rachel', 'Martinez', 'rachel.martinez@gmail.com', 'Cedar Ave', 'Toledo', 'OH', 43604, '419-555-2005', '1995-06-30', 'F', '2023-09-11'),
    ('Jordan', 'Lee', 'jordan.lee@gmail.com', 'Lakeview Dr', 'Akron', 'OH', 44308, '330-555-2006', '1993-12-05', 'O', '2022-11-07'),
    ('Christopher', 'Brown', 'christopher.brown@gmail.com', 'High St', 'Cleveland', 'OH', 44106, '216-555-2007', '1988-07-21', 'M', '2020-04-13'),
    ('Sophia', 'Taylor', 'sophia.taylor@gmail.com', 'River Rd', 'Columbus', 'OH', 43206, '614-555-2008', '1996-03-17', 'F', '2024-01-22'),
    ('Morgan', 'Clark', 'morgan.clark@gmail.com', 'Park Ave', 'Cincinnati', 'OH', 45219, '513-555-2009', '1999-10-28', 'N', '2025-02-03'),
    ('Daniel', 'Robinson', 'daniel.robinson@gmail.com', 'Spring St', 'Cleveland', 'OH', 44109, '216-555-2010', '1991-01-12', 'M', '2025-05-19')
;

/* 3.2. Inserting multiple records into the Product table, without specifying the columns */
INSERT INTO product
VALUES 
    (1, 'high heels', 'ysl', 'cute high heels'),
    (2, 'stan smith', 'adidas', 'cute stan smiths'),
    (3, 'air force 1', 'nike', 'cute aire force ones'),
    (2, 'flip-flops', 'havaiana', 'cute havaiana flip-flops')
;

/* 3.3. Inserting multiple records into the Item table, without specifying the columns */
INSERT INTO item
VALUES
    (9, 38, 'Black', 'coming soon', 49.99),
    (9, 40, 'White', 'coming soon', 54.99),
    (9, 42, 'Navy', 'coming soon', 59.99),
    (9, 44, 'Gray', 'coming soon', 52.50),
    (9, 46, 'Red', 'coming soon', 64.99),

    (10, 36, 'Black', 'coming soon', 39.99),
    (10, 38, 'Blue', 'coming soon', 44.50),
    (10, 40, 'Green', 'coming soon', 47.99),
    (10, 42, 'Beige', 'coming soon', 42.00),
    (10, 44, 'Brown', 'coming soon', 51.75),

    (11, 37, 'White', 'coming soon', 69.99),
    (11, 39, 'Black', 'coming soon', 74.50),
    (11, 41, 'Gray', 'coming soon', 79.99),
    (11, 43, 'Navy', 'coming soon', 72.25),
    (11, 45, 'Green', 'coming soon', 84.99),

    (12, 38, 'Red', 'coming soon', 59.99),
    (12, 40, 'Black', 'coming soon', 64.50),
    (12, 42, 'White', 'coming soon', 67.99),
    (12, 44, 'Blue', 'coming soon', 71.25),
    (12, 46, 'Gray', 'coming soon', 76.99)
;

/* 3.4. Inserting multiple records into the Sales Order table, without specifying the columns */
INSERT INTO sales_order
VALUES
    (1, 1, '2026-08-20 09:15:00', 100001, '4111111111111111', 12, 31, 101, 'MADISON OWENS'),
    (2, 2, '2026-08-19 14:30:00', 100002, '4111111111111111', 11, 30, 202, 'JAMES CARTER'),
    (3, 3, '2026-08-18 10:45:00', 100003, '4111111111111111', 10, 31, 303, 'EMILY JOHNSON'),
    (4, 4, '2026-08-17 16:20:00', 100004, '4111111111111111', 9, 30, 404, 'MICHAEL BROWN'),
    (5, 5, '2026-08-16 11:10:00', 100005, '4111111111111111', 8, 31, 505, 'SARAH DAVIS'),
    (6, 6, '2026-08-15 13:40:00', 100006, '4111111111111111', 7, 31, 606, 'DANIEL WILSON'),
    (7, 7, '2026-08-14 09:50:00', 100007, '4111111111111111', 6, 30, 707, 'JESSICA MILLER'),
    (8, 8, '2026-08-13 15:05:00', 100008, '4111111111111111', 5, 31, 808, 'MATTHEW MOORE'),
    (9, 9, '2026-08-12 12:25:00', 100009, '4111111111111111', 4, 30, 909, 'ASHLEY TAYLOR'),
    (10, 10, '2026-08-11 17:15:00', 100010, '4111111111111111', 3, 31, 110, 'CHRISTOPHER ANDERSON'),

    (11, 1, '2026-08-10 10:30:00', 100011, '4111111111111111', 12, 31, 121, 'AMANDA THOMAS'),
    (12, 2, '2026-08-09 14:15:00', 100012, '4111111111111111', 11, 30, 232, 'JOSHUA JACKSON'),
    (13, 3, '2026-08-08 09:05:00', 100013, '4111111111111111', 10, 31, 343, 'LAUREN WHITE'),
    (14, 4, '2026-08-07 16:45:00', 100014, '4111111111111111', 9, 30, 454, 'ANDREW HARRIS'),
    (15, 5, '2026-08-06 11:55:00', 100015, '4111111111111111', 8, 31, 565, 'MEGAN MARTIN'),
    (16, 6, '2026-08-05 13:20:00', 100016, '4111111111111111', 7, 31, 676, 'RYAN THOMPSON'),
    (17, 7, '2026-08-04 10:10:00', 100017, '4111111111111111', 6, 30, 787, 'RACHEL GARCIA'),
    (18, 8, '2026-08-03 15:35:00', 100018, '4111111111111111', 5, 31, 898, 'KEVIN MARTINEZ'),
    (19, 9, '2026-08-02 12:50:00', 100019, '4111111111111111', 4, 30, 909, 'STEPHANIE ROBINSON'),
    (20, 10, '2026-08-01 09:25:00', 100020, '4111111111111111', 3, 31, 120, 'BRANDON CLARK')
;

/* 3.5. Inserting multiple records into the Sales Item table, without specifying the columns */
INSERT INTO sales_item
VALUES
    (1, 1, 2, 0.00, TRUE, 7.25),
    (2, 1, 1, 0.10, TRUE, 7.25),
    (3, 2, 3, 0.00, FALSE, 0.00),
    (4, 2, 1, 0.15, TRUE, 7.25),
    (5, 3, 2, 0.05, TRUE, 7.25),
    (6, 4, 1, 0.00, FALSE, 0.00),
    (7, 5, 4, 0.20, TRUE, 7.25),
    (8, 6, 2, 0.00, TRUE, 7.25),
    (9, 7, 1, 0.10, FALSE, 0.00),
    (10, 8, 3, 0.05, TRUE, 7.25),
    (11, 9, 2, 0.00, TRUE, 7.25),
    (12, 10, 1, 0.25, FALSE, 0.00),
    (13, 11, 2, 0.10, TRUE, 7.25),
    (14, 12, 3, 0.00, TRUE, 7.25),
    (15, 13, 1, 0.05, FALSE, 0.00),
    (16, 14, 2, 0.15, TRUE, 7.25),
    (17, 15, 4, 0.00, TRUE, 7.25),
    (18, 16, 1, 0.20, FALSE, 0.00),
    (19, 17, 2, 0.05, TRUE, 7.25),
    (20, 18, 3, 0.00, TRUE, 7.25)
;