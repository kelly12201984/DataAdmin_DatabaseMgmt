--DATABASE CREATION

CREATE DATABASE DOGADOPTION
--DROP DATABASE IF EXISTS  DOGADOPTION

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Alter TABLE dog drop CONSTRAINT IF EXISTS pk_adopter_adopter_id
DROP TABLE IF EXISTS  adopter

-- create a table adopter 
USE DOGADOPTION


CREATE TABLE adopter (
    adopter_id INT IDENTITY(1,1),
    adopter_firstname Varchar(40) NOT NULL,
    adopter_lastname Varchar(40) NOT NULL,
    adopter_email Varchar(30) NULL,
    adopter_address_1 Varchar(30) NULL,
    adopter_address_2 Varchar(30) NULL, 
    adopter_city Varchar(30) NULL,
    adopter_state Varchar(2) NULL,
    adopter_PhoneNumber varchar(20) NOT NULL,
    adopter_username varchar(30) NULL,
    adopter_password varchar(20) NULL,
    Date_created date NOT NULL,
    CONSTRAINT pk_adopter_adopter_id PRIMARY KEY (adopter_id),
    )


INSERT INTO adopter (adopter_firstname,adopter_lastname,adopter_email,adopter_address_1,adopter_address_2,adopter_city,adopter_state,adopter_PhoneNumber,adopter_username,adopter_password,Date_created)
VALUES
('Adrian','Alexander','Adrian@syr.edu','22 Orange Street','APT 2','Syracuse','NY','999-302-9232','Adr_Ale','12ez','1/24/2023'),
('John','Doe','John@gmail.com','456 Elm St',NULL,'Syracuse','NY','999-987-6543','Jdoe','password123','1/24/2023'),
('Jane','Smith','Jane@syr.edu','789 Oak Ave',NULL,'Syracuse','NY','999-977-6544','Jsmith','mypassword','2/5/2023'),
('Robert','Johnson','Rob@gmail.com','101 Pine Rd','APT 3','Syracuse','NY','999-217-6775','Rjohnson','securepass123','2/27/2023'),
('Emily','Brown','Emily@yahoo.com','555 Oak St',NULL,'Syracuse','NY','339-987-6546','Ebrown','password','3/1/2023'),
('Michael','Lee','Michael@gmail.com','666 Elm Ave',NULL,'Syracuse','NY','424-987-6545','Mlee','bestpastword','3/15/2023'),
('Sarah','Clark','Sarah@syr.com','333 Cedar St','APT 2','Syracuse','NY','222-987-6548','Sclark','pass123','4/14/2023'),
('David','Miller','David@gmail.com','222 Maple Ln','APT 10','Syracuse','NY','999-999-6549','dmiller','pass321','4/20/2023'),
('Jessica','Wilson','Jessica@syr.edu','77 Maple Rd',NULL,'Syracuse','NY','999-987-6550','Jwilson','mysecretpassword','4/24/2023'),
('Daniel','Hall','Daniel@yahoo.com','2 Apple Sreet','APT 8','Syracuse','NY','989-987-6551','Dhall','securepass','5/16/2023'),
('Olivia','Garcia','Oliivia@gmail.com','8 Maple Rd',NULL,'Syracuse','NY','999-800-6552','Ogarcia','1234','5/21/2023'),
('David ','Chung','David@syr.edu','4 Apple Ln',NULL,'Syracuse','NY','999-987-6553','Dchung','bestpastword321','7/2/2023'),
('Mark','Anderson','Mark@yahoo.com','747 Maple Rd','APT 4','Syracuse','NY','999-987-6554','Manderson','mypassword1','7/26/2023'),
('Mike','Wood','Mike@hotmail.com','45 Maple Rd',NULL,'Syracuse','NY','999-900-6555','Mwood','mypassword2','9/2/2023'),
('Alex','Perez','Alex@gmail.com','72 Maple Rd',NULL,'Syracuse','NY','999-000-6556','Aperez','mypassword3','10/24/2023')
    select * from adopter

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Alter TABLE Vaccination_Record drop CONSTRAINT IF EXISTS  pk_Vaccination_Record_Vaccination_Record_id
DROP TABLE IF EXISTS Vaccination_Record

