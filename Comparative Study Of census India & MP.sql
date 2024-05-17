use project;
select * from dataset1;
select * from dataset2;

-- Count number of row
SELECT COUNT(*) FROM dataset1;
SELECT count(*) from dataset2;

-- total area of India
select sum(Area_km2) from dataset2;
-- state with highest Population 
select state, sum(Area_km2) area from dataset2 group by state order by area desc limit 5;
-- state with lowest population
select state, sum(Area_km2) area from dataset2 group by state order by area limit 5;

-- total area of madhya pradesh
select sum(Area_km2)  from dataset2 where state = "MAdhya Pradesh";
-- highest area district in mp
select district, sum(Area_km2) area from dataset2 where state = "madhya pradesh" group by district order by area desc limit 5;
-- Lowest area district in mp
select district, sum(Area_km2) area from dataset2 where state = "madhya pradesh" group by district order by area limit 5;


-- Total population of India
Select sum(Population) from dataset2;
-- highest population state
select state, sum(Population) popl from dataset2 group by state order by popl desc limit 5;
-- Lowest Population state
select state, sum(Population) popl from dataset2 group by state order by popl limit 5;

-- total population of madhya pradesh
Select sum(Population) from dataset2 where state= "Madhya Pradesh";
select district, sum(population) popl from dataset2 where state = "MAdhya Pradesh" group by district order by popl desc limit 5;
 select district, sum(population) popl from dataset2 where state = "MAdhya Pradesh" group by district order by popl limit 5;

-- Average Growth in india
Select avg(Growth)*100 AVG_GROWTH_IND from dataset1;
-- Highest growth state
select state, avg(growth)*100 avg_growth from dataset1 group by state order by avg_growth desc limit 5;
-- Lowest Population state
select state, avg(growth)*100 avg_growth from dataset1 group by state order by avg_growth limit 5;


-- Average growth of madhya pradesh
select state, avg(growth)*100 from dataset1 where state = "Madhya Pradesh";
-- Highest growth in district of madhya Pradesh
Select district, avg(growth)*100 avgr from dataset1 where state= "Madhya Pradesh" group by district order by avgr desc limit 5;
-- lowest growth in districts of madhya pradesh
Select district, avg(growth)*100 avgr from dataset1 where state= "Madhya Pradesh" group by district order by avgr limit 5;


-- Average Sex ratio
select avg(Sex_ratio) from dataset1;
-- Highest sex ratio 
select state,round(avg(sex_ratio),0) avg_sex_ratio from dataset1 group by state order by avg_sex_ratio desc limit 5;
-- Lowest sex ratio 
select state,round(avg(sex_ratio),0) avg_sex_ratio from dataset1 group by state order by avg_sex_ratio limit 5;


-- Average sex ratio in madhya pradesh 
Select state, avg(sex_ratio) from dataset1 where state = "Madhya Pradesh";
-- highest sex ration in madhya pradesh
Select district, sex_ratio from dataset1 where state= "Madhya Pradesh" order by sex_ratio desc;
-- lowest sex ratio in madhya pradesh
Select district, sex_ratio from dataset1 where state= "Madhya Pradesh" order by sex_ratio;

-- Literacy ratio
Select avg(Literacy) from dataset1;
--  highest literacy rate in india
select state, round(avg(literacy),0) avg_lit_ratio from dataset1 group by state having round(avg(Literacy),0) order by avg_lit_ratio desc limit 5;
-- lowest literacy rate
select state, round(avg(literacy), 0) avg_lit_ratio from dataset1 group by state order by avg_lit_ratio limit 5;

-- Literacy rate in madhya pradesh
Select state, avg(literacy) from dataset1 where state = "Madhya Pradesh";
-- highest Literacy rate in madhya pradesh
Select district, literacy from dataset1 where state= "Madhya Pradesh" order by literacy desc limit 5;
-- Lowest Literacy rate in madhya pradesh
Select district, literacy from dataset1 where state= "Madhya Pradesh" order by literacy limit 5;



