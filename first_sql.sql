-- my sql
SELECT  Orderdate,DATEADD(DAY, 8 - DATEPART(WEEKDAY, Orderdate), CAST(Orderdate AS DATE)) [End_Dateof_Week] ,
 Cast( DATEADD(MM,DATEDIFF(MM, -1, Orderdate),-1) as Date) as  Last_dayothe_month from [dbo].[Orders];