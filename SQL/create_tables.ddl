create table Members
	(memberID    		serial,
	Email			varchar(255) unique not null,
	Password		varchar(255) not null,
	FName			varchar(255) not null,
	LName			varchar(255) not null,
	primary key (memberID)
	);

create table FitnessGoals
	(goalNumber    		serial,
	memberID    		integer references Members,
	Description		text,
	primary key (memberID, goalNumber)
	);

create table Trainers
	(trainerID    		serial,
	Email			varchar(255) unique not null,
	Password		varchar(255) not null,
	FName			varchar(255) not null,
	LName			varchar(255) not null,
	primary key (trainerID)
	);

create table AdminStaff
	(adminID    		serial,
	Email			varchar(255) unique not null,
	Password		varchar(255) not null,
	primary key (adminID)
	);

create table PersonalTraining
	(memberID    		integer references Members,
	trainerID    		integer references Trainers,
	trainerNote		text,
	Date			date,
	Time 			time,
	primary key (memberID, trainerID)
	);


create table CertifiedTrainersEmails
	(adminID    		integer references AdminStaff,
	trainerEmail    	varchar(255) references Trainers(Email),
	primary key (adminID, trainerEmail)
	);

create table FitnessClasses
	(classID    		serial,
	trainerID    		integer references Trainers,
	className		varchar(255) not null,
	roomNumber		integer not null,
	Date			date,
	Time 			time,
	primary key (classID),
	foreign key (trainerID) references Trainers
	);
	
create table Registers
	(memberID    		integer references Members,
	classID    		integer references FitnessClasses,
	primary key (memberID, classID)
	);

create table FitnessEquipment
	(equipmentID    	serial,
	equipmentType    	varchar(255) not null,
	primary key (equipmentID)
	);

create table EquipmentMaintenance
	(equipmentType    	varchar(255),
	maintenanceDate    	date,
	primary key (equipmentType)
	);