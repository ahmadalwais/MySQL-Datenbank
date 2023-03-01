drop database SEM;
create database SEM;
    use SEM ;

    create table Saminara (
        seminarnummer INT AUTO_INCREMENT,
        seminarbezeichnung VARCHAR(30) NOT NULL,
        seminarart enum('F', 'A'),
        Dauer INT check (Dauer >30 and Dauer < 1),
        Raum VARCHAR(3),
        Kosten Decimal(5,2) default '0',
        primary key (seminarnummer)
        );
   

    alter table Saminara
        add column Dozent VARCHAR(3) 
            after Dauer;

    alter table Saminara
        alter seminarart set  default'A';

    alter table Saminara
        modify Raum VARCHAR(3) not NULL;      

    alter table Saminara
        rename Seminar;

    
 describe Seminar;