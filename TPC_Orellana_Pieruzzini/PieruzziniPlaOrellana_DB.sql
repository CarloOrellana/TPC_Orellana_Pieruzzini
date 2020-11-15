create database PieruzziniPlaOrellana_DB
go
use master
use PieruzziniPlaOrellana_DB
go
create table Articulos
(
 id int identity(1,1) primary key,
 CodigoArticulo char(10) not null,
 DescripcionArticulo char (50)not  null,
 Stock bigint not null,
 Precio money,
 Estado bit not null,
 Imagen varchar(1000) not null
 )
  go
create table MateriaPrima
(
 id int identity(101,1) primary key,
 Descripcion char (50)not  null,
 Stock bigint not null
)
go
create table ArticuloXMateria
(
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
 create table Tarjetas
 (
 Id int identity (1,1) primary key,
 NumeroTarjeta bigint not null,
 MesVencimiento int not null,
 AnioVencimiento int not null,
 IdFormaPago int foreign key references FormaPago
 )
  go
 create table DatosPersonales
 (
 Id int identity(1,1) primary key,
 Nombre char(50) not null,
 Apellido char(50) not null,
 DNI int not null,
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
IdRol int foreign key references Rol(Id)
)
go
create table UsuarioXDatos
(
IdUsuario int foreign key references Usuario (Id),
IdDatos int foreign key references DatosPersonales (Id)
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
IdVenta int foreign key references Ventas (Id),
IdArticulo int foreign key references Articulos (Id),
Cantidad int not null,
Precio money not null
)
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
values ('T1','Taco Niño',22,30,1,'C:\Carlos\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T1.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T2','Taco Niño',24,30,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T2.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('P3','Puntera Niño',0,30,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\P3.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T4','Taco Adulto',120,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T4.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T5','Taco Adulto',75,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T5.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T6','Taco Adulto',72,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T6.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T7','Taco Adulto',0,0,0,'C:\Carlos\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\P8.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('P8','Puntera Adulto',151,54,1,'C:\Carlos\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\P8.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('P9','Taco Adulto',0,0,0,'C:\Carlos\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\P8.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('P10','Puntera Adulto',84,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\P10.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('T11','Taco Adulto',52,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T11.jpg')
insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
values ('P12','Puntera Adulto',24,54,1,'TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Web\Imagen\P12.jpg')
 
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

--////ACTUALIZACIONES////--
 go
 update Articulos set DescripcionArticulo='Puntera Adulto'
 where id=9
 go
 update Articulos set Stock=34
 where id=2


 select * from Articulos