/* Приклади роботи з класом Consumer */
DECLARE
   cons1 Consumer;
BEGIN 
    cons1:= NEW Consumer (2, Ksenia, , Stepanenko, 24, Kherson, stepanenko21@gmail.com);
dbms_output.put_line('consumer_id: ' || consumer_id);
dbms_output.put_line('consumer_name: ' || consumer_name);
dbms_output.put_line('consumer_surname: ' || consumer_surname);
dbms_output.put_line('consumer_age: ' || consumer_age);
dbms_output.put_line('consumer_city: ' || consumer_city);  
dbms_output.put_line('consumer_email_address: ' || consumer_email_address);

    cons1.display();
END;
/


/* Приклад роботи з класами Consumer, Thermometr */
DECLARE 
    cons1 Consumer;
    therm1 Thermometr;
BEGIN 
    cons1:= Consumer(2, Ksenia, , Stepanenko, 24, Kherson, stepanenko21@gmail.com);
    therm1:= Thermometr(4, Kheson, TO_DATE('11.03.2022','DD/MM/YYYY'), cons1);
    ins1.display();
END;
/

/* Приклад роботи з класами Consumer, Thermometr, Trainer */
DECLARE 
   tr1 Trainer;
   pd1 Personal_data;
   ins1 Insomnia;
BEGIN
    tr1:= Trainer(4, Volodymyr, Moskalenko, 2, 10, 9);
    cons1:= Consumer(3,TO_DATE('11.03.2022','DD/MM/YYYY'), Tokareva, Marina, Borisova, Bad, Bad, 2, tr1);
    therm1:= Thermometr(4, Kheson, TO_DATE('11.03.2022','DD/MM/YYYY'), tr1);
    tr1.display(); 
END;
/