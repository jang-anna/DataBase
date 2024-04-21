USE classicmodels;

-- 1.생성(CREATE)
-- (1) **`customers`** 테이블에 새 고객을 추가하세요.
INSERT INTO customers (customerName, city) VALUES ('anna', 'city');
-- (2) **`products`** 테이블에 새 제품을 추가하세요.
INSERT INTO products (productName, buyPrice) VALUES ('Toy', 500 );
-- (3) **`employees`** 테이블에 새 직원을 추가하세요.
INSERT INTO employees (firstName, lastName) VALUES ('yena', 'jang');
-- (4) **`offices`** 테이블에 새 사무실을 추가하세요.
INSERT INTO offices (city, phone) VALUES ('Daegu', '010-1234-1234officesemployees');
-- (5) **`orders`** 테이블에 새 주문을 추가하세요.
INSERT INTO orders (orderDate, orderNumber) VALUES ('2023-01-01', 1);
-- (6) **`orderdetails`** 테이블에 주문 상세 정보를 추가하세요.
INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach) VALUES (1, 1, 2, 20.00);
-- (7) **`payments`** 테이블에 지불 정보를 추가하세요.
INSERT INTO payments (customerNumber, amount, paymentDate) VALUES (1, 200.00, '2023-01-01');
-- (8) **`productlines`** 테이블에 제품 라인을 추가하세요.
INSERT INTO productlines (productLine, textDescription) VALUES ('Classic Cars', 'Various classic cars models');
-- (9) **`customers`** 테이블에 다른 지역의 고객을 추가하세요.
INSERT INTO customers (customerName, city) VALUES ('Olivia',  'New York' );
-- (10) **`products`** 테이블에 다른 카테고리의 제품을 추가하세요.
INSERT INTO products (productName, buyPrice, productLine) VALUES ('Train', 30, 'Trains');

-- 2.읽기(READ)
-- (1) **`customers`** 테이블에서 모든 고객 정보를 조회하세요.
SELECT * FROM customers;
-- (2) **`products`** 테이블에서 모든 제품 목록을 조회하세요.
SELECT * FROM products;
-- (3) **`employees`** 테이블에서 모든 직원의 이름과 직급을 조회하세요.
SELECT firstName, lastName, jobTitle FROM employees;
-- (4) **`offices`** 테이블에서 모든 사무실의 위치를 조회하세요.
SELECT city, addressLine1,addressLine2  FROM offices;
-- (5) **`orders`** 테이블에서 최근 10개의 주문을 조회하세요.
SELECT * FROM orders ORDER BY orderDate DESC LIMIT 10;
-- (6) **`orderdetails`** 테이블에서 특정 주문의 모든 상세 정보를 조회하세요.
SELECT * FROM orderdetails WHERE orderNumber = 1;
-- (7) **`payments`** 테이블에서 특정 고객의 모든 지불 정보를 조회하세요.
SELECT * FROM payments WHERE customerNumber = 1;
-- (8) **`productlines`** 테이블에서 각 제품 라인의 설명을 조회하세요.
SELECT productLine, textDescription FROM productlines;
-- (9) **`customers`** 테이블에서 특정 지역의 고객을 조회하세요.
SELECT * FROM customers WHERE city = 'New York';
-- (10) **`products`** 테이블에서 특정 가격 범위의 제품을 조회하세요.
SELECT * FROM products WHERE buyPrice BETWEEN 50 AND 60;

-- 3.갱신(UPDATE)

--  (1) **`customers`** 테이블에서 특정 고객의 주소를 갱신하세요.
UPDATE customers SET addressLine1 = '456 Updated St' WHERE customerNumber = 1;
-- (2) **`products`** 테이블에서 특정 제품의 가격을 갱신하세요.
UPDATE products SET buyPrice = 29.99 WHERE productCode = S12_1099;
-- (3) **`employees`** 테이블에서 특정 직원의 직급을 갱신하세요.
UPDATE employees SET jobTitle = 'Manager' WHERE employeeNumber=1;
-- (4) **`offices`** 테이블에서 특정 사무실의 전화번호를 갱신하세요.
UPDATE offices SET phone = '123-456-7891' WHERE officeCode = 1501;
-- (5) **`orders`** 테이블에서 특정 주문의 상태를 갱신하세요.
UPDATE orders SET status = 'Shipped' WHERE orderNumber = 10179;
-- (6) **`orderdetails`** 테이블에서 특정 주문 상세의 수량을 갱신하세요.
UPDATE orderdetails SET quantityOrdered = 3 WHERE orderNumber = 1 AND productID = 1;
-- (7) **`payments`** 테이블에서 특정 지불의 금액을 갱신하세요.
UPDATE payments SET amount = 250.00 WHERE customerNumber = 103 AND paymentDate = '2004-10-19';
-- (8) **`productlines`** 테이블에서 특정 제품 라인의 설명을 갱신하세요.
UPDATE productlines SET textDescription = 'Updated description' WHERE productLine = 'Trucks and Buses';
-- (9) **`customers`** 테이블에서 특정 고객의 이메일을 갱신하세요.
UPDATE customers SET city = 'NYC' WHERE customerNumber = 103;
-- (10)**`products`** 테이블에서 여러 제품의 가격을 한 번에 갱신하세요.
UPDATE products SET buyPrice = price * 1.3;

-- 4.삭제(DELETE)
-- (1) **`customers`** 테이블에서 특정 고객을 삭제하세요.
DELETE FROM customers WHERE customerNumber = 1;
-- (2) **`products`** 테이블에서 특정 제품을 삭제하세요.
DELETE FROM products WHERE productCode = S10_4962;
-- (3) **`employees`** 테이블에서 특정 직원을 삭제하세요.
DELETE FROM employees WHERE employeeNumber = 1002;
-- (4) **`offices`** 테이블에서 특정 사무실을 삭제하세요.
DELETE FROM offices WHERE officeCode = 1;
-- (5) **`orders`** 테이블에서 특정 주문을 삭제하세요.
DELETE FROM orders WHERE orderNumber = 10100;
-- (6) **`orderdetails`** 테이블에서 특정 주문 상세를 삭제하세요.
DELETE FROM orderdetails WHERE orderNumber = 10100;
    
-- (7) **`payments`** 테이블에서 특정 지불 내역을 삭제하세요.
DELETE FROM payments WHERE customerNumber = 103;
    
-- (8) **`productlines`** 테이블에서 특정 제품 라인을 삭제하세요.
    
DELETE FROM productlines WHERE productLine = 'Classic Cars';

-- (9) **`customers`** 테이블에서 특정 지역의 모든 고객을 삭제하세요.
    
DELETE FROM customers WHERE city = 'San Francisco';
    
-- (10) **`products`** 테이블에서 특정 카테고리의 모든 제품을 삭제하세요.
    
DELETE FROM products WHERE productLine = 'Classic Cars';
