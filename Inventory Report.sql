-- General Inventory Report
SELECT 
    t.transaction_id,
    t.transaction_date,
    t.transaction_type,
    t.quantity,
    i.item_id,
    i.item_name,
    i.description AS item_description,
    i.unit_price,
    s.supplier_name,
    l.location_name,
    l.capacity
FROM Transactions t
JOIN Items i ON t.item_id = i.item_id
JOIN Suppliers s ON i.supplier_id = s.supplier_id
JOIN Location l ON t.location_id = l.location_id
ORDER BY t.transaction_date DESC;



-- low stock alert
SELECT 
    i.item_id, 
    i.item_name, 
    SUM(inv.quantity) AS current_stock, 
    i.unit_price,
    (SUM(inv.quantity) * i.unit_price) AS stock_value,
    CASE 
        WHEN SUM(inv.quantity) < 20 THEN 'LOW STOCK'
        ELSE 'SUFFICIENT STOCK'
    END AS stock_status
FROM Inventory inv
JOIN Items i ON inv.item_id = i.item_id
GROUP BY i.item_id, i.item_name, i.unit_price
HAVING SUM(inv.quantity) < 20
ORDER BY current_stock ASC;

-- total inventory value
SELECT 
    SUM(inv.quantity * i.unit_price) AS total_inventory_value
FROM Inventory inv
JOIN Items i ON inv.item_id = i.item_id;



--transaction history
DECLARE @ItemID INT = 101; 

SELECT 
    t.transaction_id,
    t.transaction_date,
    t.transaction_type,
    t.quantity,
    i.item_name,
    l.location_name
FROM Transactions t
JOIN Items i ON t.item_id = i.item_id
JOIN Location l ON t.location_id = l.location_id
WHERE t.item_id = @ItemID
ORDER BY t.transaction_date DESC;
