#Crear BD "empresapatito"

CREATE DATABASE empresapatito;


USE empresapatito;


SELECT * FROM empleados;

#Crear Tabla empleados
CREATE TABLE empleados(
Idempleado INT not null,
Nombre varchar (100) not null,
Puesto varchar (50),
FechaIngreso date,
Salario DECIMAL (10,2),
Constraint pk_empleados
PRIMARY KEY(Idempleado)
);

#Agregar una columna en la tabla empleados
ALTER TABLE empleados
ADD table CorreoElectronico VARCHAR(100);

#Modificar el tipo de Dato de un campo
ALTER TABLE empleados
Alter column Salario money not null;

#Renombrar un campo
ALTER TABLE Empleados
RENAME COLUMN CorreoElectronico to Email:


#Crear Tabla deptos
CREATE TABLE departamentos (
IdDepto INT not null auto_increment,
NombreDepto varchar(100)
);


#AGREGAR UN CAMPO A LA TABLA EMPLEADOS
#PARA QUE SEA FK
ALTER TABLE empleados
ADD column IdDepto int not null;

# AGREGAR FK
ALTER TABLE empleados
ADD CONSTRAINT fk_empleados_departamento
FOREIGN KEY (IdDepto) 
REFERENCES departamentos (IdDepto);


# ELIMINAR PK DE EMPLEADOS
ALTER TABLE Empleados
Drop primary key;

#ELIMINAR FK DE LA TABLA EMPLEADOS
ALTER TABLE empleados
Drop CONSTRAINT fk_empleados_departamento;

#ELIMINAR EL AUTO_INCREMENT
ALTER TABLE Departamentos
Modify column IdDepto INT NOT NULL,

#Eliminar la PK DE DEPTO
ALTER TABLE Departamentos
DROP PRIMARY KEY;

#CREAR UN CONSTRAINT DE VERIFICACION
#SALARIO
ALTER TABLE empleados
ADD CONSTRAINT chk_salario
CHECK (Salario > 0.0);

CREATE TABLE Categoria (
Id INT not null primary key default -1,
Nombre VARCHAR(20),
estatus CHAR (1) DEFAULT 'A'
);

DROP TABLE Categoria

INSERT INTO Categoria
VALUES (DEFAULT,'Carnes', DEFAULT);

SELECT * FROM Categoria;

INSERT INTO Categoria
VALUES (1,'Carnes', Default);


#ELIMNAR COLUMNA EMAIL
ALTER TABLE emplados
DROP COLUMN email;

#ELIMINAR TABLA
ALTER TABLE Empleados
ADD CONSTRAINT pk_empleados
PRIMARY KEY (Idempleado);

ALTER TABLE departamentos
ADD CONSTRAINT pk_departamentos
PRIMARY KEY (IdDepto);

#ELIMINAR TABLAS
DROP TABLE empleados;

drop table departamentos;

drop table categoria;

#ELIMINAR BD
DROP DATABASE empresapatito;