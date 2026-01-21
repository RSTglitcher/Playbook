--SINGLE LINE COMMENT

--CREATE TABLES
CREATE table_name
    (
    column1 Number(6)
    column2 Number(6)
    constraint column1_column2.pk
    primary key (column1.column2)
    );

--REMOVE TABLES
    Drop Table ______;

--INSERT data
INSERT INTO table_name
    column1 column2
    VALUES value1 value2
    SELECT
    FROM
    UPDATE
        SET ____ WHERE ____
        DELETE FROM _____ WHERE ____
    COMMIT; / ROLLBACK;

--CONCATENATE NAMES
table.columnName||' '||othercolumnName As NewName

--DATE
Current date: SYSDATE
Convert date: TO_CHAR(SYSDATE, "DD-MM-YY HH-M1-SS")

--Basic SEARCH functions
SELECT * FROM table_name WHERE REGEXP_LIKE(column_name,'searchvalue')ORDER BY TIMESTAMP DESC;
SELECT * FROM table_name WHERE column_name LIKE 'searchvalue';
SELECT * FROM table_name WHERE column_name = 'searchvalue';
SELECT * FROM table_name WHERE column_name BETWEEN value1 AND value2 ORDER BY column_name;
SELECT * FROM table_name WHERE column_name IN (value);
SELECT data_to_display FROM table_of_interest1 JOIN table_of_interest2 ON column_in_common WHERE select_or_filter_table;

DISTINCT (shows only unique values) FROM table_name
    WHERE =  > < >= <= != AND/OR Boolean conditions ORDER BY _______ ASC/DESC

--Basic JOINS functions
* = Inner JOIN / Left Outer JOIN / Right Outer JOIN / Full Outer JOIN / Self JOIN / Cross JOIN

SELECT __DATA__ FROM __TABLE1__ * __TABLE2__ ON __T1Column__ = __T2Column__ ORDER BY;
SELECT __DATA__ FROM __TABLE1__ * __TABLE2__ ON __T1Column__ = __T2Column__
                                * __TABLE3__ ON __T2Column__ = __T3Column__;

--Basic SET functions
* = UNION/ UNION ALL/INTERSECT/MINUS

SELECT __T1Column__ FROM __TABLE1__ * SELECT __T2Column__ FROM __TABLE2__

--Aggregates
* = COUNT / SUM / AVG / MIN / MAX

SELECT *._____, Non-aggregates FROM WHERE Non-aggregates
SELECT *._____, Non-aggregates FROM GROUP BY Non-aggregates HAVING Aggregates *
SELECT __NonAg1__, __NonAg2__ FROM __TABLE1__ * JOIN __TABLE2__ ON __T1Column__=__T2Column__
    GROUP BY __NonAg1__, __NonAg2__ HAVING * __Value__ = /IN
        (
        SELECT * ____ FROM ____ GROUP BY _____
        );

--Sub-Queries Syntax - Where function acts as a join between the main query and the sub query
-- Subqueries read every row in a table and compared these to the data. When reading, see the SQ first befpre checking the main query.
SELECT * FROM table_name WHERE ___ = /IN
    (
    SELECT * FROM
    );

--Views
CREATE VIEW __VIEW1__ as __VIEW2__
REPLACE VIEW __VIEW1__ as __VIEW2__
DROP VIEW __VIEW1__

SELECT ___ FROM (SELECT ___ FROM ___ GROUP BY___);
SELECT ___ FROM __TABLE1__ *JOIN (
                            SELECT ___ FROM ___ WHERE) AS Q
                                * ON Q = ___ = __TABLE1__ GROUP BY ___;
