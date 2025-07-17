-- CREAR BASE DE DATOS "Instructor-Teaches-Class"
CREATE DATABASE itc;
Go

--Utilizar la BD creada
USE itc;
Go

-- Tabla: Instructor
CREATE TABLE Instructor (
    SSN INT NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    CONSTRAINT pk_instructor PRIMARY KEY (SSN)
);
GO

-- Tabla: Class
CREATE TABLE Class (
    CourseNum NVARCHAR(10) NOT NULL,
    Year INT NOT NULL,
    Term NVARCHAR(10) NOT NULL,
    Section NVARCHAR(10) NOT NULL,
    CONSTRAINT pk_class PRIMARY KEY (CourseNum, Year, Term, Section)
);
GO

-- Tabla: Teaches
CREATE TABLE Teaches (
    SSN INT NOT NULL,
    CourseNum NVARCHAR(10) NOT NULL,
    Year INT NOT NULL,
    Term NVARCHAR(10) NOT NULL,
    SectionId NVARCHAR(10) NOT NULL,
    CONSTRAINT pk_teaches PRIMARY KEY (SSN, CourseNum, Year, Term, SectionId),
    CONSTRAINT fk_teaches_instructor FOREIGN KEY (SSN)
        REFERENCES Instructor(SSN),
    CONSTRAINT fk_teaches_class FOREIGN KEY (CourseNum, Year, Term, SectionId)
        REFERENCES Class(CourseNum, Year, Term, Section)
);
GO
