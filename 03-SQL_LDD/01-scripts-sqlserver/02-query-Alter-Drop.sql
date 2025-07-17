--Crear BD "empresapatito"

CREATE DATABASE empresapatito;
GO

USE empresapatito;
GO


SELECT * FROM empleados;

--Crear Tabla empleados
CREATE TABLE empleados(
Idempleado INT not null,
Nombre varchar (100) not null,
Puesto varchar (50),
FechaIngreso date,
Salario DECIMAL (10,2)
Constraint pk_empleados
PRIMARY KEY(Idempleado)
);
GO

--Agregar una columna en la tabla empleados
ALTER TABLE empleados
ADD CorreoElectronico VARCHAR(100);
GO

--Modificar el tipo de Dato de un campo
ALTER TABLE empleados
Alter column Salario money not null;

--Renombrar un campo
EXEC sp_rename 'empleados.CorreoElectronico',
'Email', 'COLUMN';
GO

--Crear Tabla deptos

CREATE TABLE departamentos (
IdDepto INT not null identity (1,1) primary key,
NombreDepto varchar(100)
);
GO

--AGREGAR UN CAMPO A LA TABLA EMPLEADOS
--PARA QUE SEA FK
ALTER TABLE empleados
ADD IdDepto int not null;
GO

--AGREGAR FK
ALTER TABLE empleados
ADD CONSTRAINT fk_empleados_departamento
FOREIGN KEY (IdDepto) 
REFERENCES departamentos (IdDepto);
GO


--ELIMINAR PK DE EMPLEADOS
ALTER TABLE Empleados
Drop CONSTRAINT pk_empleados;
GO

--ELIMINAR FK DE LA TABLA EMPLEADOS
ALTER TABLE empleados
Drop CONSTRAINT fk_empleados_departamento;

--Eliminar la PK DE DEPTO
ALTER TABLE departamentos
DROP CONSTRAINT [PK__departam__7AEC424E1EDC306A];
GO

--CREAR UN CONSTRAINT DE VERIFICACION
--SALARIO
ALTER TABLE empleados
ADD CONSTRAINT chk_salario
CHECK (Salario > 0.0);
GO

CREATE TABLE Categoria (
Id INT not null primary key default -1,
Nombre VARCHAR(20),
estatus CHAR (1) DEFAULT 'A'
);
GO

DROP TABLE Categoria

INSERT INTO Categoria
VALUES (DEFAULT,'Carnes', DEFAULT);

SELECT * FROM Categoria;

INSERT INTO Categoria
VALUES (1,'Carnes', Default);


--ELIMNAR COLUMNA EMAIL
ALTER TABLE emplados
DROP COLUMN email;

--ELIMINAR TABLA
ALTER TABLE Empleados
ADD CONSTRAINT pk_empleados
PRIMARY KEY (Idempleado);
GO

ALTER TABLE departamentos
ADD CONSTRAINT pk_departamentos
PRIMARY KEY (IdDepto);
GO

--ELIMINAR TABLAS
DROP TABLE empleados;
GO

drop table departamentos;
GO

drop table categoria;
Go


use master; 
GO
--ELIMINAR BD

DROP DATABASE empresapatito;
GO