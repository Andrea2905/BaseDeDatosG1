CREATE DATABASE ejercicio1999;

USE ejercicio1999;

CREATE TABLE Empleado(
Empleadoid int not null auto_increment,
Nombre nvarchar(15) not null,
Apellido1 nvarchar(15) not null,
Apellido2 nvarchar(15) ,
Direccion nvarchar(50) not null,
Salario decimal (10,2) Not null,
Jef int,
Departamento int not null,
Constraint pk_empleado
Primary Key (Empleadoid),
Constraint chk_salario
check (salario between 200 and 50000),
Constraint fk_empleado_jefe
FOREIGN KEY (Jef)
References empleado(Empleadoid)
ON DELETE NO ACTION
ON UPDATE NO ACTION
);


CREATE TABLE Departamento(
Departamentoid int not null auto_increment,
NombreDepto nvarchar(15) not null,
estatus char (2) not null,
administrador int not null,
CONSTRAINT pk_departamento
PRIMARY KEY (Departamentoid),
Constraint unique_nombredepto
UNIQUE(NombreDepto),
CONSTRAINT chk_estatus
CHECK(Estatus IN ('SI', 'NO')),
CONSTRAINT fk_empleado_depto
FOREIGN KEY (Administrador)
References Empleado(Empleadoid)
);


ALTER TABLE Empleado 
ADD CONSTRAINT fk_empleado_depto1
FOREIGN KEY (departamento)
REFERENCES Departamento(Departamentoid);


CREATE TABLE Ubicacion(
Ubicacionid int not null 
Ubicacion nvarchar(15) not null,
Deptoid int not null,
CONSTRAINT pk_ubicacion
Primary Key (Ubicacionid),
CONSTRAINT unique_deptoid
UNIQUE(Deptoid),
CONSTRAINT fk_ubicacion_depto
FOREIGN KEY (Deptoid)
REFERENCES Departamento(Departamentoid)
);
