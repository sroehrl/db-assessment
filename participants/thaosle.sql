-- Question 1
/* The youngest pet is Anna. (birthday is 2024-10-12)
    Commands:
        SELECT *
        FROM pet
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
        WHERE YEAR(CURRENT_DATE()) - YEAR(dateOfBirth) = 3 OR YEAR(CURRENT_DATE() - YEAR(dateOfBirth) = 4
*/
-- Question 3
/* 

*/
-- Question 4
--
-- Question 5
-- 
-- Question 6
/* The ratio is 50% male and 50% female. (3:3 -> M:F)
    Commands (for separate records with just the count for each gender):
        SELECT (SELECT COUNT(gender)
                FROM pet
                WHERE gender = 0) as 'Female',
                (SELECT COUNT(gender)
                FROM pet
                WHERE gender = 1) as 'Male'
*/
-- Question 7
--
-- Question 8 (first version)
--
-- Question 8 (second version)
--