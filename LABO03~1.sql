-- INSERCIONES

-- 1. REGIONS
INSERT INTO regions VALUES (1, 'Europe');
INSERT INTO regions VALUES (2, 'America');
INSERT INTO regions VALUES (3, 'Asia');
INSERT INTO regions VALUES (4, 'Africa');
INSERT INTO regions VALUES (5, 'Oceania');

-- 2. COUNTRIES
INSERT INTO countries VALUES ('UK', 'United Kingdom', 1);
INSERT INTO countries VALUES ('DE', 'Germany', 1);
INSERT INTO countries VALUES ('FR', 'France', 1);
INSERT INTO countries VALUES ('US', 'United States of America', 2);
INSERT INTO countries VALUES ('CA', 'Canada', 2);
INSERT INTO countries VALUES ('BR', 'Brazil', 2);
INSERT INTO countries VALUES ('JP', 'Japan', 3);
INSERT INTO countries VALUES ('CN', 'China', 3);
INSERT INTO countries VALUES ('IN', 'India', 3);
INSERT INTO countries VALUES ('ZA', 'South Africa', 4);
INSERT INTO countries VALUES ('EG', 'Egypt', 4);
INSERT INTO countries VALUES ('NG', 'Nigeria', 4);
INSERT INTO countries VALUES ('AU', 'Australia', 5);
INSERT INTO countries VALUES ('NZ', 'New Zealand', 5);
INSERT INTO countries VALUES ('FJ', 'Fiji', 5);

