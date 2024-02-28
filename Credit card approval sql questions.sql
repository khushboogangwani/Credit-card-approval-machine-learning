use credit_card_approval;

select * from cleaned_data;

-- Group the customers based on their income type and find the average of their annual income.

SELECT Income_type, AVG(Annual_income) as Average_income
FROM Cleaned_data
GROUP BY 1;



-- Find the female owners of cars and property.

SELECT *
FROM Cleaned_data
WHERE Gender = 'F' AND Car_Owner = 'Y' AND Property_owner = 'Y';


-- Find the male customers who are staying with their families.

SELECT *
FROM Cleaned_data
WHERE Gender = 'M' AND Family_members > 1;



-- Please list the top five people having the highest income.

select * from Cleaned_data
order by Annual_income desc
limit 5;

-- How many married people are having bad credit?

select count(*)
from cleaned_data
where label = 1;

-- What is the highest education level and what is the total count?

select  education, count(Education) as count_of_education_level 
from cleaned_data
where Education = 'Higher Education';



-- Between married males and females, who is having more bad credit?

SELECT Gender, COUNT(*) as Count
FROM Credit_final
WHERE Marital_status = 'Married' AND Label = 1
GROUP BY Gender;
