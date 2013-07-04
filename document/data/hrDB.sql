USE master
GO
IF EXISTS(SELECT * FROM SYSDATABASES WHERE NAME='hrDB')
DROP DATABASE hrDB
GO
CREATE DATABASE hrDB
ON
(
 NAME='hrDB_data',
 FILENAME='E:\hrDB.mdf',
 FILEGROWTH=20%,
 MAXSIZE=500MB
)
LOG ON
(
  NAME='hrDB_log',
  FILENAME='E:\hrDB.ldf',
  FILEGROWTH=10%
)
GO

USE hrDB
GO
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='branch')
DROP TABLE branch
GO
CREATE TABLE branch
(
 branch_Id INT IDENTITY(1,1),
 branch_name VARCHAR(30) NOT NULL
)
GO

ALTER TABLE branch ADD CONSTRAINT PK_branch_Id PRIMARY KEY(branch_Id)
GO

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='position')
DROP TABLE position
GO
CREATE TABLE position
(
 position_Id INT IDENTITY(1,1),
 position_name VARCHAR(30) NOT NULL,
 branch_Id  INT NOT NULL
)
GO

ALTER TABLE position ADD CONSTRAINT PK_position_Id PRIMARY KEY(position_Id)
GO
ALTER TABLE position ADD CONSTRAINT FK_branch_Id FOREIGN KEY (branch_Id)  REFERENCES branch(branch_Id)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='positionIssuance')
DROP TABLE positionIssuance
GO
CREATE TABLE positionIssuance
(
 positionIssuance_Id INT IDENTITY(1,1),
 position_Id INT NOT NULL,
 positionIssuance_requireNum INT ,
 positionIssuance_endTime DATETIME ,
 positionIssuance_register VARCHAR(20),
 positionIssuance_registerTime DATETIME,
 positionIssuance_change VARCHAR(20),
 positionIssuance_changeTime DATETIME,
 positionIssuance_description TEXT,
 positionIssuance_require TEXT
 
)
GO

ALTER TABLE positionIssuance ADD CONSTRAINT  PK_positionIssuance_Id PRIMARY KEY(positionIssuance_Id)
GO
ALTER TABLE positionIssuance ADD CONSTRAINT FK_position_Id FOREIGN KEY (position_Id)  REFERENCES position(position_Id )
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='resume')
DROP TABLE resume
GO
CREATE TABLE resume
(
 resume_Id INT IDENTITY(1,1),
 person_name VARCHAR(20),
 resume_time DATETIME ,
 resume_sex CHAR(2),
 resume_age INT ,
 resume_birthday DATETIME,
 resume_degree INT,
 resume_positionId INT,
 resume_graduate VARCHAR(50),
 resume_polity INT,
 resume_photo VARCHAR(50),
 resume_IdCard VARCHAR(18),
 resume_nation INT,
 resume_speciality VARCHAR(30),
 resume_history TEXT,
 resume_birthPlace VARCHAR(20),
 resume_require VARCHAR(10),
 resume_phone VARCHAR(15),
 resume_postcode VARCHAR(10),
 resume_email VARCHAR(50) ,
 resume_familyPhone VARCHAR(50),
 resume_hobby VARCHAR(100),
 resume_skill VARCHAR(50),
 resume_Interviewstatus INT ,
 resume_status INT,
 resume_register VARCHAR(20),
 resume_registerTime DATETIME,
 resume_checker VARCHAR(20),
 resume_checkTime DATETIME,
 resume_checkStatus INT,
 resume_checkCommit TEXT
)
GO

ALTER TABLE resume ADD CONSTRAINT  PK_resume_Id PRIMARY KEY(resume_Id)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='examInterview')
DROP TABLE examInterview
GO
CREATE TABLE examInterview
(
 ei_id INT IDENTITY(1,1),
 ei_name VARCHAR(20),
 position_Id INT NOT NULL,
 ei_face VARCHAR(100),
 ei_grade INT,
 ei_ability VARCHAR(100),
 ei_interviewer VARCHAR(20),
 ei_interviewTime DATETIME ,
 ei_checker VARCHAR(20),
 ei_checkTime DATETIME,
 resume_id INT NOT NULL,
 ei_result VARCHAR(50),
 ei_comment TEXT,
 ei_interviewStatus INT ,
 ei_checkStatus INT
)
GO

