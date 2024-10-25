show databases
use cars;
select count(*) from car_dekho;
#the manager asked the employee how many cars will be avaible for 2023:
select count(*) from car_dekho where year = 2023; #6
## how many cars avaible in year 2020,22,23
select year,count(*) from car_dekho where year in (2020,2021,2022) group by year;
select year,count(*) as car_counts from car_dekho group by year order by car_counts desc;
select count(*) from car_dekho where year = 2020 and fuel = 'Diesel'; #20
select count(*) from car_dekho where year = 2020 and fuel = 'Petrol'; #51
#the manager told the employee to give a print all fuel cars ( petrol,disel,and CNG ) came by all year
select year,count(*) from car_dekho where fuel = 'Petrol' group by year;
select year,count(*) from car_dekho where fuel = 'Diesel' group by year;
select year,count(*) from car_dekho where fuel = 'CNG' group by year;
#manager said there where more than 100 cars in a given year which year had more than 100 cars;
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<50;
#all count of 2015 to 2023 car count
select count(*) from car_dekho where year between 2015 and 2023; # 4124
#all cars details between 2015 and 2023;
select * from car_dekho where year between 2015 and 2023;

#que to asw above
#read cars data
##total cars: to get a count of total records.
###the manager asked the employee how many total cars will be avaible in 2023?
####the manager asked the employee how many total cars will be avaible for years 2020,22,24?
#####client asked me to print all the total cars by years. i dont want to see all the details only count required.
######client asked to car dealer agent how many disel cars will be there be in year 2020
#######client asked to car dealer agent how many petrol cars will be there be in year 2020
########
#########the manager said to the employee to show all cars count details year between 2020 to 23

