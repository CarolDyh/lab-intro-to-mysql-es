CREATE TABLE Coches (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    fabricante VARCHAR(50),
    modelo VARCHAR(50),
    anio YEAR,
    color VARCHAR(30)
);

CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente VARCHAR(20) UNIQUE,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion VARCHAR(255),
    ciudad VARCHAR(50),
    estado_provincia VARCHAR(50),
    pais VARCHAR(50),
    codigo_postal VARCHAR(15)
);

CREATE TABLE Vendedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_vendedor VARCHAR(20) UNIQUE,
    nombre VARCHAR(100),
    tienda VARCHAR(100)
);

CREATE TABLE Facturas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    num_factura VARCHAR(30) UNIQUE NOT NULL,
    fecha DATE NOT NULL,
    coche_id INT NOT NULL,
    cliente_id INT NOT NULL,
    vendedor_id INT NOT NULL,
    FOREIGN KEY (coche_id) REFERENCES Coches(id),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (vendedor_id) REFERENCES Vendedores(id)
);
