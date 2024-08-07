INSERT INTO departments (department_name)
VALUES ('Chief Executive Suite'),                       -- 1
       ('Human Resources'),                             -- 2
       ('Custodial Service'),                           -- 3
       ('Customer Service'),                            -- 4
       ('Legal Services'),                              -- 5
       ('Funkadelic'),                                  -- 6
       ('Maintenance'),                                 -- 7
       ('Logistics'),                                   -- 8
       ('Information Technology'),                      -- 9
       ('Security'),                                    -- 10
       ('Product Development'),                         -- 11
       ('Marketing'),                                   -- 12
       ('Mystery Department');                          -- 13
       
INSERT INTO roles (role_title, salary, management, department_id)
VALUES ('Chief Executive Officer', 83000000, true, 1),  -- 1
       ('Chief Financial Officer', 38000000, true, 1),  -- 2
       ('Chief Technology Officer', 40000000, true, 1), -- 3
       ('Chief Operations Officer', 42000000 , true, 1),-- 4
       --
       ('Minister of Funk', 340000, true, 6),           -- 5
       ('Grandmaster of Funk', 380000, true, 6),        -- 6
       ('Funkmeister', 360000, true, 6),                -- 7
       ('Slap-bass Specialist', 300000, false, 6),      -- 8
       ('The Embodiment of Funk', 280000, false, 6),    -- 9
       ('Funk Mistress', 400000, false, 6),             -- 10
       ('Percussionist', 280000, false, 6),             -- 11
       ('Funk Project Manager', 290000, true, 6),       -- 12
       --
       ('Chief Custodian', 580000, false, 3),           -- 13
       ('Custodian Specialist', 180000, false, 3),      -- 14
       --
       ('Security Specialist', 75000, false, 10),       -- 15
       --
       ('Logistic Project Manager', 120000, true, 8), -- 16
       --
       ('IT President', 495000, true, 9),   -- 17
       ('IT Vice President', 200000, true, 9), -- 18
       ('Lead IT Specialist', 95000, false, 9), -- 19
       ('Sr. IT Specialist', 75000, false, 9), -- 20
       ('Jr. IT Specialist', 65000, false, 9), -- 21
       ('IT Support', 45000 , false, 9), -- 22
       ('IT Admin', 120000, true, 9), -- 23
       ('IT Guru', 300000, false, 9), -- 24
       --
       ('Logistic Specialist', 88000, false, 8), -- 25
       ('Chief of Logistics', 500000, true, 8), -- 26
       ('Logistic Brokering', 150000, false, 8), -- 27
       ('Logistic Analytics', 150000, false, 8), -- 28
       --
       ('Legal Consultant', 98000, true, 4), -- 29
       ('Paralegal', 65000, true, 4), -- 30
       ('Legal Assistant', 78000, true, 4), -- 31
       ('President of Legal Services', 1000000, true, 4), -- 32
       ('Vice President of Legal Services', 600000, true, 4), -- 33
       --
       ('Lead Product Designer', 1, true, 11), -- 34
       ('Product Manufacturer', 2, true, 11), -- 35
       ('Jr. Product Designer', 5, false, 11), -- 36
       ('Sr. Product Designer', 2, true, 11), -- 37
       --
       ('Marketing Manager', 3, true, 12), -- 38
       ('Marketing Assistant', 4 , true, 12), -- 39
       ('Jr. Graphic Designer', 1, true, 12), -- 40
       ('Sr. Graphic Designer', 5, true, 12), -- 41
       ('Intern', 900000000, false, 12), -- 42
       --
       ('Mystery Person', 3000000000, false, 13), -- 43
       --
       ('HR Manager', 200000, true, 2), -- 44
       ('HR Assistant', 65000, false, 2), -- 45
       ('Benefits Specialist', 75000, false, 2), -- 46
       ('Retirement Benefits Specialist', 75000, false, 2), -- 47
       --
       ('Chief of Security', 275000, false, 10),       -- 48
       ('Security Comms', 175000, false, 10),       -- 49
       --
       ('Jr. Advocacy Specialist', 45000, false, 4),       -- 50
       ('Sr. Advocacy Specialist', 65000, false, 4),       -- 51
       ('Advocacy Manager', 85000, true, 4),              -- 52
       ('President of Advocacy', 225000, true, 4),         -- 53
       ('Vice President of Advocacy', 125000, true, 4),    -- 54
       --
       ('Maintenance Specialist', 45000, false, 4),       -- 55
       ('Chief Maintenance Specialist', 65000, false, 4),       -- 56
       ('Supplier', 85000, true, 4);              -- 57
       
