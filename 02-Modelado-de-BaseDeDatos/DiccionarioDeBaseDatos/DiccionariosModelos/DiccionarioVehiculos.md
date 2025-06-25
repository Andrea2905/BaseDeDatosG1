# 📘 Diccionario Vehiculos

"Tabla Cliente"

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumCliente`     | INT          | -      | ✅  | ❌  | ❌   | ✅     | -      | Identificador del cliente               |
| `Nombre`        | NVARCHAR      | 20   | ❌  | ❌  | ❌   | ❌     | Solo letras A-Z, longitud >= 3             | -                                | Nombre completo del cliente             |
| `Apellido1`          | NVARCHAR        | 20     | ❌  | ❌  | ❌   | ❌     | CHECK (Edad >= 18 AND Edad <= 120)         | -                                | Apellido 1 del cliente                       |
| `Apellido2`        | NVARCHAR      | 20  | ❌  | ❌  | ❌   | ❌     | Formato de correo válido                   | -                                | Apellido 2 del cliente                    |
| `Apellido2`        | INT     | -  | ❌  | ❌  | ❌   | ❌     | Formato de correo válido                   | -                                | Apellido 2 del cliente                    |