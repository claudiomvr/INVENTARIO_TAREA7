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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

INSERT INTO productos VALUES("2","1S","SHAMPOO","33333");
INSERT INTO productos VALUES("9","G-100","galletas de animalito"," galletas de animalito de 1000 gramos ");
INSERT INTO productos VALUES("13","PP48","Paleta"," Paleta de dulce  ");
INSERT INTO productos VALUES("16","RADIO-03","Radio Pionner","radio ecualizador ");
INSERT INTO productos VALUES("17","112121","Playsation 4 Pro"," consola de juegos de Sony  ");



DROP TABLE IF EXISTS role;

CREATE TABLE `role` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `roles` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO role VALUES("1","administrador");
INSERT INTO role VALUES("2","usuario");



DROP TABLE IF EXISTS usuarios;

CREATE TABLE `usuarios` (
  `id_usuario` int(2) NOT NULL,
  `username` varchar(15) CHARACTER SET latin1 NOT NULL,
  `password` varchar(10) CHARACTER SET latin1 NOT NULL,
  `rol_id` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `rol_id_idx` (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO usuarios VALUES("1","claudio","123456","0");
INSERT INTO usuarios VALUES("2","nelly","654321","0");



SET FOREIGN_KEY_CHECKS=1;