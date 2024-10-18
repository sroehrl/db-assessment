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
/* The number of pets we have for each type of an (come back)

*/
-- Question 4
/* 
*/
-- Question 5
/* The animal name Paul.
    SELECT givenName, dateOfBirth, legs
    FROM pet
    JOIN extremity ON extremity.animalid = pet.animalID
    JOIN animal ON animal.id = pet.animalID
    WHERE legs < 3
    ORDER BY dateOfBirth ASC
    LIMIT 1

*/
-- Question 6
/* The ratio is 50% male and 50% female. (5:4 -> M:F)
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

*/
-- Question 8 (first version)
/*
*/
-- Question 8 (second version)
/* The commonalities that could appear __
   A data-related questions could arise from information __
*/