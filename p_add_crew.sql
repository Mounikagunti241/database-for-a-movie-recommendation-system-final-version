
-- procedure to insert data into crew table-----
create or replace procedure add_crew(v_person_name in crew.person_name%type,v_craft in crew.craft%type,v_msg out varchar)
as
v_count  int;
begin
  select count(*) into v_count from crew where person_name=v_person_name ;
 if v_count = 0 then
   insert into crew values(seq_crew_id.nextval,v_person_name,v_craft);
   v_msg:= v_person_name||' added succesfully';
 else 
   v_msg:=v_person_name||' already exists';
end if;
end;


--calling statement---
declare
  msg varchar(200);
begin
   add_crew('Dil Raju','Producer',msg);
   dbms_output.put_line(msg);
end;