CREATE TABLE Vaccination_Record (
    Vaccination_Record_id INT IDENTITY(1,1),
    rabies_vaccine int NOT NULL,
    Distemper_vaccine int NOT NULL,
    Parvovirus_Vaccine int NOT NULL,
    Parainfluenza_vaccine int NOT NULL,
    Notes Varchar(100) NULL,
    CONSTRAINT pk_Vaccination_Record_Vaccination_Record_id PRIMARY KEY (Vaccination_Record_id)
)

select * from Vaccination_Record

INSERT INTO Vaccination_Record (rabies_vaccine,Distemper_vaccine,Parvovirus_Vaccine,Parainfluenza_vaccine,Notes)
VALUES
(1,1,1,1,'All set fully vaccinated. No Issues!'),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(1,0,1,1,'Needs Distemper vaccine'),
(1,1,1,0,'Needs Parainfluenza vaccine'),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(1,0,1,1,'Need to schedule for distemper vaccine'),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(0,1,1,1,'Needs Rabies vaccine'),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(0,0,1,1,'Still needs several vaccines'),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(1,1,1,1,NULL),
(1,1,1,1,NULL)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- create dog table
Alter TABLE dog drop CONSTRAINT IF EXISTS pk_Dog_dog_id
Alter TABLE dog drop CONSTRAINT IF EXISTS  fk_dog_adopter_id
DROP TABLE IF EXISTS dog

CREATE TABLE Dog (
    dog_id INT IDENTITY(1,1),
    dog_name varchar(20) NOT NULL,
    dog_age int NUll,
    dog_description varchar(100) NULL,
    dog_size varchar(20) NOT NULL,
    dog_gender varchar(10) NOT NULL,
    dog_color varchar(50) NULL,
    dog_desexed int NULL,
    dog_vaccinated VARCHAR(10) NULL,
    dog_vaccination_record_id INT NULL,
    dog_microchipped int NULL,
    dog_adoptionstatus varchar(40) NOT NULL,
    dog_entrydate Datetime NOT NULL,
    CONSTRAINT pk_Dog_dog_id PRIMARY KEY (dog_id),
    CONSTRAINT fk_dog_vaccination_record_id FOREIGN KEY (dog_vaccination_record_id) REFERENCES Vaccination_Record(vaccination_record_id)

    );
    select * from dog

