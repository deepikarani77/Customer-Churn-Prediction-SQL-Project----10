-- Task 1: Create a Stored Procedure to Check Churn Risk

DELIMITER //
CREATE PROCEDURE CheckChurnRisk(IN cust_id INT)
BEGIN
    DECLARE tenure_months INT;
    DECLARE monthly_charges DECIMAL(10,2);

    SELECT tenure, MonthlyCharges
    INTO tenure_months, monthly_charges
    FROM customers
    WHERE CustomerID = cust_id;

    IF tenure_months < 6 AND monthly_charges > 80 THEN
        SELECT 'High Churn Risk' AS Risk_Status;
    ELSEIF tenure_months BETWEEN 6 AND 12 THEN
        SELECT 'Medium Churn Risk' AS Risk_Status;
    ELSE
        SELECT 'Low Churn Risk' AS Risk_Status;
    END IF;
END;
//
DELIMITER ;

-- Task 2: Trigger to Log Churned Customers

CREATE TABLE churn_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    action_type VARCHAR(50)
);

DELIMITER //
CREATE TRIGGER trg_customer_churn
AFTER UPDATE ON customers
FOR EACH ROW
BEGIN
    IF NEW.Churn = 'Yes' AND OLD.Churn = 'No' THEN
        INSERT INTO churn_audit(customer_id, action_type)
        VALUES(NEW.CustomerID, 'Customer Churned');
    END IF;
END;
//
DELIMITER ;

-- Task 3: Stored Procedure with CASE Statement

DELIMITER //
CREATE PROCEDURE CustomerSegment(IN cust_id INT)
BEGIN
    DECLARE charges DECIMAL(10,2);

    SELECT MonthlyCharges INTO charges
    FROM customers WHERE CustomerID = cust_id;

    CASE
        WHEN charges < 30 THEN
            SELECT 'Low Value Customer';
        WHEN charges BETWEEN 30 AND 70 THEN
            SELECT 'Medium Value Customer';
        ELSE
            SELECT 'High Value Customer';
    END CASE;
END;
//
DELIMITER ;

-- Task 4: Loop with Leave (Generating Monthly Churn Report)

DELIMITER //
CREATE PROCEDURE MonthlyChurnReport()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE cid INT;
    DECLARE cur CURSOR FOR SELECT CustomerID FROM customers WHERE Churn='Yes';
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    churn_loop: LOOP
        FETCH cur INTO cid;
        IF done THEN
            LEAVE churn_loop;
        END IF;
        INSERT INTO churn_audit(customer_id, action_type)
        VALUES(cid, 'Churn Report Generated');
    END LOOP;
    CLOSE cur;
END;
//
DELIMITER ;

-- Task 5: Error Handling in Stored Procedure

DELIMITER //
CREATE PROCEDURE SafeInsertCustomer(IN cid INT, IN cname VARCHAR(100))
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'Error: Could not insert customer!' AS ErrorMsg;
    END;

    INSERT INTO customers(CustomerID, CustomerName) VALUES(cid, cname);
END;
//
DELIMITER ;

-- Task 6: Stored Function for Customer Lifetime Value

DELIMITER //
CREATE FUNCTION GetCustomerLTV(cust_id INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE tenure INT;
    DECLARE charges DECIMAL(10,2);
    DECLARE ltv DECIMAL(10,2);

    SELECT tenure, MonthlyCharges INTO tenure, charges
    FROM customers WHERE CustomerID = cust_id;

    SET ltv = tenure * charges;
    RETURN ltv;
END;
//
DELIMITER ;



















