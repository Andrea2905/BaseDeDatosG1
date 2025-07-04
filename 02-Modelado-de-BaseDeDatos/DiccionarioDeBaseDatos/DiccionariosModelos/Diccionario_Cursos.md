
# Diccionario de Datos - Base de Datos CURSOS

## Tabla: Estudiante

| Campo           | Tipo de Dato | Tamaño     | PK   | FK   | Nulo | Único | Restricciones | Referencia | Descripción                      |
|----------------|--------------|------------|------|------|------|--------|----------------|------------|----------------------------------|
| numestudiante  | int          | -          | Sí   | No   | No   | Sí     | > 0            | -          | Identificador único del estudiante |
| matricula      | int          | -          | No   | No   | No   | Sí     | > 0            | -          | Matrícula del estudiante         |
| nombre         | nvarchar     | 50         | No   | No   | No   | No     | -              | -          | Nombre del estudiante            |
| apellidopaterno| nvarchar     | 50         | No   | No   | No   | No     | -              | -          | Apellido paterno del estudiante  |
| apellidomaterno| nvarchar     | 50         | No   | No   | Sí   | No     | -              | -          | Apellido materno del estudiante  |

---

## Tabla: Curso

| Campo             | Tipo de Dato | Tamaño     | PK   | FK   | Nulo | Único | Restricciones | Referencia | Descripción                   |
|------------------|--------------|------------|------|------|------|--------|----------------|------------|-------------------------------|
| numcurso         | int          | -          | Sí   | No   | No   | Sí     | > 0            | -          | Identificador único del curso |
| codigocurso      | int          | -          | No   | No   | No   | Sí     | > 0            | -          | Código interno del curso      |
| nombre del curso | nvarchar     | 50         | No   | No   | No   | No     | -              | -          | Nombre del curso              |

---

## Tabla: Inscripcion

| Campo           | Tipo de Dato | Tamaño | PK   | FK   | Nulo | Único | Restricciones        | Referencia   | Descripción                         |
|----------------|--------------|--------|------|------|------|--------|-----------------------|--------------|-------------------------------------|
| numestudiante  | int          | -      | Sí   | Sí   | No   | No     | Debe existir en tabla Estudiante | Estudiante(numestudiante) | Clave del estudiante inscrito       |
| numcurso       | int          | -      | Sí   | Sí   | No   | No     | Debe existir en tabla Curso      | Curso(numcurso)           | Clave del curso inscrito            |
| fechaInscripcion | date       | -      | No   | No   | No   | No     | Fecha válida          | -            | Fecha en que se inscribió al curso |
