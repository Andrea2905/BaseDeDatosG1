# Diccionario de Datos: VEHICULO-CLIENTE-SUCURSAL

---

## Tabla: CLIENTES

| Campo       | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones | Referencia | Descripción                      |
|-------------|--------------|--------|-----|-----|------|--------|----------------|------------|----------------------------------|
| Num.Cliente | INT          | -      | Sí  | No  | No   | Sí     | AUTO_INCREMENT | -          | Identificador único del cliente |
| Curp        | NVARCHAR     | 100    | No  | No  | No   | No     | -              | -          | CURP del cliente                 |
| Nombre      | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Nombre del cliente               |
| Ap_Paterno  | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Apellido paterno del cliente     |
| Ap_Materno  | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Apellido materno del cliente     |
| Telefono    | NVARCHAR     | 15     | No  | No  | No   | No     | -              | -          | Teléfono del cliente             |
| Direccion   | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Dirección general                |
| Calle       | NVARCHAR     | 11     | No  | No  | No   | No     | -              | -          | Calle                            |
| Numero      | INT          | -      | No  | No  | No   | No     | -              | -          | Número del domicilio             |
| Ciudad      | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Ciudad del cliente               |

---

## Tabla: VEHICULO

| Campo       | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones | Referencia         | Descripción                        |
|-------------|--------------|--------|-----|-----|------|--------|----------------|--------------------|------------------------------------|
| No.Vehiculo | INT          | -      | Sí  | No  | No   | Sí     | Auto incremento| -                  | Identificador del vehículo         |
| Placa       | NVARCHAR     | 10     | No  | No  | No   | Sí     | Único          | -                  | Placa del vehículo                 |
| Año         | YEAR         | -      | No  | No  | No   | No     | -              | -                  | Año de fabricación del vehículo    |
| Modelo      | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -                  | Modelo del vehículo                |
| Marca       | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -                  | Marca del vehículo                 |
| Num.Cliente | INT          | -      | No  | Sí  | No   | No     | -              | Num.Cliente        | Cliente propietario del vehículo   |

---

## Tabla: SUCURSAL

| Campo        | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones | Referencia | Descripción                        |
|--------------|--------------|--------|-----|-----|------|--------|----------------|------------|------------------------------------|
| No.Sucursal  | INT          | -      | Sí  | No  | No   | Sí     |Auto incremento | -          | ID único de la sucursal            |
| Id.Sucursal  | NVARCHAR     | 50     | No  | No  | No   | Sí     | Único          | -          | Identificador alterno de sucursal  |
| Nombre       | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Nombre de la sucursal              |
| Ubicación    | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Ubicación general                  |
| Calle        | NVARCHAR     | 11     | No  | No  | No   | No     | -              | -          | Calle de la sucursal               |
| Numero       | INT          | -      | No  | No  | No   | No     | -              | -          | Número de la sucursal              |
| Ciudad       | NVARCHAR     | 50     | No  | No  | No   | No     | -              | -          | Ciudad de la sucursal              |
| No.Vehiculos | INT          | -      | No  | No  | No   | No     | -              | -          | Cantidad de vehículos asignados    |

---

## Tabla: RENTA

| Campo        | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones | Referencia           | Descripción                        |
|--------------|--------------|--------|-----|-----|------|--------|----------------|-----------------------|------------------------------------|
| Fecha_Inicio | DATE         | -      | Sí  | No  | No   | No     | -              | -                     | Fecha de inicio del contrato       |
| Fecha_Fin    | DATE         | -      | No  | No  | No   | No     | -              | -                     | Fecha final del contrato           |
| Total_Dias   | DATE         | -      | No  | No  | No   | No     | -              | -                     | Duración de la renta               |
| No.Cliente   | INT          | -      | No  | Sí  | No   | No     | -              | Num.Cliente           | Cliente que renta el vehículo      |
| No.Vehiculo  | INT          | -      | No  | Sí  | No   | No     | -              | No.Vehiculo           | Vehículo rentado                   |

---

## Tabla: PERTENECE

| Campo        | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones | Referencia            | Descripción                          |
|--------------|--------------|--------|-----|-----|------|--------|----------------|------------------------|--------------------------------------|
| Estado       | INT          | -      | No  | No  | No   | No     | -              | -                      | Estado del vehículo (activo, etc.)   |
| Asignacion   | DATE         | -      | No  | No  | No   | No     | -              | -                      | Fecha de asignación                  |
| No.Vehiculo  | INT          | -      | Sí  | Sí  | No   | No     | -              | No.Vehiculo            | Vehículo asignado                    |
| No.Sucursal  | INT          | -      | Sí  | Sí  | No   | No     | -              | No.Sucursal            | Sucursal donde pertenece el vehículo|
