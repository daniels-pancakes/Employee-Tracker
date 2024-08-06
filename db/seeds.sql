INSERT INTO departments (name)
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
       
INSERT INTO roles (title, salary, management, department_id)
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
       ('Mystery Person', 3000000000, false, 13); -- 43
       --
       ('HR Manager', 200000, true, 2), -- 44
       ('HR Assistant', 65000, false, 2), -- 45
       ('Benefits Specialist', 75000, false, 2), -- 46
       ('Retirement Benefits Specialist', 75000, false, 2), -- 47
       ('Intern', 900000000, false, 2), -- 48
       --
       ('Chief of Security', 275000, false, 10),       -- 49
       ('Security Comms', 175000, false, 10),       -- 50
       --
       ('Jr. Advocacy Specialist', 45000, false, 4),       -- 51
       ('Sr. Advocacy Specialist', 65000, false, 4),       -- 52
       ('Advocacy Manager', 85000, true, 4),              -- 53
       ('President of Advocacy', 225000, true, 4),         -- 54
       ('Vice President of Advocacy', 125000, true, 4),    -- 55
       --
       ('Maintenance Specialist', 45000, false, 4),       -- 56
       ('Chief Maintenance Specialist', 65000, false, 4),       -- 57
       ('Supplier', 85000, true, 4),              -- 58
       
INSERT INTO employees (first_name, last_name, role_id, manager_id)
-- C Suite
VALUES ('Sofia','Santos', 1, NULL), --1
       ('Junaid', 'Khan', 2, NULL), --2
       ('Matias', 'Gonzalez', 3, NULL), --3
       ('Farah', 'Malik', 4, NULL), --4
       -- Custodian
       ('Solomon', 'Asante', 13, NULL), --5
       ('Mai', 'Nguyen', 14, 13), --6
       ('Andrej', 'Novak', 14, 13), --7
       ('Sakina', 'Amini', 14, 13), --8
       ('Roberto', 'Vargas', 14, 13), --9
       -- Security
       ('Zainab', 'Abdul', 49, NULL), --10
       ('Jan', 'Kowalski', 50, 49), --11
       ('Yasmin', 'Bashir', 15, 49), --12
       ('Francisco', 'Torres', 15, 49), --13
       ('Samira', 'Abdullahi', 15, 49), --14
       -- Log
       ('Chen', 'Wei', 26, NULL), --15
       ('Nikolai', 'Volkov', 16, 26), --16
       ('Aliyah', 'Brown', 25, 16), --17
       ('Felipe', 'Silva', 27, 16), --18
       ('Mariam', 'Khalid', 28, 16), --19
       -- FUNK
       ('Satoshi', 'Yamamoto', 5, NULL), --20
       ('Liliana', 'Costa', 6, NULL), --21
       ('Omar', 'El-Sayed', 7, 6), --22
       ('Mateusz', 'Kwiatkowski', 8, 7), --23
       ('Keiko', 'Mori', 9, 7), --24
       ('Zahra', 'Begum', 10, 10), --25
       ('Lars', 'Jensen', 11, 7), --26
       ('Yasmine', 'Mahmoud', 12, NULL), --27
       -- HR
       ('Arianna', 'Conte', 44, NULL), --28
       ('Aditya', 'Rao', 45, 44), --29
       ('Felipe', 'Ramirez', 46, 44), --30
       ('Leila', 'Morales', 47, 44), --31
       ('Dmitry', 'Ivanov', 48, 44), --32
       -- Mystery
       ('Gustav', 'Lindholm', 5, false, NULL), --33
       -- Legal
       ('Carlos', 'Mendes', 32, 11), --34
       ('Anika', 'Kumar', 33, 8), --35
       ('Pedro', 'Alvarez', 29, 9), --36
       ('Mei', 'Lin', 29, 23), --37
       ('Ivan', 'Petrov', 29, 18), --38
       ('Nia', 'Johnson', 29, 14); --39
       ('Aarav', 'Sharma', 30, 4), --40
       ('Liam', 'Sullivan', 30, 0), --41
       ('Mei', 'Wong', 31, 0), --42
       ('Anika', 'Muller', 31, 15), --43
       ('Juan', 'Rodriguez', 31, 11), --44
       -- Product
       ('Dmitry', 'Ivanov', 5, 0), --45
       ('Keiko', 'Tanaka', 2, 11), --46
       ('Yara', 'Haddad', 3, 8), --47
       ('Carlos', 'Mendes', 4 ,9), --48
       -- Marketing
       ('Elena', 'Popescu', 38, NULL), --49
       ('Nina', 'Kowalski', 39, 38), --50
       ('Sofia', 'Petrovic', 40, 38), --51
       ('Kofi', 'Mensah', 41, 38), --52
       ('Ana', 'Oliveira', 42 ,38), --53
       -- IT
       ('Hassan', 'Abdallah', 17, NULL), --54
       ('Lucia', 'Rossi', 18, 17), --55
       ('Olga', 'Morozova', 19, 23), --56
       ('Nguyen', 'Thi Mai', 20, 19), --57
       ('William', 'Brown', 21, 19), --58
       ('Maya', 'Cohen', 22, 19), --59
       ('Pierre', 'Dupont', 23, 18), --60
       ('Ingrid', 'Bjornstad', 24, 18), --61
       -- Customer Advocacy
       ('Sleve', 'McDichael', 54, NULL), --62
       ('Onson', 'Sweemey', 55, 54), --63
       ('Darryl', 'Archideld', 53, 55), --64
       ('Anatoli', 'Smorin', 53, 55), --65
       ('Rey', 'McSriff', 53, 55), --66
       ('Glenallen', 'Mixon', 53, 55), --67
       ('Mario', 'McAlwain', 52, 18), --68
       ('Raul', 'Chamgerlain', 52, 18), --69
       ('Kevin', 'Nogliny', 52, NULL), --70
       ('Tony', 'Smehrik', 52, 17), --71
       ('Bobson', 'Dugnutt', 52, 23), --72
       ('Willie', 'Dustice', 52, 19), --73
       ('Jeromy', 'Gride', 52, 19), --74
       ('Scott', 'Dourque', 52, 19), --75
       ('Shown', 'Furcotte', 51, 18), --76
       ('Dean', 'Wesrey', 51, 18), --77
       ('Mike', 'Truk', 51, 23), --78
       ('Dwigt', 'Rortugal', 51, 19), --79
       ('Tim', 'Sandaele', 51, 19), --80
       ('Karl', 'Dandleton', 51, 19), --81
       ('Mike', 'Sernandez', 51, 18), --82
       ('Todd', 'Bonzalez', 51, 18), --83
    
       
