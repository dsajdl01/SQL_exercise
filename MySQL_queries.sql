
-- ***********************************************************************************************************************************
-- 															TABLES
-- ************************************************************************************************************************************

-- member table

SELECT * FROM member;

-- Description of the query: 
/** select and display all columns from the member table. 
 ** 
 **/
-- result: 
+----------+-------------------+------+
| memberNo | name              | age  |
+----------+-------------------+------+
|        1 | David Sajdl       |   37 |
|        2 | Jane Doe          |   38 |
|        3 | Yadira Diez       |   34 |
|        4 | Tatiana Teheran   |   35 |
|        5 | Robert Paweley    |   34 |
|        6 | Rita Cabezas      |   32 |
|        7 | Magdalema Mazurek |   34 |
|        8 | Ben Knight        |   35 |
|        9 | Montserrat Diez   |   42 |
|       10 | Gaby Navas        |   27 |
|       11 | Andrew Docherty   |   43 |
|       12 | Luciana Hugueney  |   25 |
+----------+-------------------+------+
12 rows in set (0.00 sec)

-- book table

SELECT * FROM book;

-- Description of the query: 
/** select and display all columns from the book table.
 **
 **/
-- result:
+-------------------+--------------------------------+----------------------+--------------------+------+-----------+
| isbn              | title                          | author               | publisher          | year | category  |
+-------------------+--------------------------------+----------------------+--------------------+------+-----------+
| 127-6-35-830178-9 | Have an Excellent Garden       | William Smith        | Dorling Kinderslay | 1901 | Gardening |
| 297-5-22-980975-0 | Always Fresh Vegetables        | William Smith        | Dorling Kinderslay | 1998 | Gardening |
| 326-3-65-632356-9 | The Magic of Reality           | Richard Dawkings     | Black Swan         | 2009 | Science   |
| 342-3-19-090959-0 | The Blind Watchmaker           | Richard Dawkings     | Black Swan         | 2010 | Science   |
| 342-3-19-468469-X | The Selfish Gane               | Richard Dawkings     | Black Swan         | 1976 | Science   |
| 346-3-47-866374-4 | The Ancestor\s Tale            | Richard Dawkings     | Black Swan         | 2012 | Science   |
| 645-5-64-738419-X | The God Delusion               | Richard Dawkings     | Black Swan         | 2011 | Science   |
| 732-4-87-487801-6 | Hard Work on Development       | Dale Carneqie        | Atlantic books     | 1996 | Self Help |
| 9-467-48789-8     | It is Unhappy End              | Andrea Wood          | Atlantic books     | 1900 | Drama     |
| 9-634-56348-3     | Stranger in my Life            | Andrea Wood          | Atlantic books     | 1898 | Drama     |
| 9-734-64875-3     | Happy Life                     | Andrea Wood          | Atlantic books     | 1899 | Drama     |
| 928-3-72-847297-X | Have a Happy Development       | William Smith        | Dorling Kinderslay | 1997 | Self Help |
| 936-4-53-481387-8 | Happy Hours                    | Dale Carneqie        | Atlantic books     | 1989 | Self Help |
| 978-0-52-775256-9 | The Greatest Show on Earth     | Richard Dawkings     | Black Swan         | 2012 | Science   |
| 978-0-96-717478-4 | How To Develop Self Confidence | Dale Carneqie        | Atlantic books     | 1981 | Self Hepl |
| 978-1-40-938375-X | RHS Encyclopedia of Gardening  | Christopher Brickell | Dorling Kinderslay | 2012 | Gardening |
+-------------------+--------------------------------+----------------------+--------------------+------+-----------+
16 rows in set (0.00 sec)

-- borrowed table

SELECT * FROM borrowed;

-- Description of the query: 
/** select and display all columns from the borrowed table.
 **
 **/
