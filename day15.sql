use magicstore;
#What is the average screen size for devices of each brand?
select device_brand, avg(screen_size) as result from used_device_data group by device_brand;
#Which brand has the most devices with 5G capabilities?
select device_brand, count(5g) as result from used_device_data where 5g = 'yes' group by device_brand order by count(5g) desc;
#What is the average rear camera megapixel count for devices of each brand?
select device_brand, avg(rear_camera_mp) as result from used_device_data group by device_brand;
#What is the average battery capacity for devices of each brand?
select device_brand, avg(battery) as result from used_device_data group by device_brand;
#Which operating system is used by the majority of devices with 4G connectivity?
select os, 4g from used_device_data where 4g = 'yes';
#What is the average weight of devices with different screen sizes?
select device_brand, screen_size, avg(weight) as result from used_device_data group by screen_size;
#What is the average internal memory capacity for devices of each brand?
select device_brand, avg(internal_memory) as result from used_device_data group by device_brand;
#What is the average RAM capacity for devices of each brand?
select device_brand, avg(ram) as result from used_device_data group by device_brand;
#What is the average days used for devices released in each year?
select device_brand, release_year, avg(days_used) as result from used_device_data group by release_year;
#What is the average normalized used price for devices of each brand?
select device_brand, avg(normalized_used_price) as result from used_device_data group by device_brand;
#What is the average normalized new price for devices of each brand?
select device_brand, avg(normalized_new_price) as result from used_device_data group by device_brand;
#What is the average front camera megapixel count for devices with different screen sizes?
#What is the distribution of devices by operating system for each brand?
select device_brand, os, count(os) as result from used_device_data group by device_brand;
#What is the distribution of devices by screen size for each brand?
#What is the distribution of devices by battery capacity for each brand?
#What is the distribution of devices by internal memory capacity for each brand?
#What is the distribution of devices by RAM capacity for each brand?
#What is the distribution of devices by weight for each brand?
#What is the distribution of devices by front camera megapixel count for each brand?
#What is the distribution of devices by rear camera megapixel count for each brand?
use magicstore;
select * from used_device_data;	
select distinct os from used_device_data;
select device_brand, os,
	case os
    when 'Android' then 1
    when 'Others' then 2
    when 'iOS' then 3 
    else 4
    end as operatingsystem from used_device_data;
    select device_brand from used_device_data where device_brand like 'H%';
     select device_brand from used_device_data where device_brand like '%er';
      select device_brand from used_device_data where device_brand like '__n%';
       select device_brand from used_device_data where device_brand like '______';
    