# Database-scripts-and-files


PEAT is for the demo application\
EASDEMO is for the example application\
PFC is for the main framework, primarily needed if you use the PFC security service.\
\
The *.db files are the original SQL Anywhere database files.\
The *17.db files are the same databases migrated to version 17 of SQL Anywhere.\
The *sql_server.bak files are the same databases migrated to SQL Server 2022.

The individual files can be downloaded directly from the [Releases link](https://github.com/OpenSourcePFCLibraries/Database-scripts-and-files/releases/tag/1.0).

## The SQL scripts

- `pfcexor7.sql` (Oracle 7) and `pfcexs10.sql` (Sybase System 10/11) create the EASDEMO tables, with their data, in those databases (including the PFC security tables and the old example catalog tables); they date from 1997.
- `control.sql` widens the `control` column of the security tables (`security_info` and `security_template`) to 128 characters, in SQL Anywhere syntax.
- `exam.sql` and `examcat.sql` fill the `examples` and `examples_categories_list` tables. The Examples app no longer reads those tables: its catalog is in `examples/exam.txt` and `examples/examcat.txt` in the PFC repositories (see the [Examples app README](https://github.com/OpenSourcePFCLibraries/2025-Solution/blob/master/examples/README.md)). The tables, and these scripts, are only needed by older versions of the app.