-- 3. LOCATIONS
INSERT INTO locations VALUES (1000, '221B Baker Street', 'NW1 6XE', 'London', 'England', 'UK');
INSERT INTO locations VALUES (1001, 'Oxford Street 50', 'W1D 1BS', 'London', 'England', 'UK');
INSERT INTO locations VALUES (1002, 'Marienplatz 1', '80331', 'Munich', 'Bavaria', 'DE');
INSERT INTO locations VALUES (1003, 'Unter den Linden 77', '10117', 'Berlin', 'Berlin', 'DE');
INSERT INTO locations VALUES (1004, 'Champs-Élysées 10', '75008', 'Paris', 'Île-de-France', 'FR');
INSERT INTO locations VALUES (1005, 'Rue de Rivoli 200', '75001', 'Paris', 'Île-de-France', 'FR');
INSERT INTO locations VALUES (1006, '5th Avenue 350', '10018', 'New York', 'NY', 'US');
INSERT INTO locations VALUES (1007, '1600 Pennsylvania Ave', '20500', 'Washington', 'DC', 'US');
INSERT INTO locations VALUES (1008, 'Bay Street 200', 'M5J 2N8', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations VALUES (1009, 'Rue St-Catherine 80', 'H3B 1A5', 'Montreal', 'Quebec', 'CA');
INSERT INTO locations VALUES (1010, 'Paulista Avenue 1500', '01310-200', 'São Paulo', 'SP', 'BR');
INSERT INTO locations VALUES (1011, 'Copacabana 20', '22070-000', 'Rio de Janeiro', 'RJ', 'BR');
INSERT INTO locations VALUES (1012, 'Shinjuku 3-1', '160-0022', 'Tokyo', 'Tokyo', 'JP');
INSERT INTO locations VALUES (1013, 'Osaka Castle', '540-0002', 'Osaka', 'Osaka', 'JP');
INSERT INTO locations VALUES (1014, 'Nanjing Road 88', '200000', 'Shanghai', 'Shanghai', 'CN');
INSERT INTO locations VALUES (1015, 'Beijing Road 66', '100000', 'Beijing', 'Beijing', 'CN');
INSERT INTO locations VALUES (1016, 'MG Road 45', '560001', 'Bangalore', 'Karnataka', 'IN');
INSERT INTO locations VALUES (1017, 'Connaught Place 90', '110001', 'Delhi', 'Delhi', 'IN');
INSERT INTO locations VALUES (1018, 'Nelson Mandela Square', '2146', 'Johannesburg', 'Gauteng', 'ZA');
INSERT INTO locations VALUES (1019, 'Long Street 123', '8000', 'Cape Town', 'Western Cape', 'ZA');
INSERT INTO locations VALUES (1020, 'Tahrir Square 12', '11511', 'Cairo', 'Cairo', 'EG');
INSERT INTO locations VALUES (1021, 'Alexandria Corniche 22', '21500', 'Alexandria', 'Alexandria', 'EG');
INSERT INTO locations VALUES (1022, 'Victoria Island 77', '101241', 'Lagos', 'Lagos State', 'NG');
INSERT INTO locations VALUES (1023, 'Abuja Central Area', '900001', 'Abuja', 'FCT', 'NG');
INSERT INTO locations VALUES (1024, 'George St 500', '2000', 'Sydney', 'NSW', 'AU');
INSERT INTO locations VALUES (1025, 'Flinders St 250', '3000', 'Melbourne', 'Victoria', 'AU');
INSERT INTO locations VALUES (1026, 'Queen St 123', '1010', 'Auckland', 'Auckland', 'NZ');
INSERT INTO locations VALUES (1027, 'Lambton Quay 55', '6011', 'Wellington', 'Wellington', 'NZ');
INSERT INTO locations VALUES (1028, 'Victoria Parade', '679', 'Suva', 'Central', 'FJ');
INSERT INTO locations VALUES (1029, 'Nadi Airport Rd', '679', 'Nadi', 'Western', 'FJ');
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES (9000, 'Quinta Avenida 123', '10022', 'New York', 'NY', 'US');

-- 4. DEPARTMENTS
INSERT INTO departments VALUES (10, 'Administration', NULL, 1000);
INSERT INTO departments VALUES (20, 'Human Resources', NULL, 1008);
INSERT INTO departments VALUES (30, 'IT', NULL, 1012);
INSERT INTO departments VALUES (40, 'Finance', NULL, 1004);
INSERT INTO departments VALUES (50, 'Sales', NULL, 1010);
INSERT INTO departments VALUES (60, 'Marketing', NULL, 1014);
INSERT INTO departments VALUES (70, 'Logistics', NULL, 1016);
INSERT INTO departments VALUES (80, 'Customer Support', NULL, 1018);
INSERT INTO departments VALUES (90, 'Research and Development', NULL, 1024);
INSERT INTO departments VALUES (100, 'Operations', NULL, 1026);
INSERT INTO departments VALUES (110, 'Legal', NULL, 1020);
INSERT INTO departments VALUES (120, 'Training', NULL, 1022);
INSERT INTO departments (department_id, department_name, location_id)
VALUES (9000, 'Ventas Quinta', 9000);

-- 5. JOBS
INSERT INTO jobs VALUES ('AD_PRES', 'President', 20000, 40000);
INSERT INTO jobs VALUES ('AD_VP', 'Vice President', 15000, 30000);
INSERT INTO jobs VALUES ('AD_ASST', 'Administrative Assistant', 3000, 6000);
INSERT INTO jobs VALUES ('FI_MGR', 'Finance Manager', 8200, 16000);
INSERT INTO jobs VALUES ('FI_ACCOUNT', 'Accountant', 4200, 9000);
INSERT INTO jobs VALUES ('PU_MAN', 'Purchasing Manager', 8000, 15000);
INSERT INTO jobs VALUES ('PU_CLERK', 'Purchasing Clerk', 2500, 5500);
INSERT INTO jobs VALUES ('ST_MAN', 'Stock Manager', 5500, 8500);
INSERT INTO jobs VALUES ('ST_CLERK', 'Stock Clerk', 2000, 5000);
INSERT INTO jobs VALUES ('SA_MAN', 'Sales Manager', 10000, 20000);
INSERT INTO jobs VALUES ('SA_REP', 'Sales Representative', 6000, 12000);
INSERT INTO jobs VALUES ('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO jobs VALUES ('MK_MAN', 'Marketing Manager', 9000, 15000);
INSERT INTO jobs VALUES ('MK_REP', 'Marketing Representative', 4000, 9000);
INSERT INTO jobs VALUES ('HR_MAN', 'HR Manager', 7000, 12000);
INSERT INTO jobs VALUES ('HR_REP', 'HR Representative', 3000, 7000);

-- 6. EMPLOYEES
INSERT INTO employees VALUES (100, 'Wei', 'Zhang', 'WZHANG1', '515.123.1000', TO_DATE('2021-05-15','YYYY-MM-DD'), 'SA_MAN', 10575, 0.05, NULL, 120);
INSERT INTO employees VALUES (101, 'Oliver', 'Taylor', 'OTAYLOR1', '515.123.1001', TO_DATE('2016-12-02','YYYY-MM-DD'), 'MK_REP', 14311, 0.1, 100, 110);
INSERT INTO employees VALUES (102, 'John', 'Smith', 'JSMITH1', '515.123.1002', TO_DATE('2022-06-25','YYYY-MM-DD'), 'AD_PRES', 12249, 0.05, NULL, 80);
INSERT INTO employees VALUES (103, 'Emily', 'Davis', 'EDAVIS1', '515.123.1003', TO_DATE('2022-02-15','YYYY-MM-DD'), 'MK_REP', 8968, 0.15, NULL, 110);
INSERT INTO employees VALUES (104, 'Sophia', 'Wilson', 'SWILSON1', '515.123.1004', TO_DATE('2018-04-07','YYYY-MM-DD'), 'PU_CLERK', 3608, 0.05, NULL, 10);
INSERT INTO employees VALUES (105, 'Omar', 'Hassan', 'OHASSAN1', '515.123.1005', TO_DATE('2017-12-31','YYYY-MM-DD'), 'AD_ASST', 19794, 0.0, NULL, 80);
INSERT INTO employees VALUES (106, 'Arjun', 'Patel', 'APATEL1', '515.123.1006', TO_DATE('2017-08-28','YYYY-MM-DD'), 'AD_ASST', 11951, 0.0, 101, 10);
INSERT INTO employees VALUES (107, 'Zuri', 'Okafor', 'ZOKAFOR1', '515.123.1007', TO_DATE('2022-10-09','YYYY-MM-DD'), 'SA_MAN', 16334, 0.1, 104, 40);
INSERT INTO employees VALUES (108, 'Arjun', 'Patel', 'APATEL2', '515.123.1008', TO_DATE('2016-07-14','YYYY-MM-DD'), 'FI_ACCOUNT', 14058, 0.1, NULL, 110);
INSERT INTO employees VALUES (109, 'Noah', 'Anderson', 'NANDERSON1', '515.123.1009', TO_DATE('2015-08-31','YYYY-MM-DD'), 'FI_ACCOUNT', 19058, 0.05, 108, 20);
INSERT INTO employees VALUES (110, 'Jack', 'Thompson', 'JTHOMPSON1', '515.123.1010', TO_DATE('2016-11-06','YYYY-MM-DD'), 'MK_MAN', 6427, 0.1, 101, 70);
INSERT INTO employees VALUES (111, 'Fatima', 'Ali', 'FALI1', '515.123.1011', TO_DATE('2020-10-29','YYYY-MM-DD'), 'IT_PROG', 6725, 0.15, 108, 10);
INSERT INTO employees VALUES (112, 'Noah', 'Anderson', 'NANDERSON2', '515.123.1012', TO_DATE('2015-11-30','YYYY-MM-DD'), 'AD_VP', 13370, 0.05, 109, 60);
INSERT INTO employees VALUES (113, 'Omar', 'Hassan', 'OHASSAN2', '515.123.1013', TO_DATE('2018-03-23','YYYY-MM-DD'), 'AD_PRES', 11633, 0.15, 105, 30);
INSERT INTO employees VALUES (114, 'Akira', 'Tanaka', 'ATANAKA1', '515.123.1014', TO_DATE('2019-01-19','YYYY-MM-DD'), 'IT_PROG', 8137, 0.05, 111, 20);
INSERT INTO employees VALUES (115, 'Emily', 'Davis', 'EDAVIS2', '515.123.1015', TO_DATE('2015-09-21','YYYY-MM-DD'), 'MK_MAN', 16932, 0.1, NULL, 120);
INSERT INTO employees VALUES (116, 'Fatima', 'Ali', 'FALI2', '515.123.1016', TO_DATE('2015-10-08','YYYY-MM-DD'), 'SA_MAN', 18982, 0.0, 106, 60);
INSERT INTO employees VALUES (117, 'Mia', 'Martinez', 'MMARTINEZ1', '515.123.1017', TO_DATE('2022-02-11','YYYY-MM-DD'), 'SA_REP', 15618, 0.0, 109, 60);
INSERT INTO employees VALUES (118, 'Arjun', 'Patel', 'APATEL3', '515.123.1018', TO_DATE('2022-11-21','YYYY-MM-DD'), 'AD_PRES', 10335, 0.1, 110, 110);
INSERT INTO employees VALUES (119, 'Akira', 'Tanaka', 'ATANAKA2', '515.123.1019', TO_DATE('2019-09-26','YYYY-MM-DD'), 'ST_MAN', 19034, 0.1, 111, 10);
INSERT INTO employees VALUES (120, 'Priya', 'Sharma', 'PSHARMA1', '515.123.1020', TO_DATE('2019-06-08','YYYY-MM-DD'), 'ST_MAN', 7137, 0.1, 115, 60);
INSERT INTO employees VALUES (121, 'Michael', 'Johnson', 'MJOHNSON1', '515.123.1021', TO_DATE('2022-04-25','YYYY-MM-DD'), 'PU_MAN', 17905, 0.1, 119, 80);
INSERT INTO employees VALUES (122, 'Emily', 'Davis', 'EDAVIS3', '515.123.1022', TO_DATE('2019-03-18','YYYY-MM-DD'), 'HR_REP', 14993, 0.1, 118, 110);
INSERT INTO employees VALUES (123, 'Yuki', 'Sato', 'YSATO1', '515.123.1023', TO_DATE('2015-11-06','YYYY-MM-DD'), 'MK_REP', 16407, 0.15, 119, 30);
INSERT INTO employees VALUES (124, 'Liam', 'O’Connor', 'LOCONNOR1', '515.123.1024', TO_DATE('2021-03-10','YYYY-MM-DD'), 'ST_MAN', 5705, 0.1, 118, 20);
INSERT INTO employees VALUES (125, 'Olivia', 'Harris', 'OHARRIS1', '515.123.1025', TO_DATE('2017-02-06','YYYY-MM-DD'), 'AD_VP', 14362, 0.05, 100, 70);
INSERT INTO employees VALUES (126, 'Yuki', 'Sato', 'YSATO2', '515.123.1026', TO_DATE('2016-02-17','YYYY-MM-DD'), 'MK_REP', 7178, 0.05, 117, 20);
INSERT INTO employees VALUES (127, 'Aisha', 'Mohamed', 'AMOHAMED1', '515.123.1027', TO_DATE('2017-08-10','YYYY-MM-DD'), 'SA_MAN', 12923, 0.1, 112, 10);
INSERT INTO employees VALUES (128, 'Olivia', 'Harris', 'OHARRIS2', '515.123.1028', TO_DATE('2018-02-10','YYYY-MM-DD'), 'PU_MAN', 19186, 0.05, 112, 50);
INSERT INTO employees VALUES (129, 'Omar', 'Hassan', 'OHASSAN3', '515.123.1029', TO_DATE('2022-10-22','YYYY-MM-DD'), 'FI_ACCOUNT', 14077, 0.1, 121, 120);
INSERT INTO employees VALUES (130, 'Olivia', 'Harris', 'OHARRIS3', '515.123.1030', TO_DATE('2018-11-03','YYYY-MM-DD'), 'MK_MAN', 12843, 0.0, 126, 90);
INSERT INTO employees VALUES (131, 'Amelia', 'Walker', 'AWALKER1', '515.123.1031', TO_DATE('2017-11-04','YYYY-MM-DD'), 'ST_MAN', 12642, 0.05, 112, 20);
INSERT INTO employees VALUES (132, 'Lachlan', 'Williams', 'LWILLIAMS1', '515.123.1032', TO_DATE('2021-10-14','YYYY-MM-DD'), 'ST_CLERK', 19489, 0.05, 121, 10);
INSERT INTO employees VALUES (133, 'James', 'Brown', 'JBROWN1', '515.123.1033', TO_DATE('2020-06-06','YYYY-MM-DD'), 'FI_ACCOUNT', 6726, 0.05, 101, 80);
INSERT INTO employees VALUES (134, 'Emma', 'Brown', 'EBROWN1', '515.123.1034', TO_DATE('2018-01-18','YYYY-MM-DD'), 'SA_MAN', 3693, 0.0, 128, 120);
INSERT INTO employees VALUES (135, 'John', 'Smith', 'JSMITH2', '515.123.1035', TO_DATE('2018-01-13','YYYY-MM-DD'), 'MK_REP', 15857, 0.1, 112, 90);
INSERT INTO employees VALUES (136, 'Priya', 'Sharma', 'PSHARMA2', '515.123.1036', TO_DATE('2015-05-30','YYYY-MM-DD'), 'SA_REP', 5059, 0.1, 119, 120);
INSERT INTO employees VALUES (137, 'Emma', 'Brown', 'EBROWN2', '515.123.1037', TO_DATE('2020-07-21','YYYY-MM-DD'), 'HR_REP', 13735, 0.05, 118, 100);
INSERT INTO employees VALUES (138, 'Isabella', 'Rodriguez', 'IRODRIGUEZ1', '515.123.1038', TO_DATE('2022-10-24','YYYY-MM-DD'), 'SA_MAN', 6179, 0.05, 128, 20);
INSERT INTO employees VALUES (139, 'Mateo', 'Gomez', 'MGOMEZ1', '515.123.1039', TO_DATE('2021-10-05','YYYY-MM-DD'), 'PU_CLERK', 8806, 0.0, 135, 20);
INSERT INTO employees VALUES (140, 'Fatima', 'Ali', 'FALI3', '515.123.1040', TO_DATE('2022-08-25','YYYY-MM-DD'), 'PU_MAN', 9437, 0.1, 118, 20);
INSERT INTO employees VALUES (141, 'Aisha', 'Mohamed', 'AMOHAMED2', '515.123.1041', TO_DATE('2016-06-20','YYYY-MM-DD'), 'FI_ACCOUNT', 18848, 0.1, 104, 120);
INSERT INTO employees VALUES (142, 'Lucas', 'Müller', 'LMULLER1', '515.123.1042', TO_DATE('2016-07-30','YYYY-MM-DD'), 'ST_MAN', 11550, 0.05, 122, 50);
INSERT INTO employees VALUES (143, 'Emma', 'Brown', 'EBROWN3', '515.123.1043', TO_DATE('2019-07-16','YYYY-MM-DD'), 'ST_CLERK', 4276, 0.0, 106, 40);
INSERT INTO employees VALUES (144, 'Akira', 'Tanaka', 'ATANAKA3', '515.123.1044', TO_DATE('2018-06-02','YYYY-MM-DD'), 'PU_CLERK', 9303, 0.05, 130, 50);
INSERT INTO employees VALUES (145, 'Emma', 'Brown', 'EBROWN4', '515.123.1045', TO_DATE('2019-08-06','YYYY-MM-DD'), 'ST_MAN', 16918, 0.1, 141, 60);
INSERT INTO employees VALUES (146, 'Zuri', 'Okafor', 'ZOKAFOR2', '515.123.1046', TO_DATE('2019-05-28','YYYY-MM-DD'), 'PU_MAN', 9760, 0.05, 104, 100);
INSERT INTO employees VALUES (147, 'William', 'Lee', 'WLEE1', '515.123.1047', TO_DATE('2020-01-22','YYYY-MM-DD'), 'HR_REP', 18466, 0.15, 135, 80);
INSERT INTO employees VALUES (148, 'Emma', 'Brown', 'EBROWN5', '515.123.1048', TO_DATE('2018-04-15','YYYY-MM-DD'), 'ST_CLERK', 11414, 0.05, 143, 10);
INSERT INTO employees VALUES (149, 'Kwame', 'Mensah', 'KMENSAH1', '515.123.1049', TO_DATE('2015-02-14','YYYY-MM-DD'), 'PU_MAN', 16472, 0.15, 145, 120);
INSERT INTO employees VALUES (150, 'Alexander', 'Garcia', 'AGARCIA1', '515.123.1050', TO_DATE('2015-07-11','YYYY-MM-DD'), 'FI_ACCOUNT', 5521, 0.1, 101, 60);
INSERT INTO employees VALUES (151, 'Olivia', 'Harris', 'OHARRIS4', '515.123.1051', TO_DATE('2015-12-18','YYYY-MM-DD'), 'PU_MAN', 10734, 0.05, 121, 90);
INSERT INTO employees VALUES (152, 'Arjun', 'Patel', 'APATEL4', '515.123.1052', TO_DATE('2022-11-12','YYYY-MM-DD'), 'MK_REP', 11831, 0.15, 101, 80);
INSERT INTO employees VALUES (153, 'Arjun', 'Patel', 'APATEL5', '515.123.1053', TO_DATE('2018-12-09','YYYY-MM-DD'), 'AD_PRES', 16794, 0.15, 147, 70);
INSERT INTO employees VALUES (154, 'Kwame', 'Mensah', 'KMENSAH2', '515.123.1054', TO_DATE('2019-08-01','YYYY-MM-DD'), 'ST_CLERK', 11848, 0.1, 129, 20);
INSERT INTO employees VALUES (155, 'Mia', 'Martinez', 'MMARTINEZ2', '515.123.1055', TO_DATE('2019-09-16','YYYY-MM-DD'), 'FI_ACCOUNT', 6852, 0.05, 101, 60);
INSERT INTO employees VALUES (156, 'Kwame', 'Mensah', 'KMENSAH3', '515.123.1056', TO_DATE('2022-09-20','YYYY-MM-DD'), 'FI_ACCOUNT', 10815, 0.15, 124, 50);
INSERT INTO employees VALUES (157, 'Joseph', 'Abebe', 'JABEBE1', '515.123.1057', TO_DATE('2017-07-12','YYYY-MM-DD'), 'FI_ACCOUNT', 16592, 0.15, 147, 20);
INSERT INTO employees VALUES (158, 'Joseph', 'Abebe', 'JABEBE2', '515.123.1058', TO_DATE('2016-01-16','YYYY-MM-DD'), 'FI_ACCOUNT', 11263, 0.0, 147, 100);
INSERT INTO employees VALUES (159, 'John', 'Smith', 'JSMITH3', '515.123.1059', TO_DATE('2016-04-08','YYYY-MM-DD'), 'FI_MGR', 13290, 0.1, 146, 60);
INSERT INTO employees VALUES (160, 'Amelia', 'Miller', 'AMILLER1', '515.123.1060', TO_DATE('2017-08-05','YYYY-MM-DD'), 'PU_CLERK', 8391, 0.05, 137, 10);
INSERT INTO employees VALUES (161, 'Mohammed', 'Khan', 'MKHAN1', '515.123.1061', TO_DATE('2022-03-28','YYYY-MM-DD'), 'SA_MAN', 14492, 0.05, 122, 90);
INSERT INTO employees VALUES (162, 'Yuki', 'Sato', 'YSATO3', '515.123.1062', TO_DATE('2017-06-19','YYYY-MM-DD'), 'FI_ACCOUNT', 12021, 0.15, 150, 120);
INSERT INTO employees VALUES (163, 'Amelia', 'Walker', 'AWALKER2', '515.123.1063', TO_DATE('2019-07-27','YYYY-MM-DD'), 'PU_CLERK', 17543, 0.1, 151, 50);
INSERT INTO employees VALUES (164, 'Oliver', 'Taylor', 'OTAYLOR2', '515.123.1064', TO_DATE('2022-07-15','YYYY-MM-DD'), 'FI_ACCOUNT', 15062, 0.0, 152, 40);
INSERT INTO employees VALUES (165, 'Benjamin', 'Evans', 'BEVANS1', '515.123.1065', TO_DATE('2016-01-03','YYYY-MM-DD'), 'PU_CLERK', 12241, 0.05, 146, 90);
INSERT INTO employees VALUES (166, 'Sophia', 'Wilson', 'SWILSON2', '515.123.1066', TO_DATE('2017-09-13','YYYY-MM-DD'), 'PU_CLERK', 19104, 0.1, 115, 30);
INSERT INTO employees VALUES (167, 'William', 'Brown', 'WBROWN1', '515.123.1067', TO_DATE('2021-06-01','YYYY-MM-DD'), 'SA_MAN', 8421, 0.1, 164, 120);
INSERT INTO employees VALUES (168, 'Arjun', 'Patel', 'APATEL6', '515.123.1068', TO_DATE('2016-01-23','YYYY-MM-DD'), 'MK_MAN', 8908, 0.1, 119, 80);
INSERT INTO employees VALUES (169, 'Emily', 'Davis', 'EDAVIS4', '515.123.1069', TO_DATE('2018-05-17','YYYY-MM-DD'), 'ST_CLERK', 7036, 0.05, NULL, 40);
INSERT INTO employees VALUES (170, 'Mia', 'Martinez', 'MMARTINEZ3', '515.123.1070', TO_DATE('2022-05-27','YYYY-MM-DD'), 'SA_MAN', 6678, 0.0, 123, 80);
INSERT INTO employees VALUES (171, 'Aisha', 'Mohamed', 'AMOHAMED3', '515.123.1071', TO_DATE('2021-02-15','YYYY-MM-DD'), 'SA_REP', 6880, 0.0, 170, 90);
INSERT INTO employees VALUES (172, 'Joseph', 'Abebe', 'JABEBE3', '515.123.1072', TO_DATE('2022-01-10','YYYY-MM-DD'), 'PU_MAN', 9095, 0.15, 144, 20);
INSERT INTO employees VALUES (173, 'Lachlan', 'Williams', 'LWILLIAMS2', '515.123.1073', TO_DATE('2020-02-29','YYYY-MM-DD'), 'AD_PRES', 11822, 0.1, 168, 60);
INSERT INTO employees VALUES (174, 'Wei', 'Zhang', 'WZHANG2', '515.123.1074', TO_DATE('2017-03-09','YYYY-MM-DD'), 'PU_CLERK', 14247, 0.15, 149, 40);
INSERT INTO employees VALUES (175, 'Mia', 'Martinez', 'MMARTINEZ4', '515.123.1075', TO_DATE('2016-05-23','YYYY-MM-DD'), 'PU_MAN', 14622, 0.05, 118, 30);
INSERT INTO employees VALUES (176, 'Yuki', 'Sato', 'YSATO4', '515.123.1076', TO_DATE('2019-07-04','YYYY-MM-DD'), 'ST_CLERK', 4480, 0.15, 100, 70);
INSERT INTO employees VALUES (177, 'Arjun', 'Patel', 'APATEL7', '515.123.1077', TO_DATE('2015-05-03','YYYY-MM-DD'), 'SA_MAN', 17369, 0.1, 157, 40);
INSERT INTO employees VALUES (178, 'Mia', 'Martinez', 'MMARTINEZ5', '515.123.1078', TO_DATE('2022-12-30','YYYY-MM-DD'), 'PU_CLERK', 10243, 0.0, 125, 70);
INSERT INTO employees VALUES (179, 'Henry', 'Clark', 'HCLARK1', '515.123.1079', TO_DATE('2021-05-11','YYYY-MM-DD'), 'PU_CLERK', 14989, 0.15, 129, 20);
INSERT INTO employees VALUES (180, 'Kwame', 'Mensah', 'KMENSAH4', '515.123.1080', TO_DATE('2022-10-10','YYYY-MM-DD'), 'ST_MAN', 15162, 0.15, 123, 90);
INSERT INTO employees VALUES (181, 'Mia', 'Martinez', 'MMARTINEZ6', '515.123.1081', TO_DATE('2015-03-07','YYYY-MM-DD'), 'PU_MAN', 17171, 0.15, 153, 20);
INSERT INTO employees VALUES (182, 'Charlotte', 'Moore', 'CMOORE1', '515.123.1082', TO_DATE('2020-12-14','YYYY-MM-DD'), 'FI_ACCOUNT', 9845, 0.05, 172, 20);
INSERT INTO employees VALUES (183, 'Lachlan', 'Williams', 'LWILLIAMS3', '515.123.1083', TO_DATE('2019-01-29','YYYY-MM-DD'), 'SA_REP', 7801, 0.0, 167, 70);
INSERT INTO employees VALUES (184, 'Emily', 'Davis', 'EDAVIS5', '515.123.1084', TO_DATE('2018-02-26','YYYY-MM-DD'), 'AD_PRES', 5753, 0.0, 150, 50);
INSERT INTO employees VALUES (185, 'Sophia', 'Wilson', 'SWILSON3', '515.123.1085', TO_DATE('2020-09-11','YYYY-MM-DD'), 'HR_REP', 11547, 0.15, 117, 30);
INSERT INTO employees VALUES (186, 'Jack', 'Thompson', 'JTHOMPSON2', '515.123.1086', TO_DATE('2018-06-20','YYYY-MM-DD'), 'PU_CLERK', 10265, 0.05, 142, 40);
INSERT INTO employees VALUES (187, 'Ethan', 'White', 'EWHITE1', '515.123.1087', TO_DATE('2016-11-23','YYYY-MM-DD'), 'PU_MAN', 17678, 0.0, 110, 50);
INSERT INTO employees VALUES (188, 'Sophia', 'Wilson', 'SWILSON4', '515.123.1088', TO_DATE('2016-02-09','YYYY-MM-DD'), 'PU_CLERK', 8940, 0.15, 122, 30);
INSERT INTO employees VALUES (189, 'Priya', 'Sharma', 'PSHARMA3', '515.123.1089', TO_DATE('2016-10-04','YYYY-MM-DD'), 'SA_REP', 16607, 0.05, 176, 20);
INSERT INTO employees VALUES (190, 'Priya', 'Sharma', 'PSHARMA4', '515.123.1090', TO_DATE('2015-03-28','YYYY-MM-DD'), 'ST_CLERK', 18659, 0.1, 116, 50);
INSERT INTO employees VALUES (191, 'Emily', 'Davis', 'EDAVIS6', '515.123.1091', TO_DATE('2022-09-08','YYYY-MM-DD'), 'ST_CLERK', 16533, 0.15, 186, 60);
INSERT INTO employees VALUES (192, 'Jack', 'Thompson', 'JTHOMPSON3', '515.123.1092', TO_DATE('2020-08-14','YYYY-MM-DD'), 'PU_CLERK', 4810, 0.1, 140, 120);
INSERT INTO employees VALUES (193, 'Sophia', 'Wilson', 'SWILSON5', '515.123.1093', TO_DATE('2017-10-29','YYYY-MM-DD'), 'PU_CLERK', 11137, 0.05, 126, 40);
INSERT INTO employees VALUES (194, 'Mia', 'Martinez', 'MMARTINEZ7', '515.123.1094', TO_DATE('2020-12-17','YYYY-MM-DD'), 'ST_CLERK', 7676, 0.1, 125, 120);
INSERT INTO employees VALUES (195, 'Zuri', 'Okafor', 'ZOKAFOR3', '515.123.1095', TO_DATE('2022-01-09','YYYY-MM-DD'), 'ST_CLERK', 9365, 0.1, 135, 70);
INSERT INTO employees VALUES (196, 'William', 'Smith', 'WSMITH1', '515.123.1096', TO_DATE('2018-05-05','YYYY-MM-DD'), 'SA_REP', 6891, 0.05, 179, 40);
INSERT INTO employees VALUES (197, 'Mia', 'Martinez', 'MMARTINEZ8', '515.123.1097', TO_DATE('2020-03-15','YYYY-MM-DD'), 'ST_CLERK', 15757, 0.1, 175, 70);
INSERT INTO employees VALUES (198, 'Akira', 'Tanaka', 'ATANAKA4', '515.123.1098', TO_DATE('2016-04-04','YYYY-MM-DD'), 'SA_MAN', 6860, 0.05, 119, 90);
INSERT INTO employees VALUES (199, 'Amelia', 'Walker', 'AWALKER3', '515.123.1099', TO_DATE('2021-01-30','YYYY-MM-DD'), 'PU_CLERK', 18894, 0.05, 116, 60);
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, job_id, salary, department_id)
VALUES (9000, 'Carlos', 'Ramírez', 'cramirez@example.com', SYSDATE, 'SA_REP', 3500, 9000);
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, job_id, salary, department_id)
VALUES (9001, 'Juan', 'Pérez', 'jperez@example.com', SYSDATE, 'IT_PROG', 4000, 9000);
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, job_id, salary, department_id)
VALUES (9002, 'María', 'Gómez', 'mgomez@example.com', SYSDATE, 'IT_PROG', 4200, 9000);

