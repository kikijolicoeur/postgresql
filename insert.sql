CREATE TABLE t2 (
    id INTEGER NOT NULL,
    creation_date TIMESTAMP
);
-- insert 100 rows 
insert into t2(id,creation_date)  select * from generate_series(coalesce((select max(id)+1 from t2),1),coalesce((select max(id)+100 from t2),100)),current_timestamp;
