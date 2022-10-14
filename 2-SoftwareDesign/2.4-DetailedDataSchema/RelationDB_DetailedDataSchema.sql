CREATE DATABASE relationdb6;
USE relationdb6;

CREATE TABLE Consumer ( -- опис користувача
	consumer_id INTEGER, -- id користувача
	consumer_name VARCHAR(25), -- ім'я користувача
	consumer_surname VARCHAR(25), -- прізвище співробітника
	consumer_age INTEGER, -- вік співробітника
	consumer_city VARCHAR(25), -- місто
	consumer_email_address VARCHAR(25)
);

-- обмеження первинного ключа
ALTER TABLE Consumer ADD CONSTRAINT cons_pk
	PRIMARY KEY (consumer_id);
	

	
	
-- обмеження вмісту стовпчиків таблиці
ALTER TABLE Consumer ADD CONSTRAINT consumer_age_range
	CHECK (consumer_age between 18 and 80);
	
ALTER TABLE Consumer ADD CONSTRAINT consumer_id_range
	CHECK (consumer_id>0);

    
CREATE TABLE Thermometr ( -- опис термометру
	thermometr_city VARCHAR(25), -- місто, де проводяться виміри температури
	thermometr_date DATE -- день, коли проводяться виміри температури
	);

-- обмеження первинного ключа
ALTER TABLE Thermometr ADD CONSTRAINT therm_pk
	PRIMARY KEY (thermometr_city);

	
CREATE TABLE Trainer ( -- опис тренера
	trainer_id INTEGER, -- id тренера
	trainer_name VARCHAR(25), -- ім'я тренера
	trainer_surname VARCHAR(25), -- прізвище тренера
	clients_id INTEGER, -- номер клієнта
	trainer_expirience INTEGER, -- стаж (в роках) тренера
    plans INTEGER -- назва плану тренувань
);

-- обмеження первинного ключа
ALTER TABLE Trainer ADD CONSTRAINT trainer_pk
	PRIMARY KEY (trainer_id);
	

	
-- обмеження вмісту стовпчиків таблиці
ALTER TABLE Trainer ADD CONSTRAINT planse_range
	CHECK (plans between 1 and 50);


CREATE TABLE Training_plans ( -- опис тренувань
	training_plans_id INTEGER, -- id тренування
	group_of_muscules VARCHAR(20), -- назва групи м'язів
	exercise VARCHAR(50)
	approach INTEGER, -- кількість підходів
	number_of_repetitions INTEGER, -- кількість повторювань в підході
    advices INTEGER -- поради тренера
);

-- обмеження первинного ключа
ALTER TABLE Training_plans ADD CONSTRAINT training_plans_pk
	PRIMARY KEY (training_plans_id);
	


-- обмеження вмісту стовпчиків таблиці
ALTER TABLE Training_plans ADD CONSTRAINT advice_range
	CHECK (advices>0);

	
CREATE TABLE Advices ( -- опис порад
	advice_id INTEGER, -- N списку змін індикаторів
	food TEXT, -- показник температури повітря
	sleep TEXT, -- показник вологості повітря
	vitamins TEXT -- показник тиску
);

-- обмеження первинного ключа
ALTER TABLE Advices ADD CONSTRAINT advice_pk
	PRIMARY KEY (advice_id);


-- обмеження зовнішніх ключів
ALTER TABLE Consumer ADD CONSTRAINT cons_city_fk
	FOREIGN KEY (consumer_city)
	REFERENCES Thermometr (thermometr_city);

ALTER TABLE Trainer ADD CONSTRAINT trainer_plans_fk
	FOREIGN KEY (plans)
	REFERENCES training_plans (training_plans_id);	

ALTER TABLE Trainer ADD CONSTRAINT trainer_client_fk
	FOREIGN KEY (clients_id)
	REFERENCES Consumer (consumer_id);

ALTER TABLE Training_plans ADD CONSTRAINT plans_advices_fk
	FOREIGN KEY (advices)
	REFERENCES Advices (advice_id);
	
ALTER TABLE Consumer ADD CONSTRAINT consumer_email_template
    CHECK (regexp_like(consumer_email_address, 
	           '^([a-z0-9][a-z0-9._-]*@[a-z][a-z0-9._-]*\.[a-z]{2,4})$'));