INSERT INTO dog (dog_name,dog_age,dog_description,dog_size,dog_gender,dog_color,dog_desexed,dog_vaccinated,dog_vaccination_record_id,dog_microchipped,dog_adoptionstatus,dog_entrydate)
Values
('Milo',1,'friendly and playful','medium-sized','Male','Brown',1,1,1,1,'Adopted','1/24/2023'),
('Bailey',2,'energetic and curious','large-sized','Female','Black and Brown',1,1,2,0,'Adopted','1/24/2023'),
('Daisy',3,'cuddly and adventurous','large-sized','Female','Black and White',1,1,3,1,'Adopted','2/5/2023'),
('Charlie',4,'active and brave','large-sized','Male','Black',0,1,4,0,'Adopted','2/27/2023'),
('Cooper',5,'gentle and loving','large-sized','Male','Light Brown',0,1,5,1,'Adopted','3/1/2023'),
('Toby',6,'sweet and graceful','small-sized','Male','Light Brown',0,1,6,0,'Adopted','3/15/2023'),
('Jack',NULL,'brave and cheerful','small-sized','Male','golden brown',1,1,7,0,'Not Adopted','3/23/2023'),
('Zoe',7,'charming','small-sized','Female','white',0,1,8,0,'Adopted','4/14/2023'),
('Luna',8,'spirited and silly','medium-sized','Female','White',1,1,9,1,'Adopted','4/20/2023'),
('Winston',9,' curious and playful','medium-sized','Male','Black and Brown',0,1,10,1,'Adopted','4/24/2023'),
('Bear',10,'fluffy and sociable','large-sized','Male','Black and Brown',0,1,11,1,'Adopted','5/16/2023'),
('Kai',11,'independent and alert','large-sized','Male','white blackspot',1,1,12,0,'Adopted','5/21/2023'),
('Simba',5,'energetic and friendly','medium-sized','Female','Dark brown',1,1,13,0,'Not Adopted','6/25/2023'),
('Riley',12,'playful and affectionate','large-sized','Female','Black',0,1,14,0,'Adopted','7/2/2023'),
('Coco',13,'friendly and hypoallergenic','medium-sized','Female','Golden brown',0,1,15,0,'Adopted','7/26/2023'),
('Bella',4,'loyal and alert','medium-sized','Female','Golden brown',0,1,16,0,'Not Adopted','8/3/2023'),
('Oliver',2,'intelligent and active','large-sized','Male','Black',0,1,17,0,'Not Adopted','8/31/2023'),
('Rocky',14,'adorable and playful','large-sized','Male','Black',0,1,18,1,'Adopted','9/2/2023'),
('Bell',2,'energetic and friendly','small-sized','Male','Light Brown',0,1,19,0,'Not Adopted','9/30/2023'),
('Lily',NULL,'fluffy and sociable','medium-sized','Female','Dark brown',0,1,20,0,'Not Adopted','10/11/2023'),
('Zeus',15,'brave and cheerful','small-sized','Male','white with brown spots',0,1,21,1,'Adopted','10/24/2023'),
('Teddy',2,'alert and friendly','small-sized','Male','White and Light Brown',0,1,22,0,'Not Adopted','11/17/2023'),
('Ruby',2,'calm and affectionate','small-sized','Female','Light Brown',0,1,23,0,'Not Adopted','11/24/2023'),
('Ginger',NULL,'independent and alert','medium-sized','Female','Grey',0,1,24,0,'Not Adopted','12/1/2023'),
('Chloe',2,'gentle and protective','large-sized','Female','White',0,1,25,0,'Not Adopted','12/31/2023')

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 
Alter TABLE Dog_listing drop CONSTRAINT IF EXISTS pk_Dog_listing_dog_listing_id
Alter TABLE Dog_listing drop CONSTRAINT IF EXISTS fk_Dog_listing_dog_id
DROP TABLE IF EXISTS  Dog_listing


----create Dog_listing table
CREATE TABLE Dog_listing (
    dog_listing_id INT IDENTITY(1,1),
    dog_id int NOT NULL,
    dog_adoption_cost money NOT NULL,
    dog_adoption_date date NULL,
    creation_date date NOT NULL,
    CONSTRAINT pk_Dog_listing_dog_listing_id PRIMARY KEY (dog_listing_id),
    CONSTRAINT fk_Dog_listing_dog_id FOREIGN KEY (dog_id) REFERENCES dog(dog_id)
    );

    select * from Dog_listing

INSERT INTO dog_listing(dog_id,dog_adoption_cost,dog_adoption_date,creation_date)
VALUES
(1, 250.00, '11/3/2023', '1/24/2023' ),
(2, 275.00, '2/27/2023','1/24/2023'),
(3, 150.00, '3/3/2023', '2/5/2023'),
(4, 100.00, '11/3/2023', '2/27/2023'),
(5, 50.00, '7/3/2022','3/1/2023'),
(6, 50.00, '10/5/2023','3/15/2023'),
(7, 75.00, NULL,'3/23/2023'),
(8, 250.00, '11/5/2023','4/14/2023'),
(9, 50.00, '10/31/2023','4/20/2023'),
(10, 300.00, '6/3/2023','4/24/2023'),
(11, 50.00, '8/22/2023','5/16/2023'),
(12, 150.00, '8/13/2023','5/21/2023'),
(13, 125.00, NULL ,'6/25/2023'),
(14, 250.00, '9/1/2023','7/2/2023'),
(15, 150.00, '9/30/2023','7/26/2023'),
(16, 250.00, NULL,'8/3/2023'),
(17, 175.00, NULL,'8/31/2023'),
(18, 250.00, '10/18/2023','9/2/2023'),
(19, 750.00, NULL,'9/30/2023'),
(20, 250.00, NULL,'10/11/2023'),
(21, 250.00, '11/13/2023','10/24/2023'),
(22, 50.00, NULL,'11/17/2023'),
(23, 50.00, NULL,'11/24/2023'),
(24, 200.00, NULL,'12/1/2023'),
(25, 200.00, NULL,'12/31/2023')
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Alter TABLE dog_image drop CONSTRAINT IF EXISTS pk_dog_image_dog_image_id

