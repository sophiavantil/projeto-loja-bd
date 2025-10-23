Create database Loja;
Use Loja;

Create table Estado (
idEstado int not null auto_increment,
Nome varchar(50) not null,
UF char(2) not null,
primary key (idEstado)
);

Create table Municipio (
idMunicipio int not null auto_increment,
Estado_idEstado int not null,
Nome varchar(80) not null,
CodIBGE int not null,
primary key (idMunicipio),
constraint fk_Municipio_Estado
foreign key (Estado_idEstado)
references Estado (idEstado)
on delete no action
);

Create table Cliente (
idCliente int not null auto_increment,
Nome varchar(80) not null,
CPF varchar(11) not null,
Celular char(11),
EndLogradouro varchar(100) not null,
EndNumero varchar(10) not null,
EndMunicipio int not null,
EndCEP char(8),
Municipio_idMunicipio int not null,
primary key (idCliente),
constraint fk_Cliente_Municipio
foreign key (Municipio_idMunicipio)
references Municipio (idMunicipio)
on delete no action
on update no action
);

Create table ContaReceber (
idContaReceber int not null auto_increment,
Cliente_idCliente int not null,
FaturaVendaID int,
DataConta DATE not null,
DataVencimento DATE not null,
Valor DECIMAL(18,2),
Situação ENUM('1', '2', '3'),
primary key (idContaReceber),
constraint fk_ContaReceber_Cliente
foreign key (Cliente_idCliente)
references Cliente (idCliente)
on delete no action
on update no action
);