INSERT INTO employees (first_name, last_name, role_id, manager_id)
-- C Suite
VALUES ('Sofia','Santos', 1, NULL), --1
       ('Junaid', 'Khan', 2, NULL), --2
       ('Matias', 'Gonzalez', 3, NULL), --3
       ('Farah', 'Malik', 4, NULL), --4
       -- Custodian
       ('Solomon', 'Asante', 13, NULL), --5
       ('Mai', 'Nguyen', 14, 5), --6
       ('Andrej', 'Novak', 14, 5), --7
       ('Sakina', 'Amini', 14, 5), --8
       ('Roberto', 'Vargas', 14, 5), --9
       -- Security
       ('Zainab', 'Abdul', 49, NULL), --10
       ('Jan', 'Kowalski', 50, 10), --11
       ('Yasmin', 'Bashir', 15, 10), --12
       ('Francisco', 'Torres', 15, 10), --13
       ('Samira', 'Abdullahi', 15, 10), --14
       -- Log
       ('Chen', 'Wei', 26, NULL), --15
       ('Nikolai', 'Volkov', 16, 15), --16
       ('Aliyah', 'Brown', 25, 16), --17
       ('Felipe', 'Silva', 27, 16), --18
       ('Mariam', 'Khalid', 28, 16), --19
       -- FUNK
       ('Satoshi', 'Yamamoto', 5, NULL), --20
       ('Liliana', 'Costa', 6, NULL), --21
       ('Omar', 'El-Sayed', 7, 21), --22
       ('Mateusz', 'Kwiatkowski', 8, 22), --23
       ('Keiko', 'Mori', 9, 22), --24
       ('Zahra', 'Begum', 10, 22), --25
       ('Lars', 'Jensen', 11, 22), --26
       ('Yasmine', 'Mahmoud', 12, NULL), --27
       -- HR
       ('Arianna', 'Conte', 44, NULL), --28
       ('Aditya', 'Rao', 45, 28), --29
       ('Felipe', 'Ramirez', 46, 28), --30
       ('Leila', 'Morales', 47, 28), --31
       ('Dmitry', 'Ivanov', 48, 28), --32
       -- Mystery
       ('Gustav', 'Lindholm', 5, NULL), --33
       -- Legal
       ('Carlos', 'Mendes', 32, NULL), --34
       ('Anika', 'Kumar', 33, 34), --35
       ('Pedro', 'Alvarez', 29, 34), --36
       ('Mei', 'Lin', 29, 34), --37
       ('Ivan', 'Petrov', 29, 34), --38
       ('Nia', 'Johnson', 29, 34), --39
       ('Aarav', 'Sharma', 30, 34), --40
       ('Liam', 'Sullivan', 30, 34), --41
       ('Mei', 'Wong', 31, 34), --42
       ('Anika', 'Muller', 31, 34), --43
       ('Juan', 'Rodriguez', 31, 34), --44
       -- Product
       ('Dmitry', 'Ivanov', 5, NULL), --45
       ('Keiko', 'Tanaka', 2, 45), --46
       ('Yara', 'Haddad', 3, 45), --47
       ('Carlos', 'Mendes', 4, 45), --48
       -- Marketing
       ('Elena', 'Popescu', 38, NULL), --49
       ('Nina', 'Kowalski', 39, 49), --50
       ('Sofia', 'Petrovic', 40, 49), --51
       ('Kofi', 'Mensah', 41, 49), --52
       ('Ana', 'Oliveira', 42 ,49), --53
       -- IT
       ('Hassan', 'Abdallah', 17, NULL), --54
       ('Lucia', 'Rossi', 18, 54), --55
       ('Olga', 'Morozova', 19, 54), --56
       ('Nguyen', 'Thi Mai', 20, 54), --57
       ('William', 'Brown', 21, 54), --58
       ('Maya', 'Cohen', 22, 54), --59
       ('Pierre', 'Dupont', 23, 54), --60
       ('Ingrid', 'Bjornstad', 24, 54), --61
       -- Customer Advocacy
       ('Sleve', 'McDichael', 54, NULL), --62
       ('Onson', 'Sweemey', 55, 62), --63
       ('Darryl', 'Archideld', 53, 62), --64
       ('Anatoli', 'Smorin', 53, 62), --65
       ('Rey', 'McSriff', 53, 62), --66
       ('Glenallen', 'Mixon', 53, 62), --67
       ('Mario', 'McAlwain', 52, 62), --68
       ('Raul', 'Chamgerlain', 52, 62), --69
       ('Kevin', 'Nogliny', 52, NULL), --70
       ('Tony', 'Smehrik', 52, 62), --71
       ('Bobson', 'Dugnutt', 52, 62), --72
       ('Willie', 'Dustice', 52, 62), --73
       ('Jeromy', 'Gride', 52, 62), --74
       ('Scott', 'Dourque', 52, 62), --75
       ('Shown', 'Furcotte', 51, 62), --76
       ('Dean', 'Wesrey', 51, 62), --77
       ('Mike', 'Truk', 51, 62), --78
       ('Dwigt', 'Rortugal', 51, 62), --79
       ('Tim', 'Sandaele', 51, 62), --80
       ('Karl', 'Dandleton', 51, 62), --81
       ('Mike', 'Sernandez', 51, 62), --82
       ('Todd', 'Bonzalez', 51, 62); --83