CREATE DATABASE Education_Institute_management_system;
use  Education_Institute_management_system;


CREATE TABLE Students (
    studentId INT  AUTO_INCREMENT  PRIMARY KEY,
    firstName VARCHAR(15) NOT NULL,
    lastName  VARCHAR(15) NOT NULL,
    DOB       DATE,
    gender    VARCHAR(6) NOT NULL,
    address   VARCHAR(60) NOT NULL,
    email     VARCHAR(50) NOT NULL,
    enrollmentDate DATE DEFAULT (CURDATE()),
    
    CONSTRAINT CHK_Students3 CHECK(INSTR(email, '@') > 0)
);
select * from Students;
drop table Students;
drop table Lectures;
drop table Courses;

CREATE TABLE Lectures (
   lectureID int AUTO_INCREMENT  PRIMARY KEY NOT NULL,
	lectureName VARCHAR(50) NOT NULL,
    gender VARCHAR(50),
    Address VARCHAR(50),
    email VARCHAR(50) NOT NULL,
   
	
	CONSTRAINT CHK_Lectures2 CHECK(instr(email,'@')>0)
);
select * from Lectures;

CREATE TABLE Courses (
    courseID int   AUTO_INCREMENT PRIMARY KEY NOT NULL,
    courseName VARCHAR(50) NOT NULL,
    courseDescription TEXT,
    credits INT NOT NULL,
    lectureID int,
    foreign key (lectureID) references Lectures(lectureID)
	
);
select * from Courses;
CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    studentID int,
    courseID int,
    enrollment_date DATE DEFAULT (CURDATE()),
    FOREIGN KEY (courseID) REFERENCES Courses(courseID),
    FOREIGN KEY (studentID) REFERENCES Students(studentID)
);
drop table Enrollments;
select * from Enrollments;
CREATE TABLE Login(
	logid int auto_increment primary key,
    username VARCHAR(50),
    password VARCHAR(50)
);
select * from Login;
insert into Login(username,password) values('admin','admin');
