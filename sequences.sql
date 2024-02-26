------------------------------------------------
create sequence seq_movie_crew_id
       start with 010
       increment by 1
       minvalue 010
       maxvalue 9999999
       nocache;

create sequence seq_movie_cast_id
       start with 200
       increment by 1
       minvalue 200
       maxvalue 999999
       nocache;

create sequence seq_rating_id
       start with 10
       increment by 1
       minvalue 10
       maxvalue 999999
       nocache;

create sequence seq_movie_id
       start with 101
       increment by 1
       minvalue 101
       maxvalue 999999
       nocache;

create sequence seq_production_hus_id
         start with 1001
         increment by 1
         minvalue 1001
         maxvalue 99999999
         nocache;

create sequence seq_genre_id
        start with 1
        increment by 1
        minvalue 1         
        maxvalue 999999
        nocache;

create sequence seq_crew_id
      start with 100
      increment by 1
      minvalue 100
      maxvalue 999999 
      nocache;  

create sequence  seq_cast_id  
       start with 100
       increment by 1
       minvalue 100
       maxvalue 999999
       nocache;

create sequence seq_users_id
      start with 01
      increment by 1
      minvalue 01
      maxvalue 99999
      nocache;

-----------------------------