-- result:
+-------------+----------+-------------------+------------+
| borrowedRef | memberNo | isbn              | date       |
+-------------+----------+-------------------+------------+
|        1000 |        1 | 326-3-65-632356-9 | 2013-09-03 |
|        1001 |        7 | 645-5-64-738419-X | 2013-09-21 |
|        1002 |        1 | 346-3-47-866374-4 | 2013-09-28 |
|        1003 |        9 | 9-467-48789-8     | 2013-10-03 |
|        1004 |        2 | 732-4-87-487801-6 | 2013-10-03 |
|        1005 |        3 | 326-3-65-632356-9 | 2013-10-11 |
|        1006 |        1 | 342-3-19-090959-0 | 2013-10-10 |
|        1007 |        9 | 928-3-72-847297-X | 2013-10-21 |
|        1008 |        6 | 297-5-22-980975-0 | 2013-10-30 |
|        1009 |        1 | 978-0-52-775256-9 | 2013-10-30 |
|        1010 |       12 | 9-634-56348-3     | 2013-11-08 |
|        1011 |        2 | 326-3-65-632356-9 | 2013-11-15 |
|        1012 |        1 | 978-0-52-775256-9 | 2013-11-18 |
|        1013 |        6 | 978-1-40-938375-X | 2013-11-20 |
|        1014 |        8 | 9-467-48789-8     | 2013-12-04 |
|        1015 |        7 | 346-3-47-866374-4 | 2013-12-06 |
|        1016 |        1 | 978-0-52-775256-9 | 2013-12-12 |
|        1017 |        2 | 9-467-48789-8     | 2014-01-10 |
|        1018 |        9 | 9-634-56348-3     | 2014-01-12 |
|        1019 |        1 | 645-5-64-738419-X | 2014-01-20 |
|        1020 |        7 | 127-6-35-830178-9 | 2014-01-20 |
|        1021 |        8 | 936-4-53-481387-8 | 2014-01-28 |
|        1022 |        3 | 978-0-52-775256-9 | 2014-02-10 |
|        1023 |        1 | 645-5-64-738419-X | 2014-02-10 |
|        1024 |       10 | 297-5-22-980975-0 | 2014-02-12 |
|        1025 |        5 | 346-3-47-866374-4 | 2014-02-19 |
|        1026 |       10 | 127-6-35-830178-9 | 2014-02-22 |
|        1027 |        7 | 9-634-56348-3     | 2014-02-22 |
|        1028 |        1 | 342-3-19-468469-X | 2014-02-24 |
|        1029 |        7 | 936-4-53-481387-8 | 2014-02-24 |
|        1030 |        9 | 127-6-35-830178-9 | 2014-02-24 |
|        1031 |        9 | 9-467-48789-8     | 2014-02-27 |
|        1032 |        7 | 346-3-47-866374-4 | 2014-02-28 |
+-------------+----------+-------------------+------------+
33 rows in set (0.00 sec)

-- ********************************************************************************************************************************
--         											   QUERIES
-- ********************************************************************************************************************************

-- 1) List the title, category and year of publication of each book held in the library. 
-- The list should be ordered by ascending category, and within that by descending year of publication

SELECT title, category, year FROM book 
ORDER BY category, year DESC;

-- Description of the query: 
/** select and display columns; title, category and year from the book table 
 **  and enforce that category are with ascending order and year with descending order
 ** by using order by clause.
 **
 **/
-- result:
+--------------------------------+-----------+------+
| title                          | category  | year |
+--------------------------------+-----------+------+
| It is Unhappy End              | Drama     | 1900 |
| Happy Life                     | Drama     | 1899 |
| Stranger in my Life            | Drama     | 1898 |
| RHS Encyclopedia of Gardening  | Gardening | 2012 |
| Always Fresh Vegetables        | Gardening | 1998 |
| Have an Excellent Garden       | Gardening | 1901 |
| The Greatest Show on Earth     | Science   | 2012 |
| The Ancestor\s Tale            | Science   | 2012 |
| The God Delusion               | Science   | 2011 |
| The Blind Watchmaker           | Science   | 2010 |
| The Magic of Reality           | Science   | 2009 |
| The Selfish Gane               | Science   | 1976 |
| Have a Happy Development       | Self Help | 1997 |
| Hard Work on Development       | Self Help | 1996 |
| Happy Hours                    | Self Help | 1989 |
| How To Develop Self Confidence | Self Hepl | 1981 |
+--------------------------------+-----------+------+
16 rows in set (0.00 sec)

-- 2) Find the titles of books in the "Self Help" category that have "happy" somewhere in their title. 

SELECT title, category FROM book 
WHERE category ='Self Help'AND title LIKE '%Happy%';

-- Description of the query:
/** select and display columns; title and category from the book table 
 ** and enforce that category are equal to Self Help and title contain the word happy
 ** by using where clause.
 **
 **/
-- result:
+--------------------------+-----------+
| title                    | category  |
+--------------------------+-----------+
| Have a Happy Development | Self Help |
| Happy Hours              | Self Help |
+--------------------------+-----------+
2 rows in set (0.00 sec)

