/*
	Performance Tuning Lecture
	author : Hamidreza Sadeghian
*/

-- Sesssion 1
	SELECT * 
	FROM sys.dm_os_schedulers
----------------------------------------------
-- find max workers that can be created
	SELECT   max_workers_count 
	FROM sys.dm_os_sys_info
--------------------------------------------
	--the maximum numbers of workers that are really used by your SQL Server instance
	SELECT SUM(active_workers_count) 
	FROM sys.dm_os_schedulers  