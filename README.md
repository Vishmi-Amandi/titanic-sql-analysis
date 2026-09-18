# Titanic Passenger Survival Analysis (SQL)

## Project Overview
Analyzed 891 Titanic passenger records using SQL to identify the strongest 
predictors of survival. Built queries exploring gender, passenger class, age 
category, and travelling group size.

## Dataset
- **Source:** Kaggle — Titanic: Machine Learning from Disaster
- **Records:** 891 passengers
- **Columns used:** PassengerId, Survived, Pclass, Sex, SibSp, Parch, 
  Embarked, Title, GrpSize, FareCat, AgeCat

## Tools
- MySQL (via XAMPP / phpMyAdmin)
- SQL (GROUP BY, aggregate functions, CASE statements)

## Key Findings

### 1. Gender was the strongest predictor of survival
| Sex    | Passengers | Survival Rate |
|--------|------------|---------------|
| Female | 314        | 74.20%        |
| Male   | 577        | 18.89%        |

Female passengers survived at nearly **4x** the rate of male passengers.

### 2. Survival dropped sharply with passenger class
| Class | Passengers | Survival Rate |
|-------|------------|---------------|
| 1st   | 216        | 62.96%        |
| 2nd   | 184        | 47.28%        |
| 3rd   | 491        | 24.24%        |

### 3. The effect of gender and class combined was dramatic
| Class | Sex    | Passengers | Survival Rate |
|-------|--------|------------|---------------|
| 1st   | Female | 94         | 96.81%        |
| 1st   | Male   | 122        | 36.89%        |
| 2nd   | Female | 76         | 92.11%        |
| 2nd   | Male   | 108        | 15.74%        |
| 3rd   | Female | 144        | 50.00%        |
| 3rd   | Male   | 347        | 13.54%        |

A 1st class female had a **96.81%** chance of survival. A 3rd class male had 
a **13.54%** chance — a **7x gap** driven by the intersection of gender and class.

### 4. Children survived at higher rates than adults
| Age Category | Passengers | Survival Rate |
|--------------|------------|---------------|
| 0-16         | 104        | 54.81%        |
| 16-32        | 490        | 33.67%        |
| 32-48        | 216        | 41.20%        |
| 48-64        | 70         | 42.86%        |
| 64+          | 11         | 9.09%         |

### 5. Travelling in a small group increased survival odds
| Group Size  | Passengers | Survival Rate |
|-------------|------------|---------------|
| Solo        | 462        | 27.06%        |
| Couple      | 185        | 49.73%        |
| Group       | 170        | 64.71%        |
| Large Group | 74         | 20.27%        |

## Recommendations
- Confirms the historical "women and children first" evacuation policy, but 
  with a class bias: 1st class women were prioritised far more than 3rd class women.
- Class-based survival gaps suggest a need for policy reform in emergency 
  evacuation procedures — access to lifeboats should not correlate with ticket class.
- Group size findings suggest that family or group coordination aided survival 
  up to a point, but very large groups reduced individual survival odds.

## Screenshots
Query results are in the `/screenshots` folder.

## SQL Queries Used
All queries available in `queries.sql`.
