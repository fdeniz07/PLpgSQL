create or replace function getCount()
	returns varchar(100)
	language plpgsql
	as
	
$$
declare

	film_count integer;
	
begin

	select count(*)
	into film_count
	from film;
	
	return film_count;

end $$;