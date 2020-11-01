create table Articulos
(
 id int identity(1,1) primary key,
 CodigoArticulo char(10) not null,
 DescripcionArticulo char (50)not  null,
 Stock bigint not null,
 Precio money,
 Estado bit not null,
 Imagen image null
 )
 use PieruzziniPlaOrellana_DB

select * from Articulos
 
create table MateriaPrima
(
 id int identity(101,1) primary key,
 Descripcion char (50)not  null,
 Stock bigint not null
)

select * from MateriaPrima

create table ArticuloXMateria
(
 IdArticulo int not null foreign key references Articulos,
 IdMateriaPrima int not null foreign key references MateriaPrima
 )

select * from ArticuloXMateria

 insert into Articulos(CodigoArticulo,DescripcionArticulo,Stock,Precio,Estado,Imagen)
 values ('P12','Puntera Adulto',24,54,1,'C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\P12.jpg')

 update Articulos set Imagen='C:\Users\Administrador\Desktop\GitHub\TPC_Orellana_Pieruzzini\TPC_Orellana_Pieruzzini\Imagen\T1.jpg'
 where id=1

 update Articulos set Stock=0
 where id=3

 insert into MateriaPrima(Descripcion,Stock)
 values('P12',54)

 create table Rol
(
 Id int identity(1,1) primary key,
 Descripcion char (50)not  null,
 Estado bit not null
 )

 create table FormaPago
(
 Id int identity(1001,1) primary key,
 Descripcion char (50)not  null,
 Estado bit not null
 )

 create table Tarjetas
 (
 Id int identity (1,1) primary key,
 NumeroTarjeta bigint not null,
 MesVencimiento int not null,
 AnioVencimiento int not null,
 IdFormaPago int foreign key references FormaPago
 )

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

 create table Usuario
 (
 Id int identity(1,1) primary key,
Contrasenia char(250) not null,
IdRol int foreign key references Rol(Id)
)

create table UsuarioXDatos
(
IdUsuario int foreign key references Usuario (Id),
IdDatos int foreign key references DatosPersonales (Id)
)

create table Ventas
(
Id int identity(1,1) primary key,
IdUsuario int foreign key references Usuario (Id),
IdFormaPago int foreign key references FormaPago (Id),
NumeroFactura bigint not null,
Fecha date not null,
Total money not null
)

create table DetalleVentas
(
IdVenta int foreign key references Ventas (Id),
IdArticulo int foreign key references Articulos (Id),
Cantidad int not null,
Precio money not null
)