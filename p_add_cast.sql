-------- procedure to insert data into cast table---------------- 
create or replace procedure add_cast(v_person in cast.person_name%type,v_role in cast.role%type,v_msg out varchar) 
as
v_count  int;
begin
  select count(*) into v_count from cast where person_name =  v_person;
 if v_count = 0 then
   insert into cast values(seq_crew_id.nextval,v_person,v_role);
   v_msg:=v_person||' added succesfully';
 else 
   v_msg:=v_person||' already exists';
end if;
end;   
---calling statment--------
declare
  msg varchar(200);
begin
  add_cast('Vinay Rai','Villain',msg);
  dbms_output.put_line(msg);
end;