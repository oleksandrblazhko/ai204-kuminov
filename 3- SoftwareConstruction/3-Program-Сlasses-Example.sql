/* Створення об'єктного типу (класу) Consumer */
CREATE OR REPLACE TYPE Consumer AS OBJECT (
consumer_id NUMBER(4), -- N користувача 
consumer_name VARCHAR(20), -- ім'я користувача
consumer_surname VARCHAR(20), -- прізвище користувача
consumer_age INTEGER, -- вік користувача
consumer_city VARCHAR(25), -- місто користувача
consumer_email_address VARCHAR(25), -- пошта користувача
    	NOT FINAL MEMBER PROCEDURE display
) NOT FINAL 
/

/* Cтворення об'єктного типу (класу) Trainer, що успадковує об'єктний тип Consumer */
CREATE OR REPLACE TYPE Psychologist UNDER User (
   trainer_id INTEGER, -- id тренера
	trainer_name VARCHAR(25), -- ім'я тренера
	trainer_surname VARCHAR(25), -- прізвище тренера
	clients_id INTEGER, -- номер клієнта
	trainer_expirience INTEGER, -- стаж (в роках) тренера
  plans INTEGER -- назва плану тренувань
	/* перевизначення методу-процедури класу Consumer */
    	OVERRIDING MEMBER PROCEDURE display 
);
/

/* Створення об'єктного типу (клас) Thermometr */
thermometr_id -- N виміру
thermometr_city VARCHAR(25), -- місто, де проводяться виміри температури
	thermometr_date DATE -- день, коли проводяться виміри температури
  /* конструктор екземплярів об'єктів класів.
       	Вхідні параметри:
	   1) thermometr_date - дата виміру
	   умова 1) якщо в таблиці Thermometr вже існує вказана дата,
	   створюється екземпляр класу на основі даних таблиці,
	   інакше в таблиці Thermometr створюється новий рядок з одночасним
	   створюється екземпляр класу 
	 Вихідний параметр - екземпляр обєкту класу */
    	CONSTRUCTOR FUNCTION Thermometr(thermometr_date_DATE)
        	RETURN SELF AS RESULT,
		/* Процедура зміни значення атрибутів */
		MEMBER PROCEDURE set_Date_(thermometr_id NUMBER, thermometr_date_DATE),
    		/* Функції отримання значень атрибутів */
		MEMBER FUNCTION get_thermometr_id RETURN NUMBER,
		MEMBER FUNCTION get_Date_ RETURN DATE,
    	/* Процедура виводу на екран значень атрибутів */
    	MEMBER PROCEDURE display
  	/* Процедура виводу на екран значень атрибутів */
    	MEMBER PROCEDURE display
); 

/* Створення об'єктного типу (клас) Training_plans */
-- DROP TYPE Training_plans FORCE;
CREATE OR REPLACE TYPE Training_plans AS OBJECT (
  training_plans_id INTEGER, -- id тренування
	group_of_muscules VARCHAR(20), -- назва групи м'язів
	approach INTEGER, -- кількість підходів
	number_of_repetitions INTEGER, -- кількість повторювань в підході
    advices INTEGER -- поради тренера
    /* Процедура виводу на екран значень атрибутів */
    	MEMBER PROCEDURE display
); 
    	
-- show errors;

/* Створення об'єктного типу (класу) Advices */
CREATE OR REPLACE TYPE Advices AS OBJECT (
    	advice_id INTEGER, -- N списку змін індикаторів
	food TEXT, -- показник температури повітря
	sleep TEXT, -- показник вологості повітря
	vitamins TEXT -- показник тиску
	/* Процедура виводу на екран значень атрибутів */
    	MEMBER PROCEDURE display
); 
/
