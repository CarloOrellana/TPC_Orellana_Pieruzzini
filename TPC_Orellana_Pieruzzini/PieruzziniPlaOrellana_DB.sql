create table Articulos
(
 id int identity(1,1) primary key,
 CodigoArticulo char(10) not null,
 DescripcionArticulo char (50)not  null,
 Produccion bigint not null,
 Stock bigint not null,
 Precio money)

  insert into Articulos(CodigoArticulo,DescripcionArticulo,Produccion,Stock,Precio)
 values ('P12','Puntera Adulto',54,24,54)

 select * from Articulos