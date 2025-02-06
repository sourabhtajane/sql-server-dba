SELECT cp.plan_handle, st.text 
FROM sys.dm_exec_cached_plans AS cp
CROSS APPLY sys.dm_exec_sql_text(cp.plan_handle) AS st
WHERE st.text LIKE '%YourStoredProcedureName%';

DBCC FREEPROCCACHE (0x06000500F7F3A52008000000000000000000000000000000);


EXEC sp_recompile 'YourStoredProcedureName';
