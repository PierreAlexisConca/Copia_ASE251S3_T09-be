USE model;

CREATE TABLE supplier (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ruc CHAR(11) NOT NULL,
    cellphone CHAR(9) NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100),
    address VARCHAR(150),
    state CHAR(1) NOT NULL
);

INSERT INTO supplier (ruc, cellphone, company_name, contact_name, address, state)
VALUES 
('20123456789', '987654321', 'AgroPeru SAC', 'Luis Mendoza', 'Lima', 'A'),
('20987654321', '912345678', 'Fertilizantes del Sur', 'Ana Torres', 'Arequipa', 'A'),
('20456789123', '999888777', 'BioCrop Peru', 'Carlos Rojas', 'Cusco', 'A'),
('20765432109', '987123456', 'AgroTech Solutions', 'Maria Lopez', 'Trujillo', 'I'),
('20234567890', '912987654', 'GreenFields S.A.', 'Jorge Ramirez', 'Piura', 'I');
SELECT * FROM supplier;
TRUNCATE TABLE supplier;
