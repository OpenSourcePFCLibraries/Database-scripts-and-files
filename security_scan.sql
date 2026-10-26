-- security_scan: the controls the PFC security scanner found by its last scan of
-- each object (window, menu, user object or DataWindow object), so that a
-- re-scan doesn't add again the controls deleted in Template Management.
-- The scanner creates it when the security database doesn't have it; create it
-- here instead if the scanner's login can't create tables.  The syntax works
-- in SQL Anywhere, SQL Server and Oracle.

create table security_scan (
	application varchar(40) not null,
	window varchar(64) not null,
	control varchar(128) not null,
	constraint pk_sec_scan primary key (application, window, control)
);
