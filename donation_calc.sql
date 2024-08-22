SELECT * FROM Donor_data;

SELECT * FROM Donation_data;


-- How much is the total donation?
SELECT SUM(donation) as Total_donation from donation_data;

select sum(donation) as total_donation, count(donation) as donation, gender
from donation_data
group by gender;

select  sum(donation) as donation, donation_frequency
from donation_data
join donor_data
on donation_data.id = donor_data.id
group by donation_frequency;

-- 	Total donation and number of donations above $200.
select sum(donation) as Total_donation, count(donation) as Number_of_donation
from donation_data
having Total_donation > 200;

select concat('$ ', FORMAT(sum(donation), 2)) as Total_donation, count(donation) as Number_of_donation
from donation_data
where donation > 200;

-- Which top 10 states contributes the highest donations.
select state, sum(donation) as donation
from donation_data
group by state
order by donation desc
limit 10;

