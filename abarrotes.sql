CREATE DATABASE abarrotes;
use abarrotes;

CREATE TABLE productos(
    idProducto int auto_increment,
    nombreProducto varchar(30),
    precio float,
    fecha_caducidad date,
    stock int,
    PRIMARY KEY(idProducto)
);

INSERT INTO productos(nombreProducto, precio, fecha_caducidad, stock) values("Rocko", 16.50, "2021-12-01", 25);
INSERT INTO productos(nombreProducto, precio, fecha_caducidad, stock) values("Gansito", 10.0, "2021-10-01", 20);
INSERT INTO productos(nombreProducto, precio, fecha_caducidad, stock) values("Sabritas Sal", 15.50, "2021-12-25", 50);
INSERT INTO productos(nombreProducto, precio, fecha_caducidad, stock) values("Pecositas", 2.50, "2022-02-15", 5);
INSERT INTO productos(nombreProducto, precio, fecha_caducidad, stock) values("Panque Marmol", 30.50, "2021-06-01", 20);
INSERT INTO productos(nombreProducto, precio, fecha_caducidad, stock) values("Cuernitos", 15.50, "2021-11-01", 25);
INSERT INTO productos(nombreProducto, precio, fecha_caducidad, stock) values("Mamut", 10.50, "2022-12-01", 100);
INSERT INTO productos(nombreProducto, precio, fecha_caducidad, stock) values("Rancheritos", 11.50, "2021-10-11", 7);
INSERT INTO productos(nombreProducto, precio, fecha_caducidad, stock) values("Takis Fuego", 10.0, "2021-12-01", 10);
INSERT INTO productos(nombreProducto, precio, fecha_caducidad, stock) values("Paleta Solero", 07.50, "2021-12-01", 15);