
CREATE TABLE doughnut_ratings (
  location TEXT,
  time TEXT,
  date TEXT,
  type TEXT,
  rating INTEGER,
  comments TEXT
) ;

INSERT INTO doughnut_ratings (location,time,date,type,rating,comments) VALUES ('Krispy King','08:50:00','2007-09-27','plain glazed',10,'almost perfect');
INSERT INTO doughnut_ratings (location,time,date,type,rating,comments) VALUES ('Duncan''s Donuts','08:59:00','2007-08-25',NULL,6,'greasy');
INSERT INTO doughnut_ratings (location,time,date,type,rating,comments) VALUES ('Starbuzz Coffee','07:35:00','2007-05-24','cinnamon cake',5,'stale, but tasty');
INSERT INTO doughnut_ratings (location,time,date,type,rating,comments) VALUES ('Duncan''s Donuts','07:03:00','2007-04-26','jelly',7,'not enough jelly');