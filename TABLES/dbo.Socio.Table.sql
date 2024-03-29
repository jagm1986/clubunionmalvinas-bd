CREATE TABLE `socio` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `documento` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fecha_socio` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `url_foto` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `estado_socio_id` bigint(20) DEFAULT NULL,
  `tipo_documento_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `socio_FK` (`tipo_documento_id`),
  KEY `socio_FK_1` (`estado_socio_id`),
  CONSTRAINT `socio_FK` FOREIGN KEY (`tipo_documento_id`) REFERENCES `Tipo_Documento` (`id`),
  CONSTRAINT `socio_FK_1` FOREIGN KEY (`estado_socio_id`) REFERENCES `estado_socio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci