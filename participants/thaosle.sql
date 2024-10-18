-- Question 1 (redo!!)
/* The youngest pet is Anna. (birthday is 2024-10-12)
    Commands:
        SELECT pet.givenName, pet.dateOfBirth, animal.name AS "Animal Type"
        FROM pet
        JOIN extremity ON extremity.animalID = pet.animalID
        JOIN animala ON animal.id = extremity.id
        ORDER BY dateOfBirth DESC
        LIMIT 1
*/
-- Question 2
/* Yes, you would just have to query the records that contains a conditional
   that would have filter out any birthdays that happened 3-4 years ago
   (there should be 2 records)
    Commands:
        SELECT *
        FROM pet
        WHERE YEAR(NOW()) - YEAR(dateOfBirth) = 3 OR YEAR(NOW()) - YEAR(dateOfBirth) = 4

*/
-- Question 3
/* 
    -- Still need to put in view

*/
-- Question 4
/* 
    SELECT pet.animalid, givenName, name
    FROM pet
    JOIN extremity ON extremity.animalId = pet.animalId
    JOIN animal ON animal.id = extremity.id
    ORDER BY name
*/
-- Question 5
/* The animal name Paul, the piegon.
    SELECT givenName, dateOfBirth, legs, animal.name -- I just wanted to see the type of animal
    FROM pet
    JOIN extremity ON extremity.animalid = pet.animalID
    JOIN animal ON animal.id = pet.animalID
    WHERE legs < 3
    ORDER BY dateOfBirth ASC
    LIMIT 1

*/
-- Question 6
/* The ratio is ~44% male and ~56% female. (5:4 -> F:M)
    Commands (for separate records with just the count for each gender):
        SELECT (SELECT COUNT(gender)
                FROM pet
                WHERE gender = 0) as 'Female',
        (SELECT COUNT(gender)
                FROM pet
                WHERE gender = 1) as 'Male'
*/
-- Question 7
/* The pets that would be celebrated at this event would be
        SELECT *
        FROM pet
        WHERE MONTH(dateOfBirth) <= 8 AND MONTH(dateOfBirth) < = 6
*/
-- Question 8 (first version)
/*
    I believe you can just use a integer variable that could act as
    a boolean value, to see if there are tails or no tails and it will
    just output a message specifying if there are any tails on teh animal.
        Logic Breif:
            If there is a tail = 1 *or greater than one, if there are more animals that what was specified all ready* (msg: "Tail")
            If there is NO tail = 0, (msg: "No Tails")
        SELECT
        CASE
            WHEN tails > 0 THEN "TAILs"
            ELSE "No Tails"
        END AS TailStatus, extremity.legs, extremity.id, extremity.animalId
        FROM extremity;
*/
-- Question 8 (second version)
/* The commonalities that could appear whcih is groups that already exist in
    the tables in the database such as gender, dateOfBirth, and the animal type.
    In addition to maybe other groups such as heatlth status, wieght, and vaccines
    that were already recieved or not recieved, and if the pet is already on medications or
    not.
   A data-related questions could arise from information would be the dosage of how much medication
   the pet is taking, what sort of diet the pet is on and how much of a portion size they need to take,
   also do you need a selection for the veterian to place personal notes for the pet to follow to maintain
   or imporve the condition of the pet.
*/