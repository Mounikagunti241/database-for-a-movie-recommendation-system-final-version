---------------------procedure to insert data into users table------------------


create or replace procedure add_users(v_user_name in users.user_name%type,
                             v_age in users.age%type,
                             v_gender in users.gender%type,
                             v_msg out varchar)
as
v_count int; 
v_password users.password%type;

 begin 
    if v_gender = 'MALE' then
       v_password := v_user_name||v_age||'M';
    else 
       v_password:= v_user_name||v_age||'F';
   end if;   

   select count(*) into v_count from users where v_user_name=user_name;
  if v_count =0 then

     insert into users values(seq_users_id.nextval,v_user_name,v_age,v_gender,v_password);
     v_msg:=v_user_name||'added succesfully';

  else
     v_msg:=v_user_name||'already exsist';
end if;
end; 



----calling statement---
declare
msg varchar(200);
begin
   add_users('Ram',45,'MALE',msg);
   dbms_output.put_line(msg);
 end;   




