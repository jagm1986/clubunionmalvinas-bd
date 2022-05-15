create table estado_socio
(
    id          bigint       not null
        primary key,
    descripcion varchar(255) null
);

create table Tipo_Documento
(
    id          bigint       not null
        primary key,
    descripcion varchar(255) null
);

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


--Tipo_Documento
INSERT INTO dev_clubunionmalvinas.Tipo_Documento
(id, descripcion)
VALUES(1, 'DNi');
INSERT INTO dev_clubunionmalvinas.Tipo_Documento
(id, descripcion)
VALUES(2, 'LE');
INSERT INTO dev_clubunionmalvinas.Tipo_Documento
(id, descripcion)
VALUES(2, 'LC');

--estado_socio
INSERT INTO dev_clubunionmalvinas.estado_socio
(id, descripcion)
VALUES(1, 'Activo');
INSERT INTO dev_clubunionmalvinas.estado_socio
(id, descripcion)
VALUES(2, 'No Activo');

--socio
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(1,'Ibañez','Av. Siempre Viva8821','63885127','EnzoIbañez@gmail.com','44687','Enzo','3516595969','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(2,'Luna','Av. Siempre Viva9110','52394238','DiegoLuna@gmail.com','44687','Diego','3519931840','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(3,'Paglia','Av. Siempre Viva5497','30461675','JosePaglia@gmail.com','44687','Jose','3512255072','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(4,'Herrera','Av. Siempre Viva2923','4706188','PabloHerrera@gmail.com','44687','Pablo','3519213634','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(5,'Paglia','Av. Siempre Viva9908','6371443','AndresPaglia@gmail.com','44687','Andres','3512449435','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(6,'Zelarayan','Av. Siempre Viva2671','99200664','JoseZelarayan@gmail.com','44687','Jose','3516049603','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(7,'Gonzalez','Av. Siempre Viva1040','5724260','CamilaGonzalez@gmail.com','44687','Camila','3516226126','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(8,'Gudin','Av. Siempre Viva7982','95221389','CamilaGudin@gmail.com','44687','Camila','3512647779','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(9,'Riquelme','Av. Siempre Viva9852','73873359','MatiasRiquelme@gmail.com','44687','Matias','3519779637','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(10,'Juarez','Av. Siempre Viva1546','41034247','MatiasJuarez@gmail.com','44687','Matias','3518441962','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(11,'Gonzalez','Av. Siempre Viva2984','55906735','GonzaloGonzalez@gmail.com','44687','Gonzalo','3512760266','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(12,'Gudin','Av. Siempre Viva4909','64485893','AndresGudin@gmail.com','44687','Andres','3512076183','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(13,'Zelarayan','Av. Siempre Viva3096','3671645','CarlosZelarayan@gmail.com','44687','Carlos','3518964268','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(14,'Zelarayan','Av. Siempre Viva6157','91170330','JoseZelarayan@gmail.com','44687','Jose','3518391875','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(15,'Paglia','Av. Siempre Viva4703','3587217','AndresPaglia@gmail.com','44687','Andres','3518761496','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(16,'Perez','Av. Siempre Viva3832','28216618','MatiasPerez@gmail.com','44687','Matias','3519602594','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(17,'Vegetti','Av. Siempre Viva3057','76654468','PedroVegetti@gmail.com','44687','Pedro','3511424917','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(18,'Riquelme','Av. Siempre Viva2029','26428148','CarlosRiquelme@gmail.com','44687','Carlos','3517698824','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(19,'Hesar','Av. Siempre Viva1788','55740270','EricHesar@gmail.com','44687','Eric','3518363101','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(20,'Juarez','Av. Siempre Viva422','51617196','SerenaJuarez@gmail.com','44687','Serena','3515425452','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(21,'Messi','Av. Siempre Viva6284','83215621','SerenaMessi@gmail.com','44687','Serena','3514922052','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(22,'Messi','Av. Siempre Viva9521','25849382','AndresMessi@gmail.com','44687','Andres','3511008957','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(23,'Lozada','Av. Siempre Viva7804','7228862','CamilaLozada@gmail.com','44687','Camila','3517833009','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(24,'Lozada','Av. Siempre Viva732','37285708','EnzoLozada@gmail.com','44687','Enzo','3512855262','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(25,'Gudin','Av. Siempre Viva7722','47640756','SerenaGudin@gmail.com','44687','Serena','3515559494','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(26,'Messi','Av. Siempre Viva6193','44960316','CarlosMessi@gmail.com','44687','Carlos','3513565128','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(27,'Lozada','Av. Siempre Viva4660','6178786','SilviaLozada@gmail.com','44687','Silvia','3519386756','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(28,'Perez','Av. Siempre Viva3878','42591846','PabloPerez@gmail.com','44687','Pablo','3514236548','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(29,'Hesar','Av. Siempre Viva6500','24432587','SilviaHesar@gmail.com','44687','Silvia','3511275307','foto.png',1,1);
INSERT INTO dev_clubunionmalvinas.socio
(id, apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)
VALUES(30,'Diaz','Av. Siempre Viva6656','29151286','MatiasDiaz@gmail.com','44687','Matias','3519970559','foto.png',1,1);


