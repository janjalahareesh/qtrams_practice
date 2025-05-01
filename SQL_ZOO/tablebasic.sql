CREATE TABLE categories (
 category_id SERIAL NOT NULL PRIMARY KEY,
 category_name VARCHAR(255),
 description VARCHAR(255)
);



INSERT INTO categories (category_name, description)
VALUES
  ('Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
  ('Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
  ('Confections', 'Desserts, candies, and sweet breads'),
  ('Dairy Products', 'Cheeses'),
  ('Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
  ('Meat/Poultry', 'Prepared meats'),
  ('Produce', 'Dried fruit and bean curd'),
  ('Seafood', 'Seaweed and fish');


CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  customer_name VARCHAR(255),
  contact_name VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(255),
  postal_code VARCHAR(255),
  country VARCHAR(255)
);


INSERT INTO customers (customer_name,contact_name,address,city,postal_code,country)
VALUES

('Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
  ('Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitucion 2222', 'Mexico D.F.', '05021', 'Mexico'),
  ('Antonio Moreno Taquera', 'Antonio Moreno', 'Mataderos 2312', 'Mexico D.F.', '05023', 'Mexico'),
  ('Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
  ('Berglunds snabbkoep', 'Christina Berglund', 'Berguvsvegen 8', 'Lulea', 'S-958 22', 'Sweden'),
  ('Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
  ('Blondel pere et fils', 'Frederique Citeaux', '24, place Kleber', 'Strasbourg', '67000', 'France'),
  ('Bolido Comidas preparadas', 'Martin Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
  ('Bon app', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
  ('Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
  ('Bs Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
  ('Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
  ('Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'Mexico D.F.', '05022', 'Mexico'),
  ('Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
  ('Comercio Mineiro', 'Pedro Afonso', 'Av. dos Lusiadas, 23', 'Sao Paulo', '05432-043', 'Brazil'),
  ('Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery ', 'London', 'WX1 6LT', 'UK'),
  ('Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
  ('Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
  ('Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
  ('Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
  ('Familia Arquibaldo', 'Aria Cruz', 'Rua Oros, 92', 'Sao Paulo', '05442-030', 'Brazil'),
  ('FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
  ('Folies gourmandes', 'Martine Rance', '184, chaussee de Tournai', 'Lille', '59000', 'France'),
  ('Folk och fe HB', 'Maria Larsson', 'Akergatan 24', 'Brecke', 'S-844 67', 'Sweden'),
  ('Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'Munchen', '80805', 'Germany'),
  ('France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
  ('Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
  ('Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez ', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
  ('Galeria del gastronomo', 'Eduardo Saavedra', 'Rambla de Cataluna, 23', 'Barcelona', '08022', 'Spain'),
  ('Godos Cocina Tipica', 'Jose Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
  ('Gourmet Lanchonetes', 'Andre Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil'),
  ('Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
  ('GROSELLA-Restaurante', 'Manuel Pereira', '5th Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela'),
  ('Hanari Carnes', 'Mario Pontes', 'Rua do Paco, 67', 'Rio de Janeiro', '05454-876', 'Brazil'),
  ('HILARION-Abastos', 'Carlos Hernandez', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristobal', '5022', 'Venezuela'),
  ('Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
  ('Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', '', 'Ireland'),
  ('Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK'),
  ('Koniglich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
  ('La corne d abondance', 'Daniel Tonini', '67, avenue de l Europe', 'Versailles', '78000', 'France'),
  ('La maison d Asie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France'),
  ('Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada'),
  ('Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA'),
  ('Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Frankfurt a.M. ', '60528', 'Germany'),
  ('Lets Stop N Shop', 'Jaime Yorres', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA'),
  ('LILA-Supermercado', 'Carlos Gonzalez', 'Carrera 52 con Ave. Bolivar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela'),
  ('LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela'),
  ('Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA'),
  ('Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy'),
  ('Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium'),
  ('Mere Paillarde', 'Jean Fresniere', '43 rue St. Laurent', 'Montreal', 'H1J 1C3', 'Canada'),
  ('Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '04179', 'Germany'),
  ('North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK'),
  ('Oceano Atlantico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina'),
  ('Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', '99508', 'USA'),
  ('Ottilies Keseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Koln', '50739', 'Germany'),
  ('Paris specialites', 'Marie Bertrand', '265, boulevard Charonne', 'Paris', '75012', 'France'),
  ('Pericles Comidas clasicas', 'Guillermo Fernandez', 'Calle Dr. Jorge Cash 321', 'Mexico D.F.', '05033', 'Mexico'),
  ('Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburg', '5020', 'Austria'),
  ('Princesa Isabel Vinhoss', 'Isabel de Castro', 'Estrada da saude n. 58', 'Lisboa', '1756', 'Portugal'),
  ('Que Delicia', 'Bernardo Batista', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil'),
  ('Queen Cozinha', 'Lucia Carvalho', 'Alameda dos Canarios, 891', 'Sao Paulo', '05487-020', 'Brazil'),
  ('QUICK-Stop', 'Horst Kloss', 'Taucherstrasse 10', 'Cunewalde', '01307', 'Germany'),
  ('Rancho grande', 'Sergio Gutiarrez', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina'),
  ('Rattlesnake Canyon Grocery', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA'),
  ('Reggiani Caseifici', 'Maurizio Moroni', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy'),
  ('Ricardo Adocicados', 'Janete Limeira', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil'),
  ('Richter Supermarkt', 'Michael Holz', 'Grenzacherweg 237', 'Genève', '1203', 'Switzerland'),
  ('Romero y tomillo', 'Alejandra Camino', 'Gran Via, 1', 'Madrid', '28001', 'Spain'),
  ('Santa Gourmet', 'Jonas Bergulfsen', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway'),
  ('Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', '83720', 'USA'),
  ('Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK'),
  ('Simons bistro', 'Jytte Petersen', 'Vinbeltet 34', 'Kobenhavn', '1734', 'Denmark'),
  ('Specialites du monde', 'Dominique Perrier', '25, rue Lauriston', 'Paris', '75016', 'France'),
  ('Split Rail Beer & Ale', 'Art Braunschweiger', 'P.O. Box 555', 'Lander', '82520', 'USA'),
  ('Supremes delices', 'Pascale Cartrain', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium'),
  ('The Big Cheese', 'Liz Nixon', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA'),
  ('The Cracker Box', 'Liu Wong', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA'),
  ('Toms Spezialiteten', 'Karin Josephs', 'Luisenstr. 48', 'Manster', '44087', 'Germany'),
  ('Tortuga Restaurante', 'Miguel Angel Paolino', 'Avda. Azteca 123', 'Mexico D.F.', '05033', 'Mexico'),
  ('Tradicao Hipermercados', 'Anabela Domingues', 'Av. Ines de Castro, 414', 'Sao Paulo', '05634-030', 'Brazil'),
  ('Trails Head Gourmet Provisioners', 'Helvetius Nagy', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA'),
  ('Vaffeljernet', 'Palle Ibsen', 'Smagsloget 45', 'Arhus', '8200', 'Denmark'),
  ('Victuailles en stock', 'Mary Saveley', '2, rue du Commerce', 'Lyon', '69004', 'France'),
  ('Vins et alcools Chevalier', 'Paul Henriot', '59 rue de l Abbaye', 'Reims', '51100', 'France'),
  ('Die Wandernde Kuh', 'Rita Moller', 'Adenauerallee 900', 'Stuttgart', '70563', 'Germany'),
  ('Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', '90110', 'Finland'),
  ('Wellington Importadora', 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
  ('White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA'),
  ('Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland'),
  ('Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland');


CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(255),
  category_id VARCHAR(255),
  unit VARCHAR(255),
  price VARCHAR(255)
);

INSERT INTO products (product_id, product_name, category_id, unit, price)
VALUES
  (1, 'Chais', 1, '10 boxes x 20 bags', 18),
  (2, 'Chang', 1, '24 - 12 oz bottles', 19),
  (3, 'Aniseed Syrup', 2, '12 - 550 ml bottles', 10),
  (4, 'Chef Antons Cajun Seasoning', 2, '48 - 6 oz jars', 22),
  (5, 'Chef Antons Gumbo Mix', 2, '36 boxes', 21.35),
  (6, 'Grandmas Boysenberry Spread', 2, '12 - 8 oz jars', 25),
  (7, 'Uncle Bobs Organic Dried Pears', 7, '12 - 1 lb pkgs.', 30),
  (8, 'Northwoods Cranberry Sauce', 2, '12 - 12 oz jars', 40),
  (9, 'Mishi Kobe Niku', 6, '18 - 500 g pkgs.', 97),
  (10, 'Ikura', 8, '12 - 200 ml jars', 31),
  (11, 'Queso Cabrales', 4, '1 kg pkg.', 21),
  (12, 'Queso Manchego La Pastora', 4, '10 - 500 g pkgs.', 38),
  (13, 'Konbu', 8, '2 kg box', 6),
  (14, 'Tofu', 7, '40 - 100 g pkgs.', 23.25),
  (15, 'Genen Shouyu', 2, '24 - 250 ml bottles', 15.5),
  (16, 'Pavlova', 3, '32 - 500 g boxes', 17.45),
  (17, 'Alice Mutton', 6, '20 - 1 kg tins', 39),
  (18, 'Carnarvon Tigers', 8, '16 kg pkg.', 62.5),
  (19, 'Teatime Chocolate Biscuits', 3, '10 boxes x 12 pieces', 9.2),
  (20, 'Sir Rodneys Marmalade', 3, '30 gift boxes', 81),
  (21, 'Sir Rodneys Scones', 3, '24 pkgs. x 4 pieces', 10),
  (22, 'Gustafs Kneckebrod', 5, '24 - 500 g pkgs.', 21),
  (23, 'Tunnbrod', 5, '12 - 250 g pkgs.', 9),
  (24, 'Guarani Fantastica', 1, '12 - 355 ml cans', 4.5),
  (25, 'NuNuCa Nui-Nougat-Creme', 3, '20 - 450 g glasses', 14),
  (26, 'Gumber Gummiberchen', 3, '100 - 250 g bags', 31.23),
  (27, 'Schoggi Schokolade', 3, '100 - 100 g pieces', 43.9),
  (28, 'Rassle Sauerkraut', 7, '25 - 825 g cans', 45.6),
  (29, 'Thoringer Rostbratwurst', 6, '50 bags x 30 sausgs.', 123.79),
  (30, 'Nord-Ost Matjeshering', 8, '10 - 200 g glasses', 25.89),
  (31, 'Gorgonzola Telino', 4, '12 - 100 g pkgs', 12.5),
  (32, 'Mascarpone Fabioli', 4, '24 - 200 g pkgs.', 32),
  (33, 'Geitost', 4, '500 g', 2.5),
  (34, 'Sasquatch Ale', 1, '24 - 12 oz bottles', 14),
  (35, 'Steeleye Stout', 1, '24 - 12 oz bottles', 18),
  (36, 'Inlagd Sill', 8, '24 - 250 g jars', 19),
  (37, 'Gravad lax', 8, '12 - 500 g pkgs.', 26),
  (38, 'Cote de Blaye', 1, '12 - 75 cl bottles', 263.5),
  (39, 'Chartreuse verte', 1, '750 cc per bottle', 18),
  (40, 'Boston Crab Meat', 8, '24 - 4 oz tins', 18.4),
  (41, 'Jacks New England Clam Chowder', 8, '12 - 12 oz cans', 9.65),
  (42, 'Singaporean Hokkien Fried Mee', 5, '32 - 1 kg pkgs.', 14),
  (43, 'Ipoh Coffee', 1, '16 - 500 g tins', 46),
  (44, 'Gula Malacca', 2, '20 - 2 kg bags', 19.45),
  (45, 'Rogede sild', 8, '1k pkg.', 9.5),
  (46, 'Spegesild', 8, '4 - 450 g glasses', 12),
  (47, 'Zaanse koeken', 3, '10 - 4 oz boxes', 9.5),
  (48, 'Chocolade', 3, '10 pkgs.', 12.75),
  (49, 'Maxilaku', 3, '24 - 50 g pkgs.', 20),
  (50, 'Valkoinen suklaa', 3, '12 - 100 g bars', 16.25),
  (51, 'Manjimup Dried Apples', 7, '50 - 300 g pkgs.', 53),
  (52, 'Filo Mix', 5, '16 - 2 kg boxes', 7),
  (53, 'Perth Pasties', 6, '48 pieces', 32.8),
  (54, 'Tourtiare', 6, '16 pies', 7.45),
  (55, 'Pate chinois', 6, '24 boxes x 2 pies', 24),
  (56, 'Gnocchi di nonna Alice', 5, '24 - 250 g pkgs.', 38),
  (57, 'Ravioli Angelo', 5, '24 - 250 g pkgs.', 19.5),
  (58, 'Escargots de Bourgogne', 8, '24 pieces', 13.25),
  (59, 'Raclette Courdavault', 4, '5 kg pkg.', 55),
  (60, 'Camembert Pierrot', 4, '15 - 300 g rounds', 34),
  (61, 'Sirop d arable', 2, '24 - 500 ml bottles', 28.5),
  (62, 'Tarte au sucre', 3, '48 pies', 49.3),
  (63, 'Vegie-spread', 2, '15 - 625 g jars', 43.9),
  (64, 'Wimmers gute Semmelknadel', 5, '20 bags x 4 pieces', 33.25),
  (65, 'Louisiana Fiery Hot Pepper Sauce', 2, '32 - 8 oz bottles', 21.05),
  (66, 'Louisiana Hot Spiced Okra', 2, '24 - 8 oz jars', 17),
  (67, 'Laughing Lumberjack Lager', 1, '24 - 12 oz bottles', 14),
  (68, 'Scottish Longbreads', 3, '10 boxes x 8 pieces', 12.5),
  (69, 'Gudbrandsdalsost', 4, '10 kg pkg.', 36),
  (70, 'Outback Lager', 1, '24 - 355 ml bottles', 15),
  (71, 'Flotemysost', 4, '10 - 500 g pkgs.', 21.5),
  (72, 'Mozzarella di Giovanni', 4, '24 - 200 g pkgs.', 34.8),
  (73, 'Red Kaviar', 8, '24 - 150 g jars', 15),
  (74, 'Longlife Tofu', 7, '5 kg pkg.', 10),
  (75, 'Rhenbreu Klosterbier', 1, '24 - 0.5 l bottles', 7.75),
  (76, 'Lakkalikeeri', 1, '500 ml ', 18),
  (77, 'Original Frankfurter grune Soae', 2, '12 boxes', 13);

CREATE TABLE orders (
  order_id SERIAL NOT NULL PRIMARY KEY,
  customer_id INT,
  order_date DATE
);

INSERT INTO orders (order_id, customer_id, order_date)
VALUES
  (10248, 90, '2021-07-04'),
  (10249, 81, '2021-07-05'),
  (10250, 34, '2021-07-08'),
  (10251, 84, '2021-07-08'),
  (10252, 76, '2021-07-09'),
  (10253, 34, '2021-07-10'),
  (10254, 14, '2021-07-11'),
  (10255, 68, '2021-07-12'),
  (10256, 88, '2021-07-15'),
  (10257, 35, '2021-07-16'),
  (10258, 20, '2021-07-17'),
  (10259, 13, '2021-07-18'),
  (10260, 55, '2021-07-19'),
  (10261, 61, '2021-07-19'),
  (10262, 65, '2021-07-22'),
  (10263, 20, '2021-07-23'),
  (10264, 24, '2021-07-24'),
  (10265, 7, '2021-07-25'),
  (10266, 87, '2021-07-26'),
  (10267, 25, '2021-07-29'),
  (10268, 33, '2021-07-30'),
  (10269, 89, '2021-07-31'),
  (10270, 87, '2021-08-01'),
  (10271, 75, '2021-08-01'),
  (10272, 65, '2021-08-02'),
  (10273, 63, '2021-08-05'),
  (10274, 85, '2021-08-06'),
  (10275, 49, '2021-08-07'),
  (10276, 80, '2021-08-08'),
  (10277, 52, '2021-08-09'),
  (10278, 5, '2021-08-12'),
  (10279, 44, '2021-08-13'),
  (10280, 5, '2021-08-14'),
  (10281, 69, '2021-08-14'),
  (10282, 69, '2021-08-15'),
  (10283, 46, '2021-08-16'),
  (10284, 44, '2021-08-19'),
  (10285, 63, '2021-08-20'),
  (10286, 63, '2021-08-21'),
  (10287, 67, '2021-08-22'),
  (10288, 66, '2021-08-23'),
  (10289, 11, '2021-08-26'),
  (10290, 15, '2021-08-27'),
  (10291, 61, '2021-08-27'),
  (10292, 81, '2021-08-28'),
  (10293, 80, '2021-08-29'),
  (10294, 65, '2021-08-30'),
  (10295, 85, '2021-09-02'),
  (10296, 46, '2021-09-03'),
  (10297, 7, '2021-09-04'),
  (10298, 37, '2021-09-05'),
  (10299, 67, '2021-09-06'),
  (10300, 49, '2021-09-09'),
  (10301, 86, '2021-09-09'),
  (10302, 76, '2021-09-10'),
  (10303, 30, '2021-09-11'),
  (10304, 80, '2021-09-12'),
  (10305, 55, '2021-09-13'),
  (10306, 69, '2021-09-16'),
  (10307, 48, '2021-09-17'),
  (10308, 2, '2021-09-18'),
  (10309, 37, '2021-09-19'),
  (10310, 77, '2021-09-20'),
  (10311, 18, '2021-09-20'),
  (10312, 86, '2021-09-23'),
  (10313, 63, '2021-09-24'),
  (10314, 65, '2021-09-25'),
  (10315, 38, '2021-09-26'),
  (10316, 65, '2021-09-27'),
  (10317, 48, '2021-09-30'),
  (10318, 38, '2021-10-01'),
  (10319, 80, '2021-10-02'),
  (10320, 87, '2021-10-03'),
  (10321, 38, '2021-10-03'),
  (10322, 58, '2021-10-04'),
  (10323, 39, '2021-10-07'),
  (10324, 71, '2021-10-08'),
  (10325, 39, '2021-10-09'),
  (10326, 8, '2021-10-10'),
  (10327, 24, '2021-10-11'),
  (10328, 28, '2021-10-14'),
  (10329, 75, '2021-10-15'),
  (10330, 46, '2021-10-16'),
  (10331, 9, '2021-10-16'),
  (10332, 51, '2021-10-17'),
  (10333, 87, '2021-10-18'),
  (10334, 84, '2021-10-21'),
  (10335, 37, '2021-10-22'),
  (10336, 60, '2021-10-23'),
  (10337, 25, '2021-10-24'),
  (10338, 55, '2021-10-25'),
  (10339, 51, '2021-10-28'),
  (10340, 9, '2021-10-29'),
  (10341, 73, '2021-10-29'),
  (10342, 25, '2021-10-30'),
  (10343, 44, '2021-10-31'),
  (10344, 89, '2021-11-01'),
  (10345, 63, '2021-11-04'),
  (10346, 65, '2021-11-05'),
  (10347, 21, '2021-11-06'),
  (10348, 86, '2021-11-07'),
  (10349, 75, '2021-11-08'),
  (10350, 41, '2021-11-11'),
  (10351, 20, '2021-11-11'),
  (10352, 28, '2021-11-12'),
  (10353, 59, '2021-11-13'),
  (10354, 58, '2021-11-14'),
  (10355, 4, '2021-11-15'),
  (10356, 86, '2021-11-18'),
  (10357, 46, '2021-11-19'),
  (10358, 41, '2021-11-20'),
  (10359, 72, '2021-11-21'),
  (10360, 7, '2021-11-22'),
  (10361, 63, '2021-11-22'),
  (10362, 9, '2021-11-25'),
  (10363, 17, '2021-11-26');

CREATE TABLE order_details (
   order_detail_id SERIAL PRIMARY KEY,
   order_id INT,
   product_id INT,
   quantity INT
);



INSERT INTO order_details (order_id, product_id, quantity)
VALUES
  (10248, 11, 12),
  (10248, 42, 10),
  (10248, 72, 5),
  (10249, 14, 9),
  (10249, 51, 40),
  (10250, 41, 10),
  (10250, 51, 35),
  (10250, 65, 15),
  (10251, 22, 6),
  (10251, 57, 15),
  (10251, 65, 20),
  (10252, 20, 40),
  (10252, 33, 25),
  (10252, 60, 40),
  (10253, 31, 20),
  (10253, 39, 42),
  (10253, 49, 40),
  (10254, 24, 15),
  (10254, 55, 21),
  (10254, 74, 21),
  (10255, 2, 20),
  (10255, 16, 35),
  (10255, 36, 25),
  (10255, 59, 30),
  (10256, 53, 15),
  (10256, 77, 12),
  (10257, 27, 25),
  (10257, 39, 6),
  (10257, 77, 15),
  (10258, 2, 50),
  (10258, 5, 65),
  (10258, 32, 6),
  (10259, 21, 10),
  (10259, 37, 1),
  (10260, 41, 16),
  (10260, 57, 50),
  (10260, 62, 15),
  (10260, 70, 21),
  (10261, 21, 20),
  (10261, 35, 20),
  (10262, 5, 12),
  (10262, 7, 15),
  (10262, 56, 2),
  (10263, 16, 60),
  (10263, 24, 28),
  (10263, 30, 60),
  (10263, 74, 36),
  (10264, 2, 35),
  (10264, 41, 25),
  (10265, 17, 30),
  (10265, 70, 20),
  (10266, 12, 12),
  (10267, 40, 50),
  (10267, 59, 70),
  (10267, 76, 15),
  (10268, 29, 10),
  (10268, 72, 4),
  (10269, 33, 60),
  (10269, 72, 20),
  (10270, 36, 30),
  (10270, 43, 25),
  (10271, 33, 24),
  (10272, 20, 6),
  (10272, 31, 40),
  (10272, 72, 24),
  (10273, 10, 24),
  (10273, 31, 15),
  (10273, 33, 20),
  (10273, 40, 60),
  (10273, 76, 33),
  (10274, 71, 20),
  (10274, 72, 7),
  (10275, 24, 12),
  (10275, 59, 6),
  (10276, 10, 15),
  (10276, 13, 10),
  (10277, 28, 20),
  (10277, 62, 12),
  (10278, 44, 16),
  (10278, 59, 15),
  (10278, 63, 8),
  (10278, 73, 25),
  (10279, 17, 15),
  (10280, 24, 12),
  (10280, 55, 20),
  (10280, 75, 30),
  (10281, 19, 1),
  (10281, 24, 6),
  (10281, 35, 4),
  (10282, 30, 6),
  (10282, 57, 2),
  (10283, 15, 20),
  (10283, 19, 18),
  (10283, 60, 35),
  (10283, 72, 3),
  (10284, 27, 15),
  (10284, 44, 21),
  (10284, 60, 20),
  (10284, 67, 5),
  (10285, 1, 45),
  (10285, 40, 40),
  (10285, 53, 36),
  (10286, 35, 100),
  (10286, 62, 40),
  (10287, 16, 40),
  (10287, 34, 20),
  (10287, 46, 15),
  (10288, 54, 10),
  (10288, 68, 3),
  (10289, 3, 30),
  (10289, 64, 9),
  (10290, 5, 20),
  (10290, 29, 15),
  (10290, 49, 15),
  (10290, 77, 10),
  (10291, 13, 20),
  (10291, 44, 24),
  (10291, 51, 2),
  (10292, 20, 20),
  (10293, 18, 12),
  (10293, 24, 10),
  (10293, 63, 5),
  (10293, 75, 6),
  (10294, 1, 18);


CREATE TABLE testproducts (
   testproduct_id SERIAL NOT NULL PRIMARY KEY,
   product_name VARCHAR(255),
   category_id INT
);

INSERT INTO testproducts (product_name, category_id)
VALUES
  ('Johns Fruit Cake', 3),
  ('Marys Healthy Mix', 9),
  ('Peters Scary Stuff', 10),
  ('Jims Secret Recipe', 11),
  ('Elisabeths Best Apples', 12),
  ('Janes Favorite Cheese', 4),
  ('Billys Home Made Pizza', 13),
  ('Ellas Special Salmon', 8),
  ('Roberts Rich Spaghetti', 5),
  ('Mias Popular Ice', 14);

 SELECT 
  product_name,
  CASE
    WHEN price < 10 THEN 'low price product'
    WHEN price > 50 THEN 'high price product',
    ELSE 'normal product'
  END AS price_category
FROM products;


SELECT order_details.order_id, SUM(products.price) AS total_price
FROM order_details
LEFT JOIN products ON order_details.product_id = products.product_id
GROUP BY order_details.order_id
HAVING SUM(products.price) < 200.00

SELECT * FROM order_details;

SELECT * FROM products;

SELECT * FROM orders;

SELECT * FROM testproducts;

SELECT * FROM categories;

SELECT * FROM customers;

SELECT * FROM products
ORDER BY product_name;

SELECT * FROM customers
LIMIT 20 OFFSET 40;

SELECT COUNT (customer_id)
FROM customers;

SELECT product_id,product_name,category_name
FROM products
INNER JOIN categories ON products.category_id = categories.category_id;

SELECT testproduct_id,product_name,category_name
FROM testproducts
INNER JOIN categories ON testproducts.category_id = categories.category_id;

SELECT customer_id,product_name,category_name
FROM customers
INNER JOIN categories ON customers.category_id = categories.category_id;

SELECT product_id,product_name
FROM products
UNION
SELECT testproduct_id,product_name
FROM testproducts
ORDER BY product_id;

SELECT COUNT (customer_id),country
FROM customers
GROUP BY country;

SELECT customers.customer_name, SUM(products.price)
FROM order_details
LEFT JOIN products ON order_details.product_id = products.product_id
LEFT JOIN orders ON order_details.order_id = orders.order_id
LEFT JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customers.customer_name
HAVING SUM(products.price) > 1000.00;

SELECT customers.customer_name
FROM customers
WHERE EXISTS(
   SELECT order_id
   FROM orders
   WHERE customer_id = customers.customer_id
);

SELECT product_name
FROM products
WHERE product_id = ANY (
  SELECT product_id
  FROM order_details
  
)

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);

INSERT INTO users (first_name, last_name, email)
VALUES 
  ('Alice', 'Johnson', 'alice@example.com'),
  ('Bob', 'Smith', 'bob@example.com'),
  ('Charlie', 'Brown', 'charlie@example.com'),
  ('Hareesh', 'janjala', 'hareeshplvd2@example.com');


CREATE OR REPLACE FUNCTION get_full_name(p_user_id INT)
RETURNS TEXT AS $$
DECLARE
    full_name TEXT;
BEGIN
    SELECT first_name || ' ' || last_name
    INTO full_name
    FROM users
    WHERE id = p_user_id;

    RETURN full_name;
END;
$$ LANGUAGE plpgsql;


SELECT get_full_name(3);

 --storage procedure-- 
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name TEXT NOT NULL,
    emp_email TEXT UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE OR REPLACE PROCEDURE insert_employee(p_name TEXT, p_email TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO employees (emp_name, emp_email)
    VALUES (p_name, p_email);
    RAISE NOTICE 'Employee inserted: %, %', p_name, p_email;
END;
$$;

CALL insert_employee('John Doe', 'john.doe@example.com');

SELECT * FROM employees;
--functions--
CREATE OR REPLACE FUNCTION add_numbers(a INT, b INT)
RETURNS INT AS $$
BEGIN
    RETURN a + b;
END;
$$ LANGUAGE plpgsql;

SELECT add_numbers(100,200);