DROP TABLE IF EXISTS  dog_image

CREATE TABLE dog_image(
    dog_image_id INT IDENTITY(1,1), 
    image_path varchar(255) NULL,
    CONSTRAINT pk_dog_image_dog_image_id PRIMARY KEY (dog_image_id)
)
select * from dog_image

INSERT INTO dog_image(image_path)
VALUES
('www.google.com/photos/American_Pitbull'),
('www.google.com/photos/German_Shepherd'),
('www.google.com/photos/Husky'),
('www.google.com/photos/Great_Dane'),
('www.google.com/photos/labrador Retriever'),
('www.google.com/photos/Poodle'),
('www.google.com/photos/Golden_Doodle'),
('www.google.com/photos/Chihuahua'),
('www.google.com/photos/American_Bulldog'),
('www.google.com/photos/French_Bulldog'),
('www.google.com/photos/Doberman'),
('www.google.com/photos/Dolmation'),
('www.google.com/photos/Border_collie'),
('www.google.com/photos/Rottweiler'),
('www.google.com/photos/Beagle'),
('www.google.com/photos/Golden_Retriever'),
('www.google.com/photos/Bloodhound'),
('www.google.com/photos/Cane_Corso'),
('www.google.com/photos/Corgi'),
('www.google.com/photos/Boxer'),
('www.google.com/photos/Pug'),
('www.google.com/photos/Pomeranian'),
('www.google.com/photos/Chow_Chow'),
('www.google.com/photos/Greyhound'),
('www.google.com/photos/Great_Pyrenees')


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- create Dog breed table 
Alter TABLE dog_breed drop CONSTRAINT IF EXISTS pk_dog_breed_dog_breed_id

DROP TABLE IF EXISTS  dog_breed

    CREATE TABLE dog_breed (
    dog_breed_id int IDENTITY(1,1) ,
    dog_breed_Name varchar(30) NOT NULL,
    min_height_inches int NULL,
    max_height_inches int NULL,
    min_weight_pounds int NULL,
    max_weight_pounds int NULL,
    Average_lifeSpan varchar(40) NULL,
    CONSTRAINT pk_dog_breed_dog_breed_id PRIMARY KEY (dog_breed_id)
)

select * from dog_breed


INSERT INTO dog_breed (dog_breed_Name,min_height_inches,max_height_inches,min_weight_pounds,max_weight_pounds,Average_lifeSpan)
VALUES
('American Pitbull',17,21,30,60,'12 - 16 Years'),
('German Shepherd',22,26,50,90,'9- 13 Years'),
('Husky',20,23.6,35,60,'12 - 15 Years'),
('Great Dane',28,32,100,200,'8 - 12 Years'),
('Labrador Retriever',21.5,24.5,55,80,'10 - 13 Years'),
('Poodle',20,23,50,80,'10 - 18 Years'),
('Golden Doodle',21,23,50,90,'18 - 16 Years'),
('Chihuahua',6,9,2,6,'19 - 16 Years'),
('American Bulldog',20,28,10,14,'20 - 16 Years'),
('French Bulldog',11,13,17,24,'10 - 12 Years'),
('Doberman',24,28,60,100,'10 - 13 Years'),
('Dolmation',19,23,45,70,'10 - 13 Years'),
('Border Collie',22,27,27,45,'10 - 17 Years'),
('Rottweiler',24,27,95,135,'12 - 15 Years'),
('Beagle',13,15,20,30,'13 - 15 Years'),
('Golden Retriever',21.5,24,55,75,'10 - 12 Years'),
('Bloodhound',23,27,80,130,'7 - 10 Years'),
('Cane Corso',25,26,85,99,'9 - 12 Years'),
('Corgi',10,12,22,30,'12 - 15 Years'),
('Boxer',23,25,60,70,'9 - 12 Years'),
('Pug',10,13,14,18,'12 - 15 Years'),
('Pomeranian',6,7,3,7,'12 - 16 Years'),
('Chow Chow',17,20,45,70,'9 - 15 Years'),
('Greyhound',25,30,55,85,'10 - 14 Years'),
('Great Pyrenees',25,32,85,160,'10 - 12 Years')

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Alter TABLE dog_breed_x_dog drop CONSTRAINT IF EXISTS fk_dog_breed_x_dog_dog_id
Alter TABLE dog_breed_x_dog drop CONSTRAINT IF EXISTS fk_dog_breed_x_dog_dog_breed_id

