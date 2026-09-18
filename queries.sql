-- Titanic Survival Analysis
-- Author: Vishmi Amandi
-- Dataset: 891 passenger records
-- Tools: MySQL (XAMPP / phpMyAdmin)

-- 1. Total passengers
SELECT COUNT(*) AS total_passengers FROM titanic_clean;

-- 2. Overall survival rate
SELECT ROUND(AVG(Survived) * 100, 2) AS overall_survival_pct FROM titanic_clean;

-- 3. Survival by gender
SELECT 
    Sex, 
    COUNT(*) AS passengers,
    ROUND(AVG(Survived) * 100, 2) AS survival_rate_pct
FROM titanic_clean
GROUP BY Sex
ORDER BY survival_rate_pct DESC;

-- 4. Survival by passenger class
SELECT 
    Pclass, 
    COUNT(*) AS passengers,
    ROUND(AVG(Survived) * 100, 2) AS survival_rate_pct
FROM titanic_clean
GROUP BY Pclass
ORDER BY Pclass;

-- 5. Survival by class and gender (the combined insight)
SELECT 
    Pclass, 
    Sex, 
    COUNT(*) AS passengers,
    ROUND(AVG(Survived) * 100, 2) AS survival_rate_pct
FROM titanic_clean
GROUP BY Pclass, Sex
ORDER BY Pclass, Sex;

-- 6. Survival by age category
SELECT 
    AgeCat, 
    COUNT(*) AS passengers,
    ROUND(AVG(Survived) * 100, 2) AS survival_rate_pct
FROM titanic_clean
GROUP BY AgeCat
ORDER BY AgeCat;

-- 7. Survival by travelling group size
SELECT 
    GrpSize, 
    COUNT(*) AS passengers,
    ROUND(AVG(Survived) * 100, 2) AS survival_rate_pct
FROM titanic_clean
GROUP BY GrpSize
ORDER BY survival_rate_pct DESC;
