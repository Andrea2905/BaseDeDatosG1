
# 📘 Diccionario de Datos – COMPANY

## EMPLOYEE

| Campo         | Tipo de Dato  | Tamaño       | PK  | FK  | Nulo | Único | Restricciones | Referencia   | Descripción              |
|---------------|---------------|--------------|-----|-----|------|--------|---------------|-------------|--------------------------|
| Employ_Id     | INT           | -            | Sí  | No  | No   | Sí     | > 0           | -           | Identificador del empleado |
| SSN           | NVARCHAR      | 11           | No  | No  | No   | Sí     | -             | -           | Número de seguro social  |
| Firstname     | NVARCHAR      | 50           | No  | No  | No   | No     | -             | -           | Nombre del empleado      |
| Lastname      | NVARCHAR      | 50           | No  | No  | No   | No     | -             | -           | Apellido del empleado    |
| Name          | NVARCHAR      | 100          | No  | No  | No   | No     | -             | -           | Nombre completo          |
| Salary        | DECIMAL       | (10,2)       | No  | No  | No   | No     | >= 0          | -           | Salario                  |
| Birthday      | DATE          | -            | No  | No  | Sí   | No     | -             | -           | Fecha de nacimiento      |
| Address       | NVARCHAR      | 100          | No  | No  | Sí   | No     | -             | -           | Dirección del empleado   |
| Sex           | CHAR          | 1            | No  | No  | No   | No     | M/F           | -           | Sexo                     |
| Department    | INT           | -            | No  | Sí  | No   | No     | -             | DEPARTMENT  | ID del departamento      |
| Jefe          | INT           | -            | No  | Sí  | Sí   | No     | -             | EMPLOYEE    | ID del jefe (Empleado)   |

## DEPARTMENT

| Campo         | Tipo de Dato  | Tamaño       | PK  | FK  | Nulo | Único | Restricciones | Referencia   | Descripción              |
|---------------|---------------|--------------|-----|-----|------|--------|---------------|-------------|--------------------------|
| Department_Id | INT           | -            | Sí  | No  | No   | Sí     | > 0           | -           | Identificador de depto.  |
| No_Depto      | NVARCHAR      | 10           | No  | No  | No   | Sí     | -             | -           | Número de departamento   |
| Name_Depto    | NVARCHAR      | 50           | No  | No  | No   | No     | -             | -           | Nombre del departamento  |
| Manager       | INT           | -            | No  | Sí  | Sí   | No     | -             | EMPLOYEE    | ID del gerente           |
| Start_Date    | DATE          | -            | No  | No  | Sí   | No     | -             | -           | Fecha de inicio          |

## WORKS_ON

| Campo         | Tipo de Dato  | Tamaño       | PK  | FK  | Nulo | Único | Restricciones | Referencia   | Descripción              |
|---------------|---------------|--------------|-----|-----|------|--------|---------------|-------------|--------------------------|
| Employed_Id   | INT           | -            | Sí  | Sí  | No   | No     | -             | EMPLOYEE    | Empleado asignado        |
| Proyect_Id    | INT           | -            | Sí  | Sí  | No   | No     | -             | PROYECT     | Proyecto asignado        |
| Hours         | DECIMAL       | (5,2)        | No  | No  | Sí   | No     | >= 0          | -           | Horas trabajadas         |

## DEPENDENT

| Campo         | Tipo de Dato  | Tamaño       | PK  | FK  | Nulo | Único | Restricciones | Referencia   | Descripción              |
|---------------|---------------|--------------|-----|-----|------|--------|---------------|-------------|--------------------------|
| Name          | NVARCHAR      | 100          | Sí  | No  | No   | No     | -             | -           | Nombre del dependiente   |
| Employee_Id   | INT           | -            | Sí  | Sí  | No   | No     | -             | EMPLOYEE    | ID del empleado          |
| Sex           | CHAR          | 1            | No  | No  | No   | No     | Male/Female   | -           | Sexo                     |
| Birthday      | DATE          | -            | No  | No  | Sí   | No     | -             | -           | Fecha de nacimiento      |
| Relationship  | NVARCHAR      | 50           | No  | No  | No   | No     | -             | -           | Relación con el empleado |

## PROYECT

| Campo         | Tipo de Dato  | Tamaño       | PK  | FK  | Nulo | Único | Restricciones | Referencia   | Descripción              |
|---------------|---------------|--------------|-----|-----|------|--------|---------------|-------------|--------------------------|
| Proyect_Id    | INT           | -            | Sí  | No  | No   | Sí     | > 0           | -           | Identificador del proyecto |
| No_Proyect    | NVARCHAR      | 10           | No  | No  | No   | Sí     | -             | -           | Número de proyecto       |
| Name_Proyect  | NVARCHAR      | 100          | No  | No  | No   | No     | -             | -           | Nombre del proyecto      |
| Location      | NVARCHAR      | 100          | No  | No  | Sí   | No     | -             | -           | Ubicación del proyecto   |
| Department_Id | INT           | -            | No  | Sí  | No   | No     | -             | DEPARTMENT  | Departamento asociado    |
