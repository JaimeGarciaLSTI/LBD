-- Selects
SELECT idClientes as 'ID Chido', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Añejos' 
from practicas.clientes;

SELECT idClientes2 as 'ID Chido2', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Soles vividos' 
from practicas.clientes2;

SELECT idClientes3 as 'ID Chido3', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Vida' 
from practicas.clientes3;

SELECT idClientes4 as 'ID Chido4', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Menos Vida' 
from practicas.clientes4;

SELECT idClientes5 as 'ID Chido5', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Dias sin morir' 
from practicas.clientes5;

SELECT idClientes6 as 'ID Chido6', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Años' 
from practicas.clientes6;

SELECT idClientes7 as 'ID Chido7', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Años' 
from practicas.clientes7;

SELECT idClientes8 as 'ID Chido8', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Años' 
from practicas.clientes8;

SELECT idClientes9 as 'ID Chido9', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Años' 
from practicas.clientes9;

SELECT idClientes10 as 'ID Chido10', Nombre as 'Nombre', ApellidoP as 'ApellidoP',
ApellidoM as 'ApellidoM',(Edad) as 'Años'
from practicas.clientes10;

-- Drop
DROP table practicas.clientes7; -- No utilizar

-- Insert INTO
insert into clientes(idClienteses,Nombre,ApellidoP,ApellidoM,Edad)
values('0000','Jhonny',' Be','Good','31');

-- Insert INTO select
INSERT INTO practicas.clienteses10 SELECT * FROM practicas.clientes;
SELECT * FROM practicas.clientes10;