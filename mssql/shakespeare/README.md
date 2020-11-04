## Source
https://github.com/catherinedevlin/opensourceshakespeare

## Modifications made to source
* Removed import of data from `schema_pg.sql`.
remove drop table if exists
to have cascading deletes re added one can add something like this: IF EXISTS(SELECT *
          FROM dbo.Scores)
  DROP TABLE dbo.Scores 
  and also a explicit constaint
  ALTER TABLE dbo.T2
   ADD CONSTRAINT FK_T1_T2_Cascade
   FOREIGN KEY (EmployeeID) REFERENCES dbo.T1(EmployeeID) ON DELETE CASCADE
   https://stackoverflow.com/questions/6260688/how-do-i-use-cascade-delete-with-sql-server