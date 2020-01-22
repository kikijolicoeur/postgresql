-- to avoid message about t2 when it already exists
SET client_min_messages TO WARNING;
-- create table only once
create table if not exists t2 (id integer, creation_date timestamp);
-- insert 100 rows 
insert into t2(id,creation_date)  select * from generate_series(coalesce((select max(id)+1 from t2),1),coalesce((select max(id)+100 from t2),100)),current_timestamp;
