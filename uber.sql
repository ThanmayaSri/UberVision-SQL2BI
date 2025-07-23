create database uber_analysis;

use uber_analysis;

create table uber_rides(
rides_id int identity(1,1) primary key,
pickup_datetime datetime,
latitude float,
longitude float,
base_id varchar(10)
);

select top 10 * from dbo.uber_rides_raw;

---total no. of rides
select count(*) as total_rides from dbo.uber_rides_raw;

---rides per hour of the day
select datepart(hour,pickup_datetime) as hours, count(*) as rides_count
from dbo.uber_rides_raw
group by datepart(hour,pickup_datetime)
order by rides_count desc;

---rides by day of the week
select datename(weekday,pickup_datetime)as days_of_week,
count(*) as rides_count
from dbo.uber_rides_raw
group by datename(weekday,pickup_datetime)
order by rides_count desc;

---rides by dispatch base
select base_id,
count(*) as rides_count
from dbo.uber_rides_raw
group by base_id
order by rides_count desc;

---daily ride trends(time series)
select cast(pickup_datetime as date) as ride_date,
count(*) as rides_count
from dbo.uber_rides_raw
group by cast(pickup_datetime as date)
order by ride_date;
