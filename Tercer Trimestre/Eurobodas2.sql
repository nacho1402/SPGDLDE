create database EuroBodas;
use EuroBodas;

Create Table Mesa
(idMesa int(2) ,
NombreMesa Varchar(45),
PrecioMesa Double,
DescripcionMesa varchar (200),
primary Key (idMesa)
);

desc Mesa;
Insert into Mesa(idMesa,NombreMesa,PrecioMesa,DescripcionMesa)
values
(1,"Cocteleras","70.000","Alta vestida con centro de mesa y 2 sillas."),
(2,"Rodondas","130.000","Vestida con mantel de tafetan, con servilletas, y 10 sillas tiffanny o phoenix."),
(3,"Cuadradas","130.000","Vestida con mantel de tafetan, conservilletas, y 10 sillas tiffanny o phoenix."),
(4,"Cristal","180.000","Mesa de vidrio con forro blanco e iluminacion azul, servilleta y 10 sillas tiffany o phoenix."),
(5,"Espejo","180.000","Tipo luis XV tapa en espejo con servilleta y 10 sillas tiffany o phoenix."),
(6,"Mesa de ponque","80000","Mesa con mantel y camino de rosetones letras love minis, copas de los novios,
aplique del ponque con las iniciales de los novios, y letras doradas para siempre.");

select * from Mesa;

create table Lugar
(idLugar int,
NombreLugar varchar (45),
Capacidad double,
DireccionLugar varchar (45),
PrecioLugar double,
primary key (idLugar)
);

Desc Lugar;
insert into Lugar(idLugar,NombreLugar,Capacidad,DireccionLugar,PrecioLugar)
values
(1,"Terraza piso 14","90","Black tower","1200000"),
(2,"Terraza piso 12","100","Macao","1200000"),
(3,"Macao pisos 9 y 10","140","Macao","800000"),
(4,"Salon piso 8","40","Macao","600000"),
(5,"Salones 6 y 13","60","Black tower","800000"),
(6,"Hacienda la cumbre","100","Lejos","1200000"),
(7,"Hacienda el refugio","250","Chia/cajica","2000000");

select * from Lugar;
 
create table SonidoIluminacion
(idSonidoIluminacion int,
TipoSonidoIluminacion varchar(45),
PrecioSonidoIluminacion double,
primary key (idSonidoIluminacion)
);

desc SonidoIluminacion;
Insert Into SonidoIluminacion(idSonidoIluminacion,TipoSonidoIluminacion,PrecioSonidoIluminacion)
values
(1,"Estandar","650000"),
(2,"Grande","950000"),
(3,"Array","1600000"),
(4,"Ventury","250000");

select * from SonidoIluminacion;
 
Create table Comida
(idcomida int,
NombreComida Varchar(45),
DescripcionComida Varchar(250), 
ValorPlato double,
primary key (idComida)
);

desc Comida;

alter table Comida 
add IdTipoComida int;

alter table Comida
add constraint FK_Comida_TipoComida
foreign key (IdTipoComida) references TipoComida(IdTipoComida);

Insert into Comida(idcomida,IdTipoComida,NombreComida,DescripcionComida,ValorPlato)
values
(01,001,"Ceviche de Camarones","Cebiche elaborado con camarones frescos, enteros, pelados, y preparados con cebolla morada y jitomate picado, 
cubos pequeños de pepino, jugo de limón, chile serrano picado o salsa verde, y en ocasiones se le agregan gotas de salsa de soya","8000"),
(02,001,"Canastas de platano","las canastas de plátano verde se pueden rellenar de tus preparaciones o ingredientes favoritos como guacamole,
 carne molida, frijoles o queso rallado","8000"),
(03,001,"Ceviche peruano","Se prepara con pescado fresco, limones, cebollas, ajíes picantes, y cilantro fresco","8000"),
(04,002,"Carne de Cerdo","una proteina de cerdo, condiferentes salsas,arroz o pure depapa y ensalada","45000"),
(05,002,"Carne de Res","una proteina de Res, condiferentes salsas,arroz o pure depapa y ensalada","45000"),
(06,002,"Carnes de pallo","una proteina de pollo, condiferentes salsas,arroz o pure depapa y ensalada","45000"),
(07,004,"tradicional de novia","Torta varios pisos o capas, decorada con abundante glaseado 
de dulce de caramelo, y coronada por una pequeña figura que representa la pareja","3000"),
(08,004,"Tres Leches","Consiste en un bizcocho bañado con tres tipos de leche: leche evaporada, crema de leche y leche condensada","3000"),
(09,004,"Chocolate","Pastel de Sabor chocolate Cubierto con una crema glacidad de coholate","3000"),
(10,004,"Milkyway","Deliciosa torta de chocolate con relleno de arequipe con nueces y una capa de solo arequipe; 
bañado de chocolate con maní","3000"),
(11,004,"semillas de amapola","La semillas de amapola son unas bolitas chiquititas bastante duras (como si fueran nueces chiquititas). 
Para disfrutar de todo su sabor hay que abrirlas","3000"),
(12,003,"tarta de santiago","Está elaborada con almendras pulverizadas y azúcar mezcladas con huevo.
 Se obtiene así una masa compacta a la que se le añade cierta cantidad de mantequilla o manteca","5000"),
(13,003,"Cuajada con melao","Es un tipo de queso insípido de leche de vaca, en porciones bañadas con un líquido acaramelado hecho con panela derretida en agua","5000"),
(14,003,"Chesskake","es un postre clásico de la cocina americana. Popular en todo el mundo, su principal ingrediente es el queso crema. Su fondo es crujiente
 y se obtiene al moler o triturar galletas y mezclarlas con mantequilla y azúca","5000");

select * from Comida;

create table TipoComida
(idTipoComida int,
NombreTipoComida varchar(45),
primary key (idTipoComida)
);

desc TipoComida;
insert into TipoComida (idTipoComida,NombreTipoComida)
values
(001,"Entrada"),
(002,"Plato Fuerte"),
(003,"Postre"),
(004,"Ponque");


select * from TipoComida;

create table DetalleComida
(idComida int,
idCotizacion int,
CantidadComida int,
ValorPlato double,
primary key (idComida,idCotizacion)
);

desc DetalleComida;
insert into DetalleComida(Idcomida,idCotizacion,CantidadComida,ValorPlato)
values
(1,1901,200,"25000"),
(2,1902,100,"15000"),
(3,"1903",120,"18000"),
(4,1904,60,"12000"),
(5,1905,100,"15000"),
(6,1906,40,"10000"),
(7,1907,140,"20000"),
(8,1908,60,"12000"),
(9,1909,90,"15000");

select * from Comida;
Select * from Cotizacion;
create table CoctelBienvenida
(idCoctelBienvenida int,
NombreCoctel Varchar(45),
DescripcionCoctel varchar(200),
CantidadCoctel int,
PrecioCoctel double,
primary key (idCoctelBienvenida)
);

desc CoctelBienvenida;
insert into CoctelBienvenida(idCoctelBienvenida,NombreCoctel,DescripcionCoctel,CantidadCoctel,PrecioCoctel)
values
(1,"Tequila Sunrise","Coctel a base de tequila con jugo de naranja, granadina y zumo de limon, adornado con rodaja de naranja y cereza","20","4500"),
(2,"Mojito","Coctel a base de ron blanco y triple sec mezclado con soda y macerado de limon y melao, adornado con rodaja de limon y cereza","24","4500"),
(3,"kamikaze ","Coctel a base de vodka y triplesec mezclado con ginger y vegetal verde o azul, adornado con rodaja de limon con cereza","15","4500");

select * from CoctelBienvenida;

create table DetalleCoctelBienvenida
(idCoctelBienvenida int,
CantidadCoctel int,
PrecioCoctel double,
idCotizacion int,
primary key (idCoctelBienvenida,idCotizacion)
);
drop table DetalleCoctelBienvenida;
desc DetalleCoctelBienvenida;

Insert into DetalleCoctelBienvenida(IdCoctelBienvenida,IdCotizacion,CantidadCoctel,PrecioCoctel)
values
(1,1901,200,"4500"),
(2,1902,100,"4500"),
(3,"1903",120,"4500"),
(4,1904,60,"4500"),
(5,1905,100,"4500"),
(6,1906,40,"4500"),
(7,1907,140,"4500"),
(8,1908,60,"4500"),
(9,1909,90,"4500");


create table Decoracion
(idDecoracion int,
NombreDecoracion varchar(45),
DescripcionDecoracion varchar(200) not null,
CantidadDecoracion int,
PrecioDecoracion float,
primary key (idDecoracion)
);
drop table Decoracion;

desc Decoracion;
insert into Decoracion(idDecoracion,NombreDecoracion,DescripcionDecoracion,CantidadDecoracion,PrecioDecoracion)
values
(1,"Pista Led"," modulo de 1mt*1mt","2","150000"),
(2,"Pantalla Led","de 3mts*4 mts","1","1780000"),
(3,"Hora loca"," show de 1 hora con antifaces, pitos, corbatas, corbatines y collares neon","10","200000"),
(4,"Fotografia y Video","  fotografi  as del evento y video editado","250","500000"),
(5,"Bouquet","según diseño de la novia ","50","90000"),
(6,"Azahares"," para el novio, padres y padrino","25","30000"),
(7,"Invitaciones"," Se pueden escoger de 3 tipos de ","200","5000"),
(8,"Divan"," Se puede escoger de 2 modelo uno de $40000 y otro de $90000","5","40000"),
(9,"Bicicleta, jaulas, Henos, accesorios"," ","2","50000"),
(10,"letras Love","Letras gigantes LOVE iluminadas de 90cms de altas","2","70000"),
(11,"Letras Tipo Espejo","letras tipo espejo de 45 cms de alta precio por unidad","2","10000"),
(12,"Backing fptografico","Backing fotografico con velo y decorado con flores","3","80000"),
(13,"Cartas Menu","Cartas con la informacion de la entrada, plato fuerte, postre y bebidas","50","1100"),
(14,"lluvia de Sobres"," a escoger entre dorado y madera crudo","50","20000");

select * from Decoracion;


create table DetalleDecoracion
(
idDecoracion int,
idCotizacion int,
CantidadDecoracion int,
PrecioDecoracion double,
primary key (idDecoracion,idCotizacion)
);

desc DetalleDecoracion;

insert into DetalleDecoracion(IdDecoracion,IdCotizacion,CantidadDecoracion,PrecioDecoracion)
values();


create table Cotizacion
(idCotizacion int,
FechaCotizacion date,
ObservacionCotizacion varchar (200) not null,
TematicaEvento varchar (45) not null,
PrecioFinal float,
ConfirmacionEvento bool,
primary key (idCotizacion)
);
drop table Cotizacion;

alter table Cotizacion
add IdMesa int;

alter table Cotizacion
Add IdLugar int;

alter table Cotizacion
add idSonidoIluminacion int;

alter table Cotizacion 
add Idcliente int;

alter table Cotizacion
add IdTipoEvento int;

Alter table Cotizacion
add IdComida int;


alter table Cotizacion
add constraint FK_Cotizacion_Lugar
foreign key (IdLugar) references lugar(IdLugar);

alter table Cotizacion
Add Constraint FK_Cotizacion_Mesa
foreign key (IdMesa) references Mesa(IdMesa);

alter table Cotizacion
Add constraint FK_Cotizacion_SonidoIluminacion
foreign key (idSonidoIluminacion) references SonidoIluminacion(idSonidoIluminacion);

alter table Cotizacion 
add Constraint FK_Cotizacion_Cliente
foreign key(IdCliente) references Cliente(IdCliente); 

alter table Cotizacion
add constraint FK_Cotizacion_TipoEvento
foreign key(IdTipoEvento) references TipoEvento(IdTipoEvento);

alter table Cotizacion
add constraint Fk_Cotizacion_Comida
foreign key (IdComida) references Comida(IdComida);

desc Cotizacion;
insert into Cotizacion(idCotizacion,FechaCotizacion,ObservacionCotizacion,TematicaEvento,IdLugar,IdMesa,idSonidoIluminacion,IdCliente,ConfirmacionEvento,IdTipoEvento,PrecioFinal,IdComida)
values
(1901,"2019-09-01","Que Buen Servicio"," ",7,3,4,"104","0",1,"2500500",12-2),
(1902,"2019-03-17","Que Buen Servicio","los 90",2,5,1,"107","1",3,"15856200",10-3),
(1903,"2019-02-25","Pesimo Servicio","Amor y Amistad",3,1,2,"101","0",3,"40850250",4|9),
(1904,"2018-12-20","Que Buen Servicio","Navidad",5,2,3,"105","0",3,"32721000",8|6),
(1905,"2019-12-15"," "," ",6,5,4,"107","1",1,25529000,14|3|4),
(1906,"2018-05-09","Pesimo Servicio","Animeles Acuaticos",4,2,1,"102","0",5,"12541000",12|5|2),
(1907,"2019-08-16","","futbol",3,4,2,"103","1",3,"30835000",5|1|7),
(1908,"2019-11-24","Que Buen Servicio","Casino",5,2,3,"108","1",3,"10125000",3|4|11),
(1909,"2019-07-01","Pesimo Servicio","Halloween",1,1,1,"106","1",3,"45870500",11|14|6);

select * from Cotizacion;


create table TipoEvento
(
idTipoEvento int auto_increment,
NombreTipoEvento varchar (45),
primary key (idTipoEvento)
);

drop table tipoEvento;
desc TipoEvento;
insert into TipoEvento(NombreTipoEvento)
values
("Boda"),
("15 Años"),
("Empresarial"),
("Grados"),
("Cumpleaños");

create table Cargo
(idCargo int auto_increment,
NombreCargo varchar (45),
primary key (idCargo)
);

desc Cargo;

insert into Cargo (NombreCargo)
values 
("administrador"),
("Gerente General"),
("Gerente de Produccion"),
("Planeadora"),
("Cocinero"),
("Mesero"),
("Servicios Generales"),
("Decoradores"),
("Bartender"),
("Dj"),
("Florista");

 select * From Cargo;

create table TipoDocumento
(idTipoDocumento int auto_increment,
DescripcionDocumento Varchar(45),
primary key (idTipoDocumento)
);

desc TipoDocumento;

insert into  TipoDocumento(DescripcionDocumento)
values
("Cedula de Ciudadania"),
("Tarjeta de Identidad"),
("Cedula de Extranjeria"),
("Pasaporte");


create table Empleado
(
idEmpleado int auto_increment,
NombreEmpleado varchar(45),
ApellidoEmpleado varchar(45),
TelefonoEmpleado varchar(10),
NumDocumentoEmpleado varchar(15),
CorreoEmpleado varchar(45),
primary key (idEmpleado)
);

alter table Empleado
Add IdCargo int ;

alter table Empleado
add constraint FK_Empleado_Cargo
foreign key(IdCargo) references Cargo(IdCargo);

alter table Empleado
add idTipoDocumento int;

alter table empleado
add constraint FK_Empleado_TipoDocuemento
foreign key (IdTipoDocumento) references TipoDocumento(IdTipoDocumento);

insert into Empleado(IdEmpleado,NombreEmpleado,ApellidoEmpleado,TelefonoEmpleado,NumDocumentoEmpleado,IdTipoDocumento,CorreoEmpleado,IdCargo)
values 
(001,"Fernando","Villarreal","3101190943","1000723874",1,"fvillareal.bodaselite@gmail.com",1),
(002,"Yuri","Romero","321541010","1000735481",1,"fer-svr.17@outlook.com",2),
(003,"Camila","Cabello","3104871590","1000513759",1,"Ca-Cabello32@gmail.com",4),
(004,"Andrea","Flamingo","3224512073","34531725",1,"Flamingo.Andrea-12@gmail.com",4),
(005,"Javier","Molina","3112801790","41733718",1,"JavierCardona2000@outlook.com",3),
(006,"Daniel","Lopez","3187421743","25611423",1,"Lopez.Daniel@gmail.com",5),
(007,"Pablo","Legarda","3107168291","79390100",1,"PabloLegarda-1995@outlook",5),
(008,"Luisa","Camargo","3225819460","34544560",1,"Luisa.Cama.200@gmail.com",6),
(009,"Esteban","Durango","3142849026","18125465",1,"Estaban.Dura31@gmail.com",6),
(010,"Alejandra","Bohorquez","3235711820","34564081",1,"Bohorquez-Aleja-321@gmail.com",6),
(011,"Maria","Osorio","3183259915","41575274",1,"MariaOso.36@gmail.com",7),
(012,"Jose","Perez","3112501128","10295064",1,"JoselitoPerez.12@gmail.com",7),
(013,"Luz Marina","Galbis","3190124523","10541205",1,"marina.luzGalbis2@outlook.com",7),
(014,"Hugo","Vargas","3235663498","10524320",1,"Hugito12Vargas@outlook.com",7),
(015,"Alvaro","Puentes","3105923301","19490554",1,"Alvaro.Puentes32@gmail.com",8),
(016,"Alba","Ceballos","3206731049","34549144",1,"Alba.ceballos098@gmail.com",8),
(017,"Carlos","Cardona","319546576","12988795",1,"CardonaCarlos,157@otlook.com",8),
(018,"Nicolas","Nuñez","3147539763","7516892",1,"Nunez.nicolas18286@gmail.com",9),
(019,"Calvin","harris","3205714910","76316972",1,"CalvinDj.71@gmial.com",10),
(020,"Ana Maria","Serna","3122305507","19229758",1,"AnaSerna.Maria.25@gmail.com",11),
(021,"Dana","Palacios","3194397340","9991523",1,"Dana.Flor201@otlook.com",11);


select * from TipoDocumento;
select * from cargo;

create table DetalleEmpleado
(idEmpleado int,
idCotizacion int,
CantidadEmpleados int,
primary key (idEmpleado,idCotizacion)
);

desc DetalleEmpleado;

insert into DetalleEmpleado (IdEmpleado,IdCotizacion,CantidadEmpleados)
values
(001,1909,8),
(002,1908,11),
(003,1907,7),
(004,1906,9),
(005,1905,11),
(006,1904,10),
(007,1903,8),
(008,1902,8),
(009,1901,10);

select * From Cotizacion;

create table Cliente 
(idCliente int auto_increment,
NombreCliente varchar (45),
ApellidoCliente varchar(45),
TelefonoCliente varchar (20),
CorreoCliente varchar(45),
primary key (idCliente)
);

alter table Cliente
add idTipoDocumento int;

alter table Cliente
add constraint FK_Empleado_Cliente
foreign key (IdTipoDocumento) references TipoDocumento(IdTipoDocumento);

insert into Cliente(idCliente,NombreCliente,ApellidoCliente,TelefonoCliente,CorreoCliente,IdTipoDocumento)
values 
(101,"Camilo","Ordoñez","3241045781","caordoñez34@gmail.com",1),
(102,"Johana","Baron","3151745389","Baron.Johana.76@gmail.com",1),
(103,"Felipe","Cardenas","3122812490","CarFelipe.67@gmail.com",4),
(104,"Laura","Martinez","3224291320","lauMartinez198@gmail.com",1),
(105,"Cristian","Velasquez","(212)324-4152","Vela10.Cristian@gmail.com",3),
(106,"Andres","Fuentes","314313519","Andres.Fuentes.2010@gmail.com",2),
(107,"Jorgue","wilches","(305)705-5612","JorgueWilchesEEUU@ooutlook.com",4),
(108,"Carla","Esposito","349910606212","EspositoMamasita90@outlook.com","3");


select * from CLiente;


create table Producto
(idProducto int auto_increment primary key,
NombreProducto varchar(100),
CantidadProducto int,
PrecioProducto double 
);

desc Producto;
insert into Prodcuto (NombreProducto,CantidadProducto,PrecioProducto)
values
("Dulces",100,"100"),
("Postres",80,"3500"),
("Flores","300","2000"),
("Bombas","100",200),
("Carnes",10,"6500"),
("Sillas",150,"2000"),
("Mesas",200,"3000");

create table Proveedor
(idProveedor int,
NombreProveedor varchar (45),
ApellidoProveedor varchar (45),
TelefonoProveedor varchar (10),
CorreoProveedor varchar (45),
Direccionproveedor varchar (45),
primary key (idProveedor)
);

alter table Proveedor
add IdProducto int;

alter table Proveedor
add constraint FK_Proveedor_Producto
foreign key (idProducto) references Producto(IdProduecto);

insert into Proveedor(NombreProveedor,ApellidoProveedor,TelefonoProveedor,CorreoProveedor,DireccionProveedor,IdProducto)
values();


create table DetalleProducto
(idProducto int,
idProveedor int,
CantidadProducto int,
TipoProducto varchar (45),
primary key (idProducto,idProveedor)
);

desc DetalleProducto;
insert into DetalleProducto(idProducto,idProveedor,CantidadProducto,TipoProducto)
values
();

show tables;
select * from mesa;
select * from decoracion;