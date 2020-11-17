create database PieruzziniPlaOrellana_DB
go
use PieruzziniPlaOrellana_DB
go
create table Articulos
(
 id int identity(1,1) primary key,
 CodigoArticulo char(10) not null,
 DescripcionArticulo char (50)not  null,
 Stock bigint not null check(Stock>=0),
 Precio money,
 Estado bit not null,
 Imagen varchar (1000) null
)
go
create table MateriaPrima
(
 id int identity(101,1) primary key,
 Descripcion char (50)not  null,
 Stock bigint not null check(Stock>=0)
)
go
create table ArticuloXMateria
(
IdAxM int identity(1001,1) primary key,
 IdArticulo int not null foreign key references Articulos,
 IdMateriaPrima int not null foreign key references MateriaPrima
 )
  go
 create table Rol
(
 Id int identity(1,1) primary key,
 Descripcion char (50)not  null,
 Estado bit not null
 )
 go
 create table FormaPago
 (
 Id int identity(1001,1) primary key,
 Descripcion char (50)not  null,
 Estado bit not null
 )
 go
 create table DatosPersonales
 (
 DNI int not null primary key,
 Nombre char(50) not null,
 Apellido char(50) not null,
 Direccion varchar(200) not null,
 Telefono varchar(15) null,
 Mail varchar (140) not null,
 Cuil bigint not null,
 Estado bit not null
 )
go
create table Usuario
(
 Id int identity(1,1) primary key,
 Contrasenia char(250) not null,
 IdRol int foreign key references Rol(Id),
 DniDP int not null unique foreign key  references DatosPersonales(DNI) 
)
go
create table Tarjetas
 (
 Id int identity (1,1) primary key,
 NumeroTarjeta bigint not null,
 MesVencimiento int not null,
 AnioVencimiento int not null,
 IdUsuario int foreign key references Usuario(Id)
 )
go
create table Ventas
(
Id int identity(1,1) primary key,
IdUsuario int foreign key references Usuario (Id),
IdFormaPago int foreign key references FormaPago (Id),
NumeroFactura bigint not null,
Fecha date not null,
Total money not null
)
go
create table DetalleVentas
(
IdDV int identity(101,1) primary key,
IdVenta int foreign key references Ventas (Id),
IdArticulo int foreign key references Articulos (Id),
Cantidad int not null,
Precio money not null
)
go

--/////DATOS///////--

/*Materia Prima*/
insert into MateriaPrima(Descripcion,Stock) values('T1',0)
insert into MateriaPrima(Descripcion,Stock) values('T2',0)
insert into MateriaPrima(Descripcion,Stock) values('P3',103)
insert into MateriaPrima(Descripcion,Stock) values('T4',82)
insert into MateriaPrima(Descripcion,Stock) values('T5',41)
insert into MateriaPrima(Descripcion,Stock) values('T6',0)
insert into MateriaPrima(Descripcion,Stock) values('T7',0)
insert into MateriaPrima(Descripcion,Stock) values('P8',7)
insert into MateriaPrima(Descripcion,Stock) values('P9',0)
insert into MateriaPrima(Descripcion,Stock) values('P10',91)
insert into MateriaPrima(Descripcion,Stock) values('T11',153)
insert into MateriaPrima(Descripcion,Stock) values('P12',54)

