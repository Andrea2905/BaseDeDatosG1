-- CREAR BASE DE DATOS "EMPRESA"
CREATE DATABASE empresa2;
Go

--Utilizar la BD creada
USE empresa2;
Go


-- Tabla: Categoria
CREATE TABLE categoria (
    CategoriaId INT NOT NULL IDENTITY(1,1),
    NombreCategoria NVARCHAR(100) NOT NULL,
    CONSTRAINT pk_categoria PRIMARY KEY (CategoriaId),
    CONSTRAINT unique_nombrecategoria UNIQUE (NombreCategoria)
);
GO

-- Tabla: Cliente
CREATE TABLE cliente (
    IdCliente INT NOT NULL IDENTITY(1,1),
    NombreCliente NVARCHAR(100) NOT NULL,
    RFC NVARCHAR(13) NOT NULL,
    Direccion NVARCHAR(200),
    CONSTRAINT pk_cliente PRIMARY KEY (IdCliente),
    CONSTRAINT unique_rfc UNIQUE (RFC)
);
GO

-- Tabla: Producto
CREATE TABLE producto (
    ProductoId INT NOT NULL IDENTITY(1,1),
    NombreProducto NVARCHAR(100) NOT NULL,
    Existencia INT NOT NULL,
    PrecioUnitario MONEY NOT NULL,
    CategoriaId INT NOT NULL,
    CONSTRAINT pk_producto PRIMARY KEY (ProductoId),
    CONSTRAINT chk_existencia CHECK (Existencia > 0 AND Existencia <= 1000),
    CONSTRAINT chk_preciounitario CHECK (PrecioUnitario > 0.0),
    CONSTRAINT unique_nombreprod UNIQUE (NombreProducto),
    CONSTRAINT fk_producto_categoria FOREIGN KEY (CategoriaId)
        REFERENCES categoria(CategoriaId)
);
GO

-- Tabla: Pedido
CREATE TABLE pedido (
    PedidoId INT NOT NULL IDENTITY(1,1),
    Fecha DATE NOT NULL,
    IdCliente INT NOT NULL,
    CONSTRAINT pk_pedido PRIMARY KEY (PedidoId),
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (IdCliente)
        REFERENCES cliente(IdCliente)
);
GO

-- Tabla: DetallePedido
CREATE TABLE detalle_pedido (
    PedidoId INT NOT NULL,
    ProductoId INT NOT NULL,
    PrecioVenta MONEY NOT NULL,
    CantidadVendida INT NOT NULL,
    CONSTRAINT pk_detallepedido PRIMARY KEY (PedidoId, ProductoId),
    CONSTRAINT chk_precioventa CHECK (PrecioVenta > 0.0),
    CONSTRAINT chk_cantidad CHECK (CantidadVendida > 0),
    CONSTRAINT fk_detalle_pedido FOREIGN KEY (PedidoId)
        REFERENCES pedido(PedidoId),
    CONSTRAINT fk_detalle_producto FOREIGN KEY (ProductoId)
        REFERENCES producto(ProductoId)
);
GO
