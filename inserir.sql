USE Loja;

INSERT INTO Estado (Nome, UF) VALUES
('Espírito Santo', 'ES'),
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ');

INSERT INTO Municipio (Estado_idEstado, Nome, CodIBGE) VALUES
(1, 'Vitória', 3205309),  
(2, 'São Paulo', 3550308), 
(3, 'Rio de Janeiro', 3304557);

INSERT INTO Cliente (Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_idMunicipio) VALUES
('Luke Skywalker', '11122233344', '28999998888', 'Rua das Gaivotas', '150', 1, '29230000', 1),
('Peter Parker', '55566677788', '11988887777', 'Avenida Paulista', '1000', 2, '01310200', 2), 
('Mary Jane Watson', '99988877766', '21977776666', 'Avenida Copacabana', '500', 3, '22020001', 3);  

INSERT INTO ContaReceber (Cliente_idCliente, FaturaVendaID, DataConta, DataVencimento, Valor, Situação) VALUES
(1, 1001, '2025-10-01', '2025-10-31', 250.75, '1'),
(2, 1002, '2025-10-05', '2025-11-05', 1200.00, '1'),
(3, 1003, '2025-09-15', '2025-10-15', 80.50, '2'), 
(1, 1004, '2025-09-01', '2025-10-01', 300.00, '3');  

COMMIT;