ALTER TABLE examInterview ADD CONSTRAINT  PK_ei_id PRIMARY KEY(ei_id)
GO
ALTER TABLE examInterview ADD CONSTRAINT FK_resume_Id FOREIGN KEY(resume_Id) REFERENCES resume(resume_Id)
GO

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='employee')
DROP TABLE employee
GO
CREATE TABLE employee
(
  employee_Id INT IDENTITY(1,1),
 employee_name VARCHAR(20),
 employee_age INT ,
 employee_sex CHAR(2),
 employee_birthday DATETIME,
 employee_nation INT,
 employee_photo VARCHAR(30),
 employee_speciality VARCHAR(20),
 employee_degree INT,
 employee_polity INT,
 employee_familyAddress VARCHAR(50),
 employee_familyphone VARCHAR(15),
 employee_entertime DATETIME,
 employee_phone VARCHAR(15),
 employee_mobile VARCHAR(15),
 employee_email VARCHAR(30),
 employee_birthPlace VARCHAR(30),
 employee_address VARCHAR(50),
 employee_qq VARCHAR(20),
 employee_postcode VARCHAR(10),
 employee_hobby VARCHAR(100),
 employee_skills VARCHAR(50),
 employee_remark TEXT ,
 employee_changeNum INT ,
 employee_status INT,
 position_Id INT ,
 resume_Id INT 
 )
GO

ALTER TABLE employee ADD CONSTRAINT  PK_employee_Id PRIMARY KEY(employee_Id)
GO
ALTER TABLE employee ADD CONSTRAINT FK_resumePosition_Id FOREIGN KEY(position_Id) REFERENCES position(position_Id)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='employeeLog')
DROP TABLE employeeLog
GO
CREATE TABLE employeeLog
(
 el_id INT IDENTITY(1,1),
 el_employee_Id INT,
 el_name VARCHAR(20),
 el_age INT ,
 el_sex CHAR(2),
 el_birthday DATETIME,
 el_nation INT,
 el_photo VARCHAR(30),
 el_degree INT,
 el_email VARCHAR(50),
 el_speciality VARCHAR(20),
 el_polity INT,
 el_familyAddress VARCHAR(50),
 el_familyPhone VARCHAR(15),
 el_entertime DATETIME,
 el_phone VARCHAR(15),
 el_mobile VARCHAR(15),
 el_address VARCHAR(50),
 el_qq VARCHAR(20),
 el_postcode VARCHAR(10),
 el_hobby VARCHAR(100),
 el_skills VARCHAR(50),
 el_remark TEXT ,
 el_register VARCHAR(20),
 el_registerTime DATETIME,
 el_checker VARCHAR(20),
 el_checkTime DATETIME,
 el_checkStatus INT,
 el_changeTime DATETIME,
 el_changer VARCHAR(20),  
 el_checkComment TEXT,
 el_status INT,
 resume_Id  INT,
 position_Id INT,
 )
GO


ALTER TABLE employeeLog ADD CONSTRAINT  PK_el_id PRIMARY KEY(el_id)
GO
ALTER TABLE employeeLog ADD CONSTRAINT FK_elposition_Id FOREIGN KEY(position_Id) REFERENCES position(position_Id)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='salaryStandard')
DROP TABLE salaryStandard
GO
CREATE TABLE salaryStandard
(
 ss_Id INT IDENTITY(1,1),
 basicmoney MONEY,
 contact MONEY,
 floatWage MONEY,
 trafficSubsidy MONEY,
 lunchSubsidy MONEY,
 ss_designer VARCHAR(20),
 ss_register VARCHAR(20),
 ss_registerTime DATETIME,
 ss_checker VARCHAR(20),
 ss_checkerTime DATETIME,
 ss_changer VARCHAR(20),
 ss_changeTime DATETIME,
 ss_salary MONEY,
 ss_checkStatus INT,
 ss_comment TEXT,
 position_Id INT 
)
GO

ALTER TABLE salaryStandard ADD CONSTRAINT  PK_ss_Id PRIMARY KEY(ss_Id)
GO
alter table salaryStandard  add constraint Fk_salaryStandard_position_Id foreign key (position_Id) references position(position_Id)
go







IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='salaryGrant')
DROP TABLE salaryGrant
GO
CREATE TABLE salaryGrant
(
 sg_Id INT IDENTITY(1,1),
 employee_Id INT ,
 sg_factMoney MONEY,
 sg_deductMoney MONEY,
 sg_totalMoney MONEY,
 sg_register VARCHAR(20),
 sg_registerTime DATETIME,
 sg_checker VARCHAR(20),
 sg_checkTime DATETIME,
 sg_checkStatus INT,
 sg_commit TEXT,
 ss_Id INT,
   
)
GO

