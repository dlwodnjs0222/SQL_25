use sakila;

select distinct special_features from film;

select count(distinct special_features) from film;

select special_features from film group by special_features;

select count(special_features) from film group by special_features;

select  special_features, count(special_features) from film group by special_features;

select rating from film;

select count(rating) from film;

select distinct rating from film;

select rating from film group by rating;

select special_features, rating from film group by rating, special_features;

select rating, special_features from film group by rating, special_features;

select special_features, rating from film group by rating, special_features order by rating;

select  special_features, rating, count(*) 
	from film 
    group by special_features, rating;
    