/*Articulos*/
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T1','Taco Niño',22,30,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T1.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T2','Taco Niño',34,30,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T2.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('P3','Puntera Niño',0,30,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\P3.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T4','Taco Adulto',120,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T4.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T5','Taco Adulto',75,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T5.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T6','Taco Adulto',72,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T6.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T7','Taco Adulto',0,0,0,NULL)
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('P8','Puntera Adulto',151,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\P8.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('P9','Puntera Adulto',0,0,0,NULL)
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('P10','Puntera Adulto',84,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\P10.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T11','Taco Adulto',52,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T11.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('P12','Puntera Adulto',24,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\P12.jpg')
 
/*Articulos X Materia*/
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(1,101)
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(2,102)
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(3,103)
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(4,104)
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(5,105)
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(6,106)
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(7,107)
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(8,108)
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(9,109)
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(10,110)
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(11,111)
insert into ArticuloXMateria(IdArticulo,IdMateriaPrima)values(12,112)

 /* FormaPago */
insert into FormaPago (Descripcion,Estado) values ('Debito',1)
insert into FormaPago (Descripcion,Estado) values ('Efectivo',1)
insert into FormaPago (Descripcion,Estado) values ('Credito',1)
insert into FormaPago (Descripcion,Estado) values ('Mercadopago',0)
insert into FormaPago (Descripcion,Estado) values ('Transferencia Bancaria',1)

/* Rol */
insert into Rol(Descripcion,Estado) values ('Administrador',1)
insert into Rol(Descripcion,Estado) values ('Cliente',1)
insert into Rol(Descripcion,Estado) values ('Operario',0)

/*Datos Personales*/
insert into DatosPersonales(DNI,Nombre,Apellido,Direccion,Telefono,Mail,Cuil,Estado)
values(11111111,'Nestor','Pieruzzini Pla','Balcarce 50','55555555','npieruzzinipla@gmail.com',2011111111,1)
insert into DatosPersonales(DNI,Nombre,Apellido,Direccion,Telefono,Mail,Cuil,Estado)
values(22222222,'Carlos','Orellana','Py 22','66666666','carlitos_2355@hotmail.com',20222222224,1)
insert into DatosPersonales(DNI,Nombre,Apellido,Direccion,Telefono,Mail,Cuil,Estado)
values(33333333,'Fernando','Brandan','Entre Rios 1','77777777','latinlover@demaseta.ar',2077777777,0)

insert into DatosPersonales(DNI,Nombre,Apellido,Direccion,Telefono,Mail,Cuil,Estado)
values(44,'Fernando','Brandan','Entre Rios 1','77777777','latinlover@demaseta.ar',2077777777,0)
insert into DatosPersonales(DNI,Nombre,Apellido,Direccion,Telefono,Mail,Cuil,Estado)
values(55,'Fernando','Brandan','Entre Rios 1','77777777','latinlover@demaseta.ar',2077777777,1)


/*Usuario*/
insert into Usuario(Contrasenia,IdRol,DniDP)values('Admin',1,11111111)
insert into Usuario(Contrasenia,IdRol,DniDP)values('Cliente',2,22222222)
insert into Usuario(Contrasenia,IdRol,DniDP)values('Operario',3,33333333)

insert into Usuario(Contrasenia,IdRol,DniDP)values('Operario',2,44)
insert into Usuario(Contrasenia,IdRol,DniDP)values('Admin',2,55)

-------------------------------------
------------/ Vista  /---------------
-------------------------------------

create view vw_ReporteStock as ---reporte stock simple---
select A.CodigoArticulo,A.DescripcionArticulo,A.Stock as StockVta, MP.Stock as StockMateriaPrima
from Articulos as A
inner join MateriaPrima as MP on A.CodigoArticulo=MP.Descripcion

--/ Ejecuto /--
select * from vw_ReporteStock

-------------------------------------
-------/ Stored Procedure  /---------
-------------------------------------
create procedure sp_StockMPyArt---descuenta stock MP(procesada) y aumente en art, validad error
(
	@Codigo char(10),
	@Cantidad bigint	
)
as
begin
	begin try
		begin transaction
		
		update Articulos set Stock=Stock+@Cantidad where CodigoArticulo like @Codigo
		update MateriaPrima set Stock=Stock-@Cantidad where Descripcion like @Codigo
		commit transaction
	end try
	begin catch
		if @@TRANCOUNT >0 begin
			rollback transaction
		end
		raiserror ('Error',16,1)
	end catch
end

--/ Ejecuto /--
execute sp_StockMPyArt 't1',10


create procedure sp_BuscaStockMinimo---Busca en art(activos) y MP stock minimo indicado
(
	@Cantidad bigint	
)
as
begin
		select A.CodigoArticulo,A.DescripcionArticulo,A.Stock as StockVta, MP.Stock as StockMateriaPrima
		from Articulos as A
		Inner join MateriaPrima as MP on MP.Descripcion like A.CodigoArticulo
		where A.Estado=1 and A.Stock<=@Cantidad and MP.Stock<=@Cantidad
end 

--/ Ejecuto /--
execute sp_BuscaStockMinimo 30





