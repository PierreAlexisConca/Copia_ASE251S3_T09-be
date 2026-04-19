USE model;

-- Tabla categoria
CREATE TABLE categoria (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255)
);
INSERT INTO categoria (nombre, descripcion) VALUES
('Fertilizantes', 'Productos para nutrir plantas'),
('Herramientas', 'Herramientas agrícolas'),
('Semillas', 'Variedad de semillas'),
('Pesticidas', 'Control de plagas'),
('Riego', 'Sistemas de riego'),
('Sustratos', 'Tierra y sustratos'),
('Maquinaria', 'Maquinaria agrícola'),
('Accesorios', 'Accesorios varios');

-- Tabla cliente
CREATE TABLE cliente (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefono VARCHAR(20) NOT NULL
);
INSERT INTO cliente (nombre, email, telefono) VALUES
('Juan Perez', 'juanperez@mail.com', '999111222'),
('Ana Torres', 'ana.torres@mail.com', '988222333'),
('Luis Mendoza', 'luis.m@mail.com', '977333444'),
('Maria Lopez', 'maria.lopez@mail.com', '966444555'),
('Carlos Rojas', 'carlos.r@mail.com', '955555666'),
('Jorge Ramirez', 'jorge.r@mail.com', '944666777'),
('Sofia Castro', 'sofia.c@mail.com', '933777888'),
('Pedro Diaz', 'pedro.d@mail.com', '922888999');

-- Tabla contacto
CREATE TABLE contacto (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL
);
INSERT INTO contacto (nombre, telefono, email) VALUES
('Juan Perez', '999111222', 'juanperez@mail.com'),
('Ana Torres', '988222333', 'ana.torres@mail.com'),
('Luis Mendoza', '977333444', 'luis.m@mail.com'),
('Maria Lopez', '966444555', 'maria.lopez@mail.com'),
('Carlos Rojas', '955555666', 'carlos.r@mail.com'),
('Jorge Ramirez', '944666777', 'jorge.r@mail.com'),
('Sofia Castro', '933777888', 'sofia.c@mail.com'),
('Pedro Diaz', '922888999', 'pedro.d@mail.com');

-- Tabla pedido
CREATE TABLE pedido (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    fecha DATE NOT NULL,
    total FLOAT NOT NULL
);
INSERT INTO pedido (fecha, total) VALUES
('2024-04-01', 150.50),
('2024-04-02', 200.00),
('2024-04-03', 99.99),
('2024-04-04', 300.00),
('2024-04-05', 120.75),
('2024-04-06', 450.10),
('2024-04-07', 80.00),
('2024-04-08', 210.30);

-- Tabla producto
CREATE TABLE producto (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precio FLOAT NOT NULL
);
INSERT INTO producto (nombre, descripcion, precio) VALUES
('Fertilizante NPK', 'Fertilizante completo', 50.00),
('Pala', 'Herramienta de acero', 30.00),
('Semilla de maíz', 'Semilla híbrida', 10.00),
('Insecticida', 'Control de plagas', 25.00),
('Aspersor', 'Riego eficiente', 15.00),
('Sustrato universal', 'Tierra para plantas', 12.00),
('Tractor', 'Maquinaria agrícola', 5000.00),
('Guantes', 'Accesorio de protección', 5.00);

-- Tabla supplier
CREATE TABLE proveedores (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    ruc CHAR(11) NOT NULL,
    cellphone CHAR(9) NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100),
    address VARCHAR(150),
    state CHAR(1) NOT NULL
);
INSERT INTO proveedores (ruc, cellphone, company_name, contact_name, address, state) VALUES
('20123456789', '987654321', 'AgroPeru SAC', 'Luis Mendoza', 'Lima', 'A'),
('20987654321', '912345678', 'Fertilizantes del Sur', 'Ana Torres', 'Arequipa', 'A'),
('20456789123', '999888777', 'BioCrop Peru', 'Carlos Rojas', 'Cusco', 'A'),
('20765432109', '987123456', 'AgroTech Solutions', 'Maria Lopez', 'Trujillo', 'I'),
('20234567890', '912987654', 'GreenFields S.A.', 'Jorge Ramirez', 'Piura', 'I'),
('20876543210', '911234567', 'AgroAndes', 'Sofia Castro', 'Lambayeque', 'A'),
('20345678901', '922345678', 'CampoFertil', 'Pedro Diaz', 'Tacna', 'A'),
('20567890123', '933456789', 'SolAgro', 'Lucia Vega', 'Ica', 'I');
SELECT * FROM categoria;
SELECT * FROM cliente;
SELECT * FROM contacto;
SELECT * FROM pedido;
SELECT * FROM producto;
SELECT * FROM proveedores;