-- sample5.sql


-- ******************************************************
-- SELECT 문의 기본구조와 각 절의 실행순서
-- ******************************************************
--  - Clauses -                 - 실행순서 -
--
-- SELECT clause                    (5)
-- FROM clause                      (1)
-- WHERE clause                     (2)
-- GROUP BY clause                  (3)
-- HAVING clause                    (4)
-- ORDER BY clause                  (6)
-- ******************************************************


-- ------------------------------------------------------
--        *** SELECT 문의 기본문법 구조 ***
-- ------------------------------------------------------
-- SELECT [DISTINCT] { *, column [AS] [alias], ... }
-- FROM <테이블명>
-- WHERE <predicates>
-- ------------------------------------------------------

-- ------------------------------------------------------
-- 1. Comparison Operators (비교연산자)
-- ------------------------------------------------------
-- 1. operand1  =   operand2
-- 2. operand1  !=  operand2, 
--    operand1  <>  operand2, 
--    operand1  ^=  operand2
-- 3. operand1  >   operand2
-- 4. operand1  <   operand2
-- 5. operand1  >=  operand2
-- 6. operand1  <=  operand2
-- ------------------------------------------------------
SELECT
    employee_id,
    last_name,
    job_id,
    salary
FROM
    employees
WHERE
    salary >= 10000;


SELECT
    employee_id,
    last_name,
    job_id,
    salary
FROM
    employees
-- WHERE
--    last_name = 'King';
WHERE
    last_name = 'KING';


-- Date output format: RR/MM/DD only in the oracle SQL*Developer
SELECT
    employee_id,
    last_name,
    salary,
    hire_date   -- 채용일자 / 타입 DATE
FROM
    employees

-- <NUMBER> <-> <CHARACTER> <-> <DATE> 간에는,
-- 자동형변환이 됨!!! (*****)

-- 따라서, 아래의 조건식은 <DATE> > <CHARACTER> 의 비교식으로
-- 자동형변환에 의해, 당연히 비교가 가능해짐!
-- WHERE 
--    hire_date > '07/12/31';     -- for Oracle SQL*Developer
--    hire_date > '31-DEC-07';    -- for MS VSCODE

-- 자동형변환을 포기하고, 강제형변환 함수인 to_date()로 직접
-- DATE 타입으로 형변환시켜서, 비교하는 이유는: 가독성 확보
WHERE
    hire_date > to_date('07/12/31', 'RR/MM/DD');


-- ------------------------------------------------------
-- 2. BETWEEN operator: 
-- ------------------------------------------------------
-- WHERE column BETWEEN start AND end ( start <= X <= end )
-- ------------------------------------------------------
SELECT
    employee_id,
    last_name,
    salary,
    hire_dat
FROM
    employees
WHERE
    salary BETWEEN 7000 AND 8000;


SELECT 
    employee_id, 
    last_name, 
    salary, 
    hire_date
FROM 
    employees
--      OK only on the Oracle SQL*Developer       
-- WHERE 
--     hire_date BETWEEN '07/01/01' AND '08/12/31';          
    
WHERE 
    hire_date 
        BETWEEN to_date('07/12/31', 'RR/MM/DD') 
        AND to_date('08/12/31', 'RR/MM/DD');

