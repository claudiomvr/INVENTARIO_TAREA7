SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE IF NOT EXISTS mi_negocio;

USE mi_negocio;

DROP TABLE IF EXISTS productos;

CREATE TABLE `productos` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

INSERT INTO productos VALUES("2","1S","SHAMPOO","   11111");
INSERT INTO productos VALUES("9","G-100","galletas de animalito"," galletas de animalito de 1000 gramos ");
INSERT INTO productos VALUES("13","PP48","Paleta"," Paleta de dulce  ");
INSERT INTO productos VALUES("16","RADIO-03","Radio Pionner","radio ecualizador ");



SET FOREIGN_KEY_CHECKS=1;