ALTER TABLE salaryGrant ADD CONSTRAINT  PK_sg_Id PRIMARY KEY(sg_Id)
GO
ALTER TABLE salaryGrant ADD CONSTRAINT FK_salaryGrant_ss_Id FOREIGN KEY(ss_Id) REFERENCES salaryStandard(ss_Id)
GO
ALTER TABLE salaryGrant ADD CONSTRAINT FK_employee_Id FOREIGN KEY(employee_Id) REFERENCES employee(employee_Id)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='rights')
DROP TABLE rights
GO
CREATE TABLE rights
(
 rights_code VARCHAR(20) NOT NULL,
 rights_parent_code VARCHAR(50) ,
 rights_name VARCHAR(20),
 rights_url VARCHAR(100),
 )
GO

ALTER TABLE rights ADD CONSTRAINT PK_rights_code PRIMARY KEY(rights_code)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='role')
DROP TABLE role
GO
CREATE TABLE role
(
 role_Id INT IDENTITY(1,1) NOT NULL,
 role_name VARCHAR(100) ,
 role_remark VARCHAR(100),
)
GO
ALTER TABLE role ADD CONSTRAINT PK_role_Id PRIMARY KEY(role_Id)
GO



IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='roleRights')
DROP TABLE roleRights
GO
CREATE TABLE roleRights
(
 roleRights_id INT IDENTITY(1,1) NOT NULL,
 roleRights_role_Id INT ,
 roleRights_code VARCHAR(20),
)
GO

ALTER TABLE roleRights ADD CONSTRAINT PK_roleRights_id PRIMARY KEY(roleRights_id)
GO
ALTER TABLE roleRights ADD CONSTRAINT FK_roleRights_code FOREIGN KEY(roleRights_code) REFERENCES rights(rights_code)
GO
ALTER TABLE roleRights ADD CONSTRAINT FK_roleRights_role_Id FOREIGN KEY(roleRights_role_Id) REFERENCES role(role_Id)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='users')
DROP TABLE users
GO
CREATE TABLE users
(
 user_Id INT IDENTITY(1,1) NOT NULL,
 user_name VARCHAR(20),
 user_password VARCHAR(20),
 user_state INT ,
 role_Id INT,
 employee_Id INT,
 position_Id INT
)
GO

ALTER TABLE users ADD CONSTRAINT PK_user_Id PRIMARY KEY(user_Id)
GO
ALTER TABLE users ADD CONSTRAINT FK_users_employee_Id FOREIGN KEY(employee_Id) REFERENCES employee(employee_Id)
GO
ALTER TABLE users ADD CONSTRAINT FK_users_role_Id FOREIGN KEY(role_Id) REFERENCES role(role_Id)
GO
ALTER TABLE users ADD CONSTRAINT FK_users_position_Id FOREIGN KEY(position_Id) REFERENCES position(position_Id)
GO



IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='dataType')
DROP TABLE dataType
GO
CREATE TABLE dataType
(
 datatype_Id INT IDENTITY(1,1) NOT NULL,
 datatype_name VARCHAR(20),
)
GO

ALTER TABLE dataType ADD CONSTRAINT PK_datatype_Id PRIMARY KEY(datatype_Id)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='dataDetail')
DROP TABLE dataDetail
GO
CREATE TABLE dataDetail
(
 dataDetail_Id INT IDENTITY(1,1) NOT NULL,
 dataDetail_name VARCHAR(20),
 dataDetail_datatype_Id INT ,
)
GO

ALTER TABLE dataDetail ADD CONSTRAINT PK_dataDetail_Idd PRIMARY KEY(dataDetail_Id)
GO
ALTER TABLE dataDetail ADD CONSTRAINT FK_dataDetail_datatype_Id FOREIGN KEY(dataDetail_datatype_Id) REFERENCES dataType(datatype_Id)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='positionChange')
DROP TABLE positionChange
GO
CREATE TABLE positionChange
(
 positionChange_Id INT IDENTITY(1,1),
 empolyee_Id INT ,
 positionChange_rname VARCHAR(20) ,
 positionChange_beforePosition_Id INT ,
 positionChange_afterPosition_Id INT,
 positionChange_reason VARCHAR(100),
 positionIssuance_change VARCHAR(100),
 positionChange_remark VARCHAR(100),
 positionChange_register VARCHAR(20),
 positionChange_registerTime DATETIME,
 positionChange_checker VARCHAR(20),
 positionChange_checkTime DATETIME,
 positionChange_checkStatus INT 
)
GO
ALTER TABLE positionChange ADD CONSTRAINT PK_positionChange_Id PRIMARY KEY(positionChange_Id)
GO
ALTER TABLE positionChange ADD CONSTRAINT FK_pc_employee_Id FOREIGN KEY(empolyee_Id) REFERENCES employee(employee_Id)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='examSecondLevel')
DROP TABLE examSecondLevel
GO
CREATE TABLE examSecondLevel
(
 esl_id INT IDENTITY(1,1) NOT NULL,
 esl_second_name VARCHAR(20),
 esl_dataDetail_Id INT 
)
GO

