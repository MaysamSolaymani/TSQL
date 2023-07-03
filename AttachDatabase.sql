CREATE DATABASE TestAttach
	ON (FILENAME = 'E:\SQLData\Data\AttachStudentDB.mdf'),
	(FILENAME = 'E:\SQLData\Data\AttachStudentDB_log.ldf')
	FOR ATTACH

CREATE DATABASE TestAttach
	ON (FILENAME = 'E:\SQLData\Data\TestAttach.mdf')
	FOR ATTACH