-- 7. JOB_HISTORY
INSERT INTO job_history VALUES (100, TO_DATE('2021-08-25', 'YYYY-MM-DD'), TO_DATE('2022-08-25', 'YYYY-MM-DD'), 'AD_ASST', 40);
INSERT INTO job_history VALUES (100, TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-12-31','YYYY-MM-DD'), 'SA_REP', 40);
INSERT INTO job_history VALUES (100, TO_DATE('2020-01-01','YYYY-MM-DD'), TO_DATE('2020-12-31','YYYY-MM-DD'), 'SA_MAN', 40);
INSERT INTO job_history VALUES (100, TO_DATE('2021-01-01','YYYY-MM-DD'), TO_DATE('2021-07-31','YYYY-MM-DD'), 'AD_ASST', 40);
INSERT INTO job_history VALUES (101, TO_DATE('2021-10-14', 'YYYY-MM-DD'), TO_DATE('2022-10-14', 'YYYY-MM-DD'), 'FI_MGR', 50);
INSERT INTO job_history VALUES (101, TO_DATE('2019-02-01','YYYY-MM-DD'), TO_DATE('2019-12-31','YYYY-MM-DD'), 'MK_REP', 50);
INSERT INTO job_history VALUES (101, TO_DATE('2020-01-01','YYYY-MM-DD'), TO_DATE('2020-12-31','YYYY-MM-DD'), 'MK_MAN', 50);
INSERT INTO job_history VALUES (102, TO_DATE('2021-12-03', 'YYYY-MM-DD'), TO_DATE('2022-12-03', 'YYYY-MM-DD'), 'FI_ACCOUNT', 60);
INSERT INTO job_history VALUES (102, TO_DATE('2018-03-01','YYYY-MM-DD'), TO_DATE('2018-12-31','YYYY-MM-DD'), 'IT_PROG', 60);
INSERT INTO job_history VALUES (102, TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-12-31','YYYY-MM-DD'), 'FI_ACCOUNT', 60);
INSERT INTO job_history VALUES (103, TO_DATE('2022-01-22', 'YYYY-MM-DD'), TO_DATE('2023-01-22', 'YYYY-MM-DD'), 'PU_MAN', 70);
INSERT INTO job_history VALUES (103, TO_DATE('2019-05-01','YYYY-MM-DD'), TO_DATE('2020-04-30','YYYY-MM-DD'), 'PU_CLERK', 70);
INSERT INTO job_history VALUES (104, TO_DATE('2022-03-13', 'YYYY-MM-DD'), TO_DATE('2023-03-13', 'YYYY-MM-DD'), 'PU_CLERK', 80);
INSERT INTO job_history VALUES (104, TO_DATE('2020-06-01','YYYY-MM-DD'), TO_DATE('2021-05-31','YYYY-MM-DD'), 'ST_CLERK', 80);
INSERT INTO job_history VALUES (105, TO_DATE('2022-05-02', 'YYYY-MM-DD'), TO_DATE('2023-05-02', 'YYYY-MM-DD'), 'ST_MAN', 90);
INSERT INTO job_history VALUES (105, TO_DATE('2020-07-01','YYYY-MM-DD'), TO_DATE('2021-06-30','YYYY-MM-DD'), 'SA_REP', 90);
INSERT INTO job_history VALUES (106, TO_DATE('2022-06-21', 'YYYY-MM-DD'), TO_DATE('2023-06-21', 'YYYY-MM-DD'), 'ST_CLERK', 100);
INSERT INTO job_history VALUES (107, TO_DATE('2022-08-10', 'YYYY-MM-DD'), TO_DATE('2023-08-10', 'YYYY-MM-DD'), 'SA_MAN', 110);
INSERT INTO job_history VALUES (108, TO_DATE('2022-09-29', 'YYYY-MM-DD'), TO_DATE('2023-09-29', 'YYYY-MM-DD'), 'SA_REP', 120);
INSERT INTO job_history VALUES (109, TO_DATE('2022-11-18', 'YYYY-MM-DD'), TO_DATE('2023-11-18', 'YYYY-MM-DD'), 'IT_PROG', 10);
INSERT INTO job_history VALUES (110, TO_DATE('2023-01-07', 'YYYY-MM-DD'), TO_DATE('2024-01-07', 'YYYY-MM-DD'), 'MK_MAN', 20);
INSERT INTO job_history VALUES (111, TO_DATE('2023-02-26', 'YYYY-MM-DD'), TO_DATE('2024-02-26', 'YYYY-MM-DD'), 'MK_REP', 30);
INSERT INTO job_history (employee_id, start_date, end_date, job_id, department_id)
VALUES (9001, TO_DATE('2022-01-01','YYYY-MM-DD'), TO_DATE('2023-01-01','YYYY-MM-DD'), 'IT_PROG', 9000);



