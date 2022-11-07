/* Методи класу Training_plans */
-- DROP TYPE PTraining_plans FORCE;
CREATE OR REPLACE TYPE BODY Training_plans AS 
    
       
    
/* Процедура зміни значень атрибутів */
MEMBER PROCEDURE fill_Training_plans(p_training_plans_id NUMBER, p_group_of_muscules VARCHAR, p_approach NUMBER, p_number_of_repetitions NUMBER, p_advices NUMBER)
IS
BEGIN
UPDATE Training_plans SET group_of_muscules = p_group_of_muscules  VARCHAR, approach = p_approach NUMBER, number_of_repetitions = p_number_of_repetitions NUMBER, advices = p_advices NUMBER
WHERE training_plans_id = p_training_plans_id;
SELF.group_of_muscules  := p_group_of_muscules , SELF.approach := p_approach, SELF.number_of_repetitions := p_number_of_repetitions, SELF.advices := p_advices
END fillPersonaldata;

/* Функції отримання значень атрибутів */
/* get_personaldata_id */
MEMBER FUNCTION get_training_plans_id
RETURN NUMBER 
IS
BEGIN
RETURN SELF.training_plans_id;
END get_training_plans_id;
        
/* get_group_of_muscules*/
MEMBER FUNCTION get_group_of_muscules
RETURN NUMBER 
IS
BEGIN
RETURN SELF.group_of_muscules;
END get_group_of_muscules;

/* Процедура виводу на екран значень атрибутів */
MEMBER PROCEDURE display 
IS
BEGIN 
dbms_output.put_line('training_plans_id: ' || training_plans_id);
dbms_output.put_line('group_of_muscules: ' || group_of_muscules);
dbms_output.put_line('approach: ' || approach);
dbms_output.put_line('number_of_repetitions: ' || number_of_repetitions);
dbms_output.put_line('advices: ' || advices);  
END display;
END; 
/