-- 3) Find the titles of books borrowed by "Jane Doe". 

SELECT title,name FROM book, borrowed, member tables
WHERE name ='Jane Doe' AND member.memberNo = borrowed.memberNo AND book.isbn = borrowed.isbn;

-- Description of the query:
/** select and display columns; title and name from the book and member tables, 
 ** then it joins member with borrowed table and book with borrowed  table  where the columns
 ** member.memberNo is link to borrowed.memberNo and book.isbn is link to borrowed.isbn 
 ** and also enforce that name is equal to Jane Doe by using where clause.
 ** 
 **/
-- result:
+--------------------------+----------+
| title                    | name     |
+--------------------------+----------+
| Hard Work on Development | Jane Doe |
| The Magic of Reality     | Jane Doe |
| It is Unhappy End        | Jane Doe |
+--------------------------+----------+
3 rows in set (0.00 sec)

-- 4) Find the age profile of members, i.e., for each age, find the number of members of that age. 

SELECT age, COUNT(age) AS total_age FROM member 
GROUP BY age;

-- Description of the query:
/** select and display columns; age and amount of the ages that are the same from the member table
 ** count age uses group by clause to count the same age.
 ** 
 **/
-- result:
+------+-----------+
| age  | total_age |
+------+-----------+
|   25 |         1 |
|   27 |         1 |
|   32 |         1 |
|   34 |         3 |
|   35 |         2 |
|   37 |         1 |
|   38 |         1 |
|   42 |         1 |
|   43 |         1 |
+------+-----------+
9 rows in set (0.00 sec)

-- 5) Find the titles of books published before 1900. 

SELECT title, year FROM book 
WHERE year < 1900 ORDER BY year;

-- Description of the query:
/** select and display columns; title an year from the book table
 ** and enforce that only year below 1900 is displayed 
 ** by using where clause.
 ** 
 **/
-- result:
+---------------------+------+
| title               | year |
+---------------------+------+
| Stranger in my Life | 1898 |
| Happy Life          | 1899 |
+---------------------+------+
2 rows in set (0.00 sec)

-- 6) Find the titles of books that have never been borrowed. 

 SELECT title FROM book  
 WHERE isbn NOT IN (SELECT isbn FROM borrowed);

-- Description of the query:
/** select and display column title from the book table
 ** and enforce that isbn is not in borrowed table 
 ** by using where clause with sub-query and IN condition.
 **/
-- result:
+--------------------------------+
| title                          |
+--------------------------------+
| Happy Life                     |
| How To Develop Self Confidence |
+--------------------------------+
2 rows in set (0.00 sec)

 -- 7) Find the name of the youngest member of the library. 

SELECT * FROM member 
WHERE age <= ALL (SELECT age FROM member);

-- Description of the query:
/** select and display all columns from the member table
 ** and enforce that age is smaller or equal to the age in the member table 
 ** by using where clause with sub-query and ALL comleration condition.
 ** 
 **/
-- result:
+----------+------------------+------+
| memberNo | name             | age  |
+----------+------------------+------+
|       12 | Luciana Hugueney |   25 |
+----------+------------------+------+
1 row in set (0.00 sec)

 -- 8) Find the names of members who have borrowed any book published by "Atlantic Books". 

 SELECT name, title, publisher FROM member, borrowed, book 
WHERE publisher = 'Atlantic Books' AND member.memberNo = borrowed.memberNo AND book.isbn = borrowed.isbn;

-- Description of the query:
/** select and display columns; name, title and publisher from the member and book table
 ** then join member with borrowed table and book with borrowed  table  where the columns
 ** member.memberNo is link to borrowed.memberNo and book.isbn is link to borrowed.isbn   
 ** and enforce that publisher is equal to Atlantic Books by using where clause.
 **
 **/
-- result:
+-------------------+--------------------------+----------------+
| name              | title                    | publisher      |
+-------------------+--------------------------+----------------+
| Jane Doe          | Hard Work on Development | Atlantic books |
| Jane Doe          | It is Unhappy End        | Atlantic books |
| Magdalema Mazurek | Stranger in my Life      | Atlantic books |
| Magdalema Mazurek | Happy Hours              | Atlantic books |
| Ben Knight        | It is Unhappy End        | Atlantic books |
| Ben Knight        | Happy Hours              | Atlantic books |
| Montserrat Diez   | It is Unhappy End        | Atlantic books |
| Montserrat Diez   | Stranger in my Life      | Atlantic books |
| Montserrat Diez   | It is Unhappy End        | Atlantic books |
| Luciana Hugueney  | Stranger in my Life      | Atlantic books |
+-------------------+--------------------------+----------------+
10 rows in set (0.01 sec)

