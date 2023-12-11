-- 1. Add a Member
INSERT INTO Members (Email, Password, FName, LName)
VALUES ('bob@example.com', 'password', 'Bob', 'Sponge');

-- 2. List all Members
SELECT * FROM Members;

-- 3. Update a Member's Email
UPDATE Members
SET Email = 'sponge@example.com'
WHERE Email = 'bob@example.com';

-- 4. A Member adds a Fitness Goal
INSERT INTO FitnessGoals (memberID, goalNumber, Description)
VALUES (1, 1, 'Do 1 Pushup');

-- 5. List all Fitness Goals of a Member
SELECT goalNumber, Description FROM FitnessGoals
WHERE memberID = 1;

-- 6. Add a Trainer
INSERT INTO Trainers (Email, Password, FName, LName)
VALUES ('alex@example.com', 'password', 'Alex', 'Trainer');

-- 7. List all Trainers
SELECT * FROM Trainers;

-- 8. Add a Fitness Class
INSERT INTO FitnessClasses (className, roomNumber, Date, Time, trainerID)
VALUES ('Lifting Class', 12, '2023-12-10', '12:00:00', 1);

-- 9. List all Fitness Classes
SELECT * FROM FitnessClasses;

-- 10. Add a Member to a Fitness Class
INSERT INTO Registers (memberID, classID)
VALUES (1, 1);

-- 11. List the names of all Members in a Fitness Class
SELECT Members.FName, LName
FROM Members
WHERE memberID IN (SELECT memberID FROM Registers WHERE classID = 1);



