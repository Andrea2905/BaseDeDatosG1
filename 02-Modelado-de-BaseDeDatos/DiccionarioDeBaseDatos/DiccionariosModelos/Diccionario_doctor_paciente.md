
## Entidad: Doctor

| Campo       | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones | Referencia | Descripción                     |
|-------------|--------------|--------|-----|-----|------|--------|----------------|------------|---------------------------------|
| Id_doctor   | INT          | -      | Sí  | No  | No   | Sí     | -              | -          | Identificador único del doctor |
| Nombre      | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Nombre del doctor               |
| Ap_Paterno  | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Apellido paterno del doctor     |
| Ap_Materno  | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Apellido materno del doctor     |

---

## Entidad: Paciente

| Campo        | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones | Referencia | Descripción                       |
|--------------|--------------|--------|-----|-----|------|--------|----------------|------------|-----------------------------------|
| Id_Paciente  | INT          | -      | Sí  | No  | No   | Sí     | -              | -          | Identificador único del paciente |
| Nombre       | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Nombre del paciente               |
| Ap_Paterno   | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Apellido paterno del paciente     |
| Ap_Materno   | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Apellido materno del paciente     |

---

## Relación: Atiende

| Campo        | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones | Referencia | Descripción                            |
|--------------|--------------|--------|-----|-----|------|--------|----------------|------------|----------------------------------------|
| Fecha        | DATE         | -      | Sí  | No  | No   | No     | -              | -          | Fecha de atención                      |
| Diagnostico  | NVARCHAR     | 200    | No  | No  | No   | No     | -              | -          | Diagnóstico dado al paciente           |
| Id_Doctor    | INT          | -      | Sí  | Sí  | No   | No     | -              | Doctor     | Referencia al doctor que atiende       |
| Id_Paciente  | INT          | -      | Sí  | Sí  | No   | No     | -              | Paciente   | Referencia al paciente que es atendido |