-- 9) For each category, find the names of members who have borrowed more than five books in that category. 

SELECT category, name, COUNT(name) As total_borrow_catgory  FROM member, borrowed, book 
WHERE member.memberNo = borrowed.memberNo AND book.isbn = borrowed.isbn 
GROUP BY name, category  
HAVING COUNT(name) > 5;

-- Description of the query:
/** select and display columns; category, name, and amount of the book that member borrowed from the book, member and borrowed tables
 ** then join member with borrowed table and book with borrowed  table  where the columns
 ** member.memberNo is link to borrowed.memberNo and book.isbn is link to borrowed.isbn 
 ** group name and category to count amount of the book that member borrowed by using group by clause
 ** and enforce by having clause that only member are display that the amount of the borrowed books are greater then 5.
 **
 **/
-- result:
+----------+-------------+----------------------+
| category | name        | total_borrow_catgory |
+----------+-------------+----------------------+
| Science  | David Sajdl |                    9 |
+----------+-------------+----------------------+
1 row in set (0.01 sec)


-- 10) Find the names of members who have borrowed books from both of the categories "Gardening" and "Self Help".

SELECT member.memberNo, name FROM member, borrowed, book  
WHERE category = 'Self help' AND member.memberNo = borrowed.memberNo AND book.isbn= borrowed.isbn 
HAVING name IN (SELECT name FROM member, borrowed, book 
				WHERE category = 'Gardening' AND member.memberNo = borrowed.memberNo AND book.isbn= borrowed.isbn);

-- Description of the query:
/** select and display columns; memberNo and name from the member, borrowed, book table
 ** then join member with borrowed table and book with borrowed  table  where the columns
 ** member.memberNo is link to borrowed.memberNo and book.isbn is link to borrowed.isbn and category is equal to Self help
 ** and enforce by using having clause that member name is in the category that is equal to Gardening.
 **
 **/
-- result:
+----------+-------------------+
| memberNo | name              |
+----------+-------------------+
|        7 | Magdalema Mazurek |
|        9 | Montserrat Diez   |
+----------+-------------------+
2 rows in set (0.00 sec)


--11) Find the most prolific author in the library, i.e., the author who has authored the most books. 

SELECT COUNT(author) FROM book  
GROUP BY author 
ORDER BY COUNT(author) DESC LIMIT 1;

-- Description of the query:
/** select and display columns; author and amount of books that are hold in the library by this author from the book table
 ** group author to count the number of books that author has in library by using group by clause
 ** and enforce by order clause that only greatest author is display by limit output to one record using LIMIT 1.
 ** 
 **/
-- result:
+------------------+-------------+
| author           | no_of_books |
+------------------+-------------+
| Richard Dawkings |           6 |
+------------------+-------------+
1 row in set (0.00 sec)

-- 12) Find the names of members who have borrowed the same book more than once.

SELECT name, title, COUNT(borrowed.isbn) As total_borrow_catgory  FROM member, borrowed, book 
WHERE  member.memberNo = borrowed.memberNo AND book.isbn = borrowed.isbn 
GROUP BY  borrowed.isbn, name 
HAVING COUNT(name) > 1;

-- Description of the query:
/** select and display columns; name, title and total_borrow_catgory that is a number of books that member borrowed 
 ** from the member, borrowed and book table
 ** then join member with borrowed table and book with borrowed  table  where the columns
 ** member.memberNo is link to borrowed.memberNo and book.isbn is link to borrowed.isbn 
 ** use group by clause to count number of book that member borrowed by using columns borrowed.isbn and name
 ** and enforce by having clause that number of book that member borrowed is greater that 1.
 ** 
 **/
-- result:
+-------------------+----------------------------+----------------------+
| name              | title                      | total_borrow_catgory |
+-------------------+----------------------------+----------------------+
| Magdalema Mazurek | The Ancestor\s Tale        |                    2 |
| David Sajdl       | The God Delusion           |                    2 |
| Montserrat Diez   | It is Unhappy End          |                    2 |
| David Sajdl       | The Greatest Show on Earth |                    3 |
+-------------------+----------------------------+----------------------+
4 rows in set (0.01 sec)