ALTER TABLE examSecondLevel ADD CONSTRAINT PK_esl_id PRIMARY KEY(esl_id)
GO

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='examdetails')
DROP TABLE examdetails
GO
CREATE TABLE examdetails
(
 ed_id INT IDENTITY(1,1) NOT NULL,
 ed_amount INT ,
 ed_selectCount INT,
 ed_dialogCotun INT,
 ed_score INT,
 esl_id INT
)
GO

ALTER TABLE examdetails ADD CONSTRAINT PK_ed_id PRIMARY KEY(ed_id)
GO
ALTER TABLE examdetails ADD CONSTRAINT FK_esl_id FOREIGN KEY(esl_id) REFERENCES examSecondLevel(esl_id)
GO

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='engageExam')
DROP TABLE engageExam
GO
CREATE TABLE engageExam
(
 ee_id INT IDENTITY(1,1) NOT NULL,
 ee_positionIssuance_Id INT ,
 ee_register VARCHAR,
 ee_registerTime DATETIME,
 ee_limiteTime VARCHAR(5),
 ed_id INT ,
)
GO
ALTER TABLE engageExam ADD CONSTRAINT PK_ee_id PRIMARY KEY(ee_id)
GO
ALTER TABLE engageExam ADD CONSTRAINT FK_ed_id FOREIGN KEY(ed_id) REFERENCES examdetails(ed_id)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='examSubject')
DROP TABLE examSubject
GO
CREATE TABLE examSubject
(
 sub_id INT IDENTITY(1,1) NOT NULL,
 sub_esl_Id INT ,
 sub_content TEXT,
 sub_answer1 TEXT,
 sub_answer2 TEXT,
 sub_answer3 TEXT,
 sub_answer4 TEXT,
 sub_correctAnswer TEXT,
 sub_register VARCHAR(20) ,
 sub_registerTime DATETIME,
 sub_changer VARCHAR(20),
 sub_changeTime DATETIME,
 sub_branch_Id int,
 sub_state int
 )
GO
ALTER TABLE examSubject ADD CONSTRAINT PK_sub_id PRIMARY KEY(sub_id)
GO
ALTER TABLE examSubject ADD CONSTRAINT FK_sub_esl_Id FOREIGN KEY(sub_esl_Id) REFERENCES examSecondLevel(esl_id) 
alter table examSubject  add constraint Fk_examSubject_sub_branch_Id foreign key (sub_branch_Id) references branch(branch_Id)
go


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='examRegisterDetail')
DROP TABLE examRegisterDetail
GO
CREATE TABLE examRegisterDetail
(
 erd_Id INT IDENTITY(1,1) NOT NULL,
 erd_ee_id INT ,
 erd_sub_id INT ,
)
GO
ALTER TABLE examRegisterDetail ADD CONSTRAINT PK_erd_Id PRIMARY KEY(erd_Id)
GO
ALTER TABLE examRegisterDetail ADD CONSTRAINT FK_erd_ee_id FOREIGN KEY(erd_ee_id) REFERENCES engageExam(ee_id)
GO
ALTER TABLE examRegisterDetail ADD CONSTRAINT FK_erd_sub_id FOREIGN KEY(erd_sub_id) REFERENCES examSubject(sub_id)
GO


IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='file_log')
DROP TABLE file_log
GO
CREATE TABLE file_log
(
 file_log_Id INT IDENTITY(1,1) NOT NULL,
 file_log_remark TEXT ,
 file_log_type VARCHAR(20) ,
 file_log_tableName VARCHAR(50)
)
GO

ALTER TABLE file_log ADD CONSTRAINT PK_file_log_Id PRIMARY KEY(file_log_Id)
GO































