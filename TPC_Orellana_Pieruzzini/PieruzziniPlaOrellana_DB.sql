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