DROP TABLE IF EXISTS dog_breed_x_dog

CREATE TABLE dog_breed_x_dog (
     dog_id int NULL,
     dog_breed_id int NULL,
     CONSTRAINT fk_dog_breed_x_dog_dog_id FOREIGN KEY (dog_id) REFERENCES dog(dog_id),
     CONSTRAINT fk_dog_breed_x_dog_dog_breed_id FOREIGN KEY (dog_breed_id) REFERENCES dog_breed(dog_breed_id)
    )



select * from dog_breed_x_dog


INSERT INTO dog_breed_x_dog (dog_id, dog_breed_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(22,20),
(21,21),
(22,22),
(22,23),
(24,24),
(25,25)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--EXEC sp_fkeys 'dog_image_x_dog'

Alter TABLE dog_image_x_dog drop CONSTRAINT IF EXISTS fk_dog_image_x_dog_dog_id
Alter TABLE dog_image_x_dog drop CONSTRAINT IF EXISTS fk_dog_image_x_dog_dog_image_id
DROP TABLE dog_image_x_dog


CREATE TABLE dog_image_x_dog (
     dog_id int REFERENCES dog(dog_id),
     image_id int REFERENCES dog_image(dog_image_id),
     CONSTRAINT fk_dog_image_x_dog_dog_id FOREIGN KEY (dog_id) REFERENCES dog(dog_id),
     CONSTRAINT fk_dog_image_x_dog_dog_image_id FOREIGN KEY (image_id) REFERENCES dog_image(dog_image_id)
    )

    select * from dog_image_x_dog

INSERT INTO dog_image_x_dog (dog_id,image_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(22,20),
(21,21),
(22,22),
(22,23),
(24,24),
(25,25)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- create application table

Alter TABLE applications drop CONSTRAINT IF EXISTS pk_applications_application_id
Alter TABLE applications drop CONSTRAINT IF EXISTS  fk_applications_application_adopter_id
DROP TABLE IF EXISTS applications

CREATE TABLE applications (
    application_id INT IDENTITY(1,1),
    application_dog_id INT,
    application_adopter_id INT

    CONSTRAINT pk_applications_application_id PRIMARY KEY (application_id),
    CONSTRAINT fk_applications_application_dog_id FOREIGN KEY (application_dog_id) REFERENCES dog(dog_id),
    CONSTRAINT fk_applications_application_adopter_id FOREIGN KEY (application_adopter_id) REFERENCES adopter(adopter_id)

    );

    select * from applications

BEGIN TRANSACTION
INSERT INTO applications (application_dog_id,application_adopter_id)
Values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(8,7),
(9,8),
(10,9),
(11,10),
(12,11),
(14,12),
(15,13),
(18,14),
(21,15)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Validation

    select * from adopter
    select * from dog_image_x_dog
    select * from dog_breed_x_dog
    select * from dog
    select * from dog_breed
    SELECT * from dog_image
    select * from Dog_listing
    select * from Vaccination_Record

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*How to find dog breed of a dog
select d.dog_id,d.dog_name,d.dog_age,bd.dog_breed_Name from dog d
JOIN dog_breed_x_dog x on x.dog_id = d.dog_id
JOIN dog_breed bd on bd.dog_breed_id = x.dog_breed_id
*/