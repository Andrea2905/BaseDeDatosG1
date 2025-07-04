
# Diccionario de Datos - Biblioteca

## Entidad: Libros

| Campo     | Tipo de Dato   | Tamaño     | PK  | FK  | Nulo | Único | Restricciones         | Referencia | Descripción                        |
|-----------|----------------|------------|-----|-----|------|--------|------------------------|------------|-------------------------------------|
| numLibro  | int            | -          | Sí  | No  | No   | Sí     | Valor único, no nulo   | -          | Identificador único del libro       |
| isbn      | int            | -          | No  | No  | No   | Sí     | Valor único            | -          | Código ISBN del libro               |
| Titulo    | nvarchar       | 50         | No  | No  | No   | No     |                        | -          | Título del libro                    |
| autor     | nvarchar       | 50         | No  | No  | No   | No     |                        | -          | Autor del libro                     |
| cantidad  | int            | -          | No  | No  | No   | No     | >= 0                  | -          | Número de ejemplares disponibles    |

---

## Entidad: Lector

| Campo           | Tipo de Dato   | Tamaño     | PK  | FK  | Nulo | Único | Restricciones         | Referencia | Descripción                          |
|------------------|----------------|------------|-----|-----|------|--------|------------------------|------------|---------------------------------------|
| numLector        | int            | -          | Sí  | No  | No   | Sí     | Valor único, no nulo   | -          | Identificador único del lector        |
| nombre           | nvarchar       | 50         | No  | No  | No   | No     |                        | -          | Nombre del lector                     |
| apellidoPaterno  | nvarchar       | 50         | No  | No  | No   | No     |                        | -          | Apellido paterno del lector           |
| apellidoMaterno  | nvarchar       | 50         | No  | No  | No   | No     |                        | -          | Apellido materno del lector           |
| numMembresia     | int            | -          | No  | No  | No   | Sí     | Valor único            | -          | Número de membresía del lector        |

---

## Relación: Prestamo

| Campo      | Tipo de Dato   | Tamaño | PK  | FK  | Nulo | Único | Restricciones         | Referencia | Descripción                         |
|------------|----------------|--------|-----|-----|------|--------|------------------------|------------|--------------------------------------|
| numLibro   | int            | -      | Sí  | Sí  | No   | No     | Debe existir en Libros | Libros     | Identificador del libro prestado     |
| numLector  | int            | -      | Sí  | Sí  | No   | No     | Debe existir en Lector | Lector     | Identificador del lector que presta  |
