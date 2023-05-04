create database banco;
use banco;

create table Clientes(
ID_Cliente int primary key,
nombre varchar (30),
direccion varchar (30),
telefono varchar (15)
);

create table Cuenta(
ID_Cuenta int  primary key,
monto int,
ID_Cliente int,
foreign key (ID_Cliente) references Clientes(ID_Cliente)
);

insert into Clientes (ID_Cliente,nombre,direccion,telefono) values 
(1,'Juan','Carrea 8 n 25-30','018000117711');
insert into Clientes (ID_Cliente,nombre,direccion,telefono) values 
(2,'Lorena','Carrea 9 n 85-20','3115058974');
insert into Clientes (ID_Cliente,nombre,direccion,telefono) values
(3,'David','Carrea 11 n 65-96','3102556898');
insert into Clientes (ID_Cliente,nombre,direccion,telefono) values
(4,'Catalina','Carrea 20 n 45-86','3208741459');

insert into Cuenta (ID_Cuenta,monto,ID_cliente)
values (1,1000,1);
insert into Cuenta (ID_Cuenta,monto,ID_cliente)
values (2,1000,2);
insert into Cuenta (ID_Cuenta,monto,ID_cliente)
values (3,1000,3);
insert into Cuenta (ID_Cuenta,monto,ID_cliente)
values (4,1000,4);

select * from Clientes;
select * from Cuenta;


START  TRANSACTION; -- comenzamos la transaccion
	UPDATE Cuenta -- update a la tabla que queremos
	SET monto = monto + 9000 WHERE ID_Cliente = 1; -- SET para cambiar el valor junto con la condición, donde el ID_Cliente sea igual 1
ROLLBACK; -- ROLLBACK para deshacer los cambios 
COMMIT; -- COMMIT deposito permanente 
 
-- un select a la tabla cuenta para ver la adicion en el ID 1

START  TRANSACTION ;
	UPDATE Cuenta
	SET monto = monto - 9000 WHERE ID_Cliente = 1;
COMMIT;



    
    
    