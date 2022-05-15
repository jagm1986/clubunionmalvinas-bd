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


import random


names = ['Carlos', 'Pedro', 'Andres', 'Diego', 'Matias', 'Jose', 'Iris', 'Pablo', 'Eric', 'Gonzalo', 'Carla', 'Camila', 'Serena', 'Enzo', 'Silvia']
lastNames = ['Paglia', 'Gudin', 'Juarez', 'Perez', 'Gonzalez', 'Ibañez', 'Romarino', 'Riquelme', 'Zelarayan', 'Vegetti', 'Luna', 'Diaz', 'Lozada', 'Herrera', 'Dybala', 'Messi', 'Hesar']

print('INSERT INTO socio(apellido, direccion, documento, email, fecha_socio, nombre, telefono, url_foto, estado_socio_id, tipo_documento_id)  values ')
for i in range(30):
    nombre = random.choice(names)
    apellido = random.choice(lastNames)
    email = nombre+apellido+'@gmail.com'
    direccion = 'Av. Siempre Viva' + str(random.randint(100, 9999))
    telefono = '351' + str(random.randint(1000000,9999999))
    documento = str(random.randint(1000000,99999999))
    fecha = '06/05/2022'
    foto = 'foto.png'
    estado= '1'
    tipo_doc= '1'
    print("('" + apellido+"', '"+direccion+"', '"+documento+"', '"+email+"', '"+fecha+"', '"+nombre+"', '"+telefono+"', '"+foto+"', '"+estado+"', '"+tipo_doc+"'),")

