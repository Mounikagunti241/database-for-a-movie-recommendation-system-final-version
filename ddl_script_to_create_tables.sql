---ddl to create tables requires for movie_data base----

create table Cast(
    Cast_Id number(10) constraint Cast_Id_pk primary key ,
    person_Name varchar(30) not null,
    Role varchar(20) 
);

create table Crew (
    Crew_Id number(10) constraint Crew_Id_pk primary key,
    person_Name varchar(30) not null,
    craft varchar(20) not null
);

create table Genre (
    Genre_Id number(10) constraint Genre_Id_pk primary key ,
    Genre_Name varchar(30) not null
);

create table Users(
    User_Id number(10) constraint User_Id_pk primary key ,
    User_Name varchar(20) not null,
    Age number(5) not null,
    Gender varchar(6) not null,
    Password varchar(20)
);

create table Production_House(
    Production_House_Id number(10) constraint production_House_Id_pk primary key ,
    production_house_name varchar(40) not null,
    Production_house_owner_id number(10) references crew(crew_id)
   
);

create table Movie(
    Movie_Id number(10) constraint Movie_Id_pk primary key,
    Movie_Name varchar(30) constraint Movie_Name_uq unique,
    Budget number(25),
    Production_House_id number(10) references production_house(Production_House_id) ,
    Director_id number(10) references crew(crew_id) ,
    Protaganist_id number(10) references cast(cast_id ),
    Genre_id number(10) references Genre(Genre_id),
    Watch_Time interval day to second,
    Release_date Date
);
create table movie_crew(
    movie_crew_id number(10) constraints movie_crew_id_pk primary key,
    movie_id number(10) references movie(movie_id),
    crew_id number(10) references crew(crew_id),
    craft varchar(20) not null
)
create table movie_cast(
    movie_cast_id number(10) constraint movie_cast_id_pk primary key,
    movie_id number(10) references movie(movie_id),
    cast_id  number(10) references cast(cast_id),
    role_play_name varchar(30) not null
)

create table Ratings(
    Rating_Id number(10) constraint Rating_Id_pk primary key,
    User_Id  number(10) references Users (User_id),
    Movie_Id number(10) references Movie (Movie_id),
    Rating number(3,2),
    comments varchar(200)
);