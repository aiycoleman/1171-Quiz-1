DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    employee_id serial PRIMARY KEY,
    name text NOT NULL,
    job text NOT NULL,
    salary int NOT NULL,
    create_at timestamp(0) with time zone NOT NULL DEFAULT NOW()
);

INSERT INTO employees(name, job, salary)
VALUES ('Hilary Ackerman', 'Manager', 3500),
       ('Stephanie Coleman', 'Teller', 1530),
       ('Alexander Ishim', 'Accountant', 2100),
       ('Levi Acosta', 'Security Gaurd', 750),
       ('Martha Echaverria', 'Secuirty Gaurd', 900);

SELECT employee_id, name, job, salary, create_at
FROM employees
ORDER BY name DESC;
