
	USE [Inventory Management];


INSERT INTO Suppliers (supplier_id, supplier_name, contact_info, address)
VALUES 
    (201, 'Tech Solutions INC', 'John Doe', '1410 Ward Pl Florham Park, NJ 07932'),
    (202, 'Office Depot', 'Jane Doe', '312 Webster Street Red Bank, NJ 07701'),
    (203, 'Furniture World', 'Robert Brown', '123 Main St Hoboken, NJ 07030'),
    (204, 'Monitor Supply Co', 'Emily White', '456 Elm St Princeton, NJ 08540'),
    (205, 'KeyTech LTD.', 'Michael Johnson', '789 Oak Ave Cherry Hill, NJ 08002'),
    (206, 'Gadget Traders', 'Olivia Adams', '101 Maple Dr Morristown, NJ 07960'),
    (207, 'Print Master Corp', 'Chris Wilson', '202 Pine Ln Atlantic City, NJ 08401'),
    (208, 'Lighting Express', 'Sarah Green', '303 Cedar Blvd Newark, NJ 07102'),
    (209, 'Home Essentials', 'Tom Miller', '404 Birch Ct Jersey City, NJ 07302'),
    (210, 'Presentation Gear', 'Daniel Scott', '505 Spruce Rd Trenton, NJ 08608');


INSERT INTO Items (item_id, item_name, description, unit_price, supplier_id)
VALUES
    (111, 'Laptop', 'Portable computers used for work and personal tasks', 1200.00, 201),
    (112, 'Chair', 'Ergonomic office chair designed for comfort and support', 150.00, 202),
    (113, 'Table', 'Sturdy office table for workstations and meetings', 250.00, 203),
    (114, 'Monitor', 'High-resolution display for computers and workstations', 300.00, 204),
    (115, 'Keyboard', 'Input device used for typing and system navigation', 50.00, 205),
    (116, 'Mouse', 'Handheld input device for controlling a computer', 30.00, 206),
    (117, 'Printer', 'Device for printing documents and images', 400.00, 207),
    (118, 'Desk', 'Adjustable lamp for task lighting on desks', 60.00, 208),
    (119, 'Bookshelf', 'Storage unit for books, files, and office supplies', 200.00, 209),
    (120, 'Projector', 'Device for displaying visual presentations on a screen', 600.00, 210);


INSERT INTO Location (location_id, location_name, capacity)
VALUES
    (20, 'Warehouse A', 500),
    (21, 'Warehouse B', 300),
    (22, 'Storage C', 200),
    (23, 'Storage D', 100),
    (24, 'Main Facility', 400),
    (25, 'Backup Storage E', 150),
    (26, 'Inventory Hub F', 350),
    (27, 'Distribution Hub G', 650),
    (28, 'Overflow Storage H', 250),
    (29, 'Special Items Room I', 50);


INSERT INTO Inventory (inventory_id, item_id, location_id, quantity)
VALUES
    (11, 111, 20, 50), 
    (12, 112, 21, 20),
    (13, 113, 22, 15),
    (14, 114, 23, 30),
    (15, 115, 24, 100),
    (16, 116, 25, 75),
    (17, 117, 26, 25),
    (18, 118, 27, 40),
    (19, 119, 28, 10),
    (20, 120, 29, 12);


INSERT INTO Transactions (transaction_id, item_id, location_id, transaction_type, quantity, transaction_date)
VALUES
    (3470, 111, 20, 'sale', 10, '2025-03-02'),
    (3471, 112, 21, 'sale', 5, '2025-03-03'),
    (3472, 113, 22, 'return', 3, '2025-03-04'),
    (3473, 114, 23, 'sale', 8, '2025-03-05'),
    (3474, 115, 24, 'sale', 12, '2025-03-06'),
    (3475, 116, 25, 'transfer', 7, '2025-03-07'),
    (3476, 117, 26, 'purchase', 4, '2025-03-08'),
    (3477, 118, 27, 'sale', 6, '2025-03-09'),
    (3478, 119, 28, 'return', 9, '2025-03-10'),
    (3479, 120, 29, 'purchase', 2, '2025